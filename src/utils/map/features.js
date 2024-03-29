import { filterSelector } from 'utils/sld-reader/Filter';
import { GeometryCollection } from 'ol/geom';
import { Stroke, Style, Fill, Circle } from 'ol/style';
import { getAreaFormatted, getFeaturesByName, getLayer, getLengthFormatted, groupBy } from './helpers';
import WKT from 'ol/format/WKT';

const HIGHLIGHT_COLOR = 'rgb(0 109 173 / 50%)';
const ERROR_COLOR = 'rgb(255 0 0 / 50%)';

export function toggleFeatures(legend, map) {
   const vectorLayer = getLayer(map, 'features');
   const features = getFeaturesByName(vectorLayer, legend.name);

   features.forEach(feature => {
      toggleFeature(feature);
   });
}


export function toggleFeature(feature) {
   const visible = !feature.get('_visible');

   if (visible) {
      const savedStyle = feature.get('_savedStyle');
      feature.setStyle(savedStyle);
   } else {
      feature.set('_savedStyle', feature.getStyle());
      feature.setStyle(new Style(null));
   }

   feature.set('_visible', visible);
}

export function addGeometryInfo(features) {
   features.forEach(feature => {
      const geometry = feature.getGeometry();
      const geometryType = geometry.getType();

      switch (geometryType) {
         case 'Polygon':
         case 'MultiPolygon':
            if (!feature.get('_area')) {
               feature.set('_area', getAreaFormatted(geometry));
            }
            break;
         case 'LineString':
         case 'MultiLineString':
            if (!feature.get('_length')) {
               feature.set('_length', getLengthFormatted(geometry));
            }
            break;
         default:
            break;
      }
   });
}

export function highlightSelectedFeatures(map, features) {
   const featureLayer = getLayer(map, 'selected-features');
   const layerSource = featureLayer.getSource();

   layerSource.clear();

   const highlightClones = features
      .filter(feature => feature.get('_highlightClone') !== undefined)
      .map(feature => feature.get('_highlightClone'));

   const featuresWithoutClones = features
      .filter(feature => feature.get('_highlightClone') === undefined);

   const selectedFeatures = featuresWithoutClones.map(feature => {
      const cloned = feature.clone();
      const errorMessages = feature.get('_errorMessages');

      if (errorMessages) {
         const wkts = errorMessages
            .filter(message => message.zoomTo)
            .map(message => message.zoomTo);

         if (wkts.length) {
            const format = new WKT();
            const geometries = wkts.map(wkt => format.readGeometry(wkt));
            const geoCollection = new GeometryCollection();

            geoCollection.setGeometries(geometries);
            cloned.set('_zoomTo', geoCollection);
         }
      }

      const styles = getHighlightStyle(cloned);
      cloned.setStyle(styles);
      feature.set('_highlightClone', cloned);

      return cloned;
   });

   layerSource.addFeatures(selectedFeatures.concat(highlightClones));
}

export function addLegendToFeatures(features, legends) {
   const groupedFeatures = groupBy(features, feature => feature.get('_name'));
   const featureNames = Object.keys(groupedFeatures);

   for (let i = 0; i < featureNames.length; i++) {
      const featureName = featureNames[i];
      const symbols = legends.find(legend => legend.name === featureName)?.symbols || [];

      if (!symbols.length) {
         continue;
      }

      const feats = groupedFeatures[featureName];

      for (let j = 0; j < feats.length; j++) {
         const feature = feats[j];
         const symbol = symbols.find(sym => !sym.rule.filter || filterSelector(sym.rule.filter, feature));

         if (symbol) {
            feature.set('_symbolId', symbol.id);
         }
      }
   }
}

export function addValidationResultToFeatures(mapDocument, features) {
   const rules = mapDocument?.validationResult.rules || [];

   if (!rules.length) {
      return;
   }

   for (let i = 0; i < rules.length; i++) {
      const rule = rules[i];
      
      for (let j = 0; j < rule.messages.length; j++) {
         const message = rule.messages[j];
   
         if (!message.gmlIds?.length) {
            continue;
         }
   
         for (let k = 0; k < message.gmlIds.length; k++) {
            const gmlId = message.gmlIds[k];
            const feature = features.find(feat => feat.get('id') === gmlId);
   
            if (feature) {
               const errorMessages = feature.get('_errorMessages');
   
               if (!errorMessages) {
                  feature.set('_errorMessages', [{ message: message.message, type: rule.messageType, zoomTo: message.zoomTo }]);
               } else {
                  errorMessages.push({ message: message.message, type: rule.messageType, zoomTo: message.zoomTo });
               }
            }
         }
      }
   }
}

function getHighlightStyle(feature) {
   if (feature.get('_name') === 'RpJuridiskPunkt') {
      return [];
   }

   const highlightStroke = new Stroke({
      color: feature.get('_errorMessages')?.length ? ERROR_COLOR : HIGHLIGHT_COLOR,
      lineCap: 'butt',
      width: 3
   });

   const origStyleFunction = feature.getStyleFunction();
   let highlightStyle;

   return (feature, resolution) => {
      if (feature.get('_name') === 'RpPåskrift') {
         const styles = origStyleFunction(feature, resolution);

         highlightStyle = styles[1].clone();
         highlightStyle.getText().setStroke(highlightStroke);
      } else if (feature.getGeometry().getType() === 'Point') {
         const image = feature.getStyle()[0].getImage();

         highlightStyle = new Style({
            image: new Circle({
               radius: image.getRadius(),
               fill: image.getFill(),
               stroke: highlightStroke
            })
         });
      } else {
         highlightStyle = new Style({
            stroke: highlightStroke
         });
      }

      const zoomToStyles = [];
      const zoomTo = feature.get('_zoomTo');

      if (zoomTo) {
         const geometries = zoomTo.getGeometries();
         addZoomToStyle(geometries, zoomToStyles);
      }

      return [highlightStyle].concat(zoomToStyles);
   };
}

function addZoomToStyle(geometries, styles) {
   for (let i = 0; i < geometries.length; i++) {
      const geometry = geometries[i];
      const geometryType = geometry.getType();

      switch (geometryType) {
         case 'GeometryCollection':
            addZoomToStyle(geometry.getGeometries(), styles);
            break;
         case 'Polygon':
         case 'MultiPolygon':
         case 'LineString':
         case 'MultiLineString':
            styles.push(
               new Style({
                  geometry,
                  stroke: new Stroke({
                     color: ERROR_COLOR,
                     lineCap: 'round',
                     width: 7,
                  })
               })
            );
            break;
         case 'Point':
         case 'MultiPoint':
            styles.push(
               new Style({
                  geometry,
                  image: new Circle({
                     radius: 5,
                     fill: new Fill({ color: ERROR_COLOR })
                  })
               })
            );
            break;
         default:
            break;
      }
   }
}
