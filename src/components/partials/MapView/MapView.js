import axios from 'axios';
import plankartConfig from 'config/plankart.config';
import { defaults as defaultControls, FullScreen, ZoomToExtent } from 'ol/control';
import { click } from 'ol/events/condition';
import GeoJSON from 'ol/format/GeoJSON';
import { defaults as defaultInteractions, DragRotateAndZoom } from 'ol/interaction';
import Select from 'ol/interaction/Select';
import { Vector as VectorLayer } from 'ol/layer';
import TileLayer from 'ol/layer/Tile';
import Map from 'ol/Map';
import TileWMS from 'ol/source/TileWMS';
import VectorSource from 'ol/source/Vector';
import { Stroke, Style } from 'ol/style';
import View from 'ol/View';
import React, { useEffect, useRef, useState } from 'react';
import { useSelector } from 'react-redux';
import { groupBy } from 'utils/helpers';
import { createLegends, filterLegends } from 'utils/legend-generator/legend-generator';
import { createOlStyleFunction, getLayer as getSldLayer, getStyle, Reader } from 'utils/sld-reader';
import './MapView.scss';

const SLD_BASE_URL = process.env.REACT_APP_SLD_BASE_URL;

function getLayer(map, id) {
   return map.getLayers().getArray()
      .find(layer => layer.get('id') === id);
}

function getFeatureById(vectorLayer, id) {
   return vectorLayer.getSource().getFeatures()
      .find(feature => feature.get('id') === id);
}

function getFeaturesByName(vectorLayer, name) {
   return vectorLayer.getSource().getFeatures()
      .filter(feature => feature.get('name') === name);
}

async function createStyle(name, callback) {
   let response;

   try {
      response = await axios.get(`${SLD_BASE_URL}/${name}.sld`);
   } catch (ex) {
      debugger
      return null;
   }

   const sldObject = Reader(response.data);
   const sldLayer = getSldLayer(sldObject);
   const style = getStyle(sldLayer, name);
   const featureTypeStyle = style.featuretypestyles[0];

   return createOlStyleFunction(featureTypeStyle, {
      imageLoadedCallback: callback
   });
}

async function addStyling(features, callback) {
   const groupedFeatures = groupBy(features, feature => feature.get('name'));
   const featureKeys = Object.keys(groupedFeatures);

   for (let i = 0; i < featureKeys.length; i++) {
      const key = featureKeys[i];

      if (!plankartConfig.some(member => member.name === key)) {
         continue;
      }

      const style = await createStyle(key, callback);

      groupedFeatures[key].forEach(feature => {
         feature.setStyle(style);
         feature.set('visible', true);
      });
   }
}

function toggleFeatures(legend, map) {
   const vectorLayer = getLayer(map, 'features');
   const features = getFeaturesByName(vectorLayer, legend.name);

   features.forEach(feature => {
      toggleFeature(feature);
   });
}

function toggleFeature(feature) {
   const visible = !feature.get('visible');

   if (visible) {
      const savedStyle = feature.get('savedStyle');
      feature.setStyle(savedStyle);
   } else {
      feature.set('savedStyle', feature.getStyle());
      feature.setStyle(new Style(null));
   }

   feature.set('visible', visible);
}

function addMapInteraction(map) {
   const selectPointerMove = new Select({
      condition: click,
      multi: true,
      style: null
   });

   map.addInteraction(selectPointerMove);

   selectPointerMove.on('select', event => {
      const features = event.target.getFeatures().getArray();

      features.forEach(feature => {
         const featureName = feature.get('name');

         const info = {
            name: featureName,
            id: feature.get('id'),
         };

         const featureMember = plankartConfig.find(member => member.name === featureName);
         const infoProps = featureMember?.infoProps || [];

         infoProps.forEach(prop => {
            info[prop] = feature.get(prop);
         });

         console.log(info);
      });
   });
}

async function createVectorLayer(mapDocument) {
   const features = new GeoJSON().readFeatures(mapDocument.geoJson);

   const vectorLayer = new VectorLayer({
      source: new VectorSource({ features }),
      declutter: true
   });

   vectorLayer.set('id', 'features');

   await addStyling(features, () => { vectorLayer.changed() });

   return vectorLayer;
}

function createTileLayer() {
   return new TileLayer({
      source: new TileWMS({
         url: 'https://opencache.statkart.no/gatekeeper/gk/gk.open?',
         params: {
            LAYERS: 'norges_grunnkart_graatone',
            VERSION: '1.1.1',
         }
      }),
      maxZoom: 18
   });
}

function createErrorStyleFunction(feature) {
   const origStyleFunction = feature.getStyleFunction();

   const stroke = new Stroke({
      color: 'rgb(255 0 0 / 50%)',
      lineCap: 'butt',
      width: 5
   });

   return (feature, resolution) => {
      const styles = origStyleFunction(feature, resolution);
      let newStyle;

      if (feature.get('name') === 'RpPåskrift') {
         newStyle = styles[1].clone();
         newStyle.getText().setStroke(stroke);
      } else {
         newStyle = styles[0].clone();
         newStyle.setStroke(stroke);
      }

      return [newStyle];
   };
}

function createErrorFeatures(mapDocument, map) {
   const rules = mapDocument.validationResult.rules;

   if (!rules.length) {
      return;
   }

   const gmlIds = rules.flatMap(rule => rule.messages.flatMap(message => message.gmlIds));
   const uniqueGmlIds = [...new Set(gmlIds)];
   const vectorLayer = getLayer(map, 'features');
   const features = [];

   for (let i = 0; i < uniqueGmlIds.length; i++) {
      const gmlId = uniqueGmlIds[i];
      const featureOrig = getFeatureById(vectorLayer, gmlId);

      if (!featureOrig) {
         continue;
      }

      const newFeature = featureOrig.clone();
      const styleFunction = createErrorStyleFunction(newFeature);

      newFeature.set('visible', false);
      newFeature.set('savedStyle', styleFunction);
      newFeature.setStyle(new Style(null));

      features.push(newFeature);
   }

   const errorVectorLayer = new VectorLayer({
      source: new VectorSource({ features }),
      zIndex: 999,
      declutter: true,
   });

   errorVectorLayer.set('id', 'error-features');

   map.addLayer(errorVectorLayer);
}

async function createMap(mapDocument) {
   if (!mapDocument) {
      return null;
   }

   const vectorLayer = await createVectorLayer(mapDocument);

   return new Map({
      layers: [
         createTileLayer(),
         vectorLayer
      ],
      view: new View({
         projection: mapDocument.epsg,
         padding: [25, 25, 25, 25]
      }),
      controls: defaultControls().extend([new FullScreen()]),
      interactions: defaultInteractions().extend([new DragRotateAndZoom()]),
   });
}

function MapView({ mapDocument, onLegendUpdated }) {
   const [map, setMap] = useState(null);
   const [features, setFeatures] = useState([]);
   const [legends, setLegends] = useState([]);
   const legend = useSelector(state => state.legend);
   const selectedFeature = useSelector(state => state.feature);
   const mapElement = useRef();
   const [selected, setSelected] = useState(null);

   useEffect(() => {
      if (!selectedFeature.id) {
         return;
      }

      if (selected) {
         toggleFeature(selected);

         if (selected.get('id') === selectedFeature.id) {
            setSelected(null);
            return;
         }
      }

      const errorLayer = getLayer(map, 'error-features');
      const feature = getFeatureById(errorLayer, selectedFeature.id);
      toggleFeature(feature);
      setSelected(feature);

      const featureExtent = feature.getGeometry().getExtent();
      map.getView().fit(featureExtent, map.getSize());
      map.getView().setZoom(map.getView().getZoom() - 1);
      /*map.getView().animate({
  zoom: map.getView().getZoom() + 1,
  duration: 250
})*/

   }, [selectedFeature, map])

   useEffect(() => {
      const featureMembers = plankartConfig
         .filter(member => member.showLegend)
         .map(member => member.name);

      createLegends(featureMembers)
         .then(legs => {
            setLegends(legs);
         });
   }, []);

   useEffect(() => {
      if (!features.length || !legends.length) {
         return;
      }

      const filtered = filterLegends(legends, features);
      onLegendUpdated(filtered);
   }, [features, legends, onLegendUpdated])

   useEffect(() => {
      if (!legend.name) {
         return;
      }

      toggleFeatures(legend, map);
   }, [legend, map])

   useEffect(() => {
      if (!mapDocument) {
         return;
      }

      createMap(mapDocument)
         .then(olMap => {
            setMap(olMap);

            const vectorLayer = getLayer(olMap, 'features');
            setFeatures(vectorLayer.getSource().getFeatures());

            createErrorFeatures(mapDocument, olMap);
         });
   }, [mapDocument]);

   useEffect(() => {
      if (!map) {
         return;
      }

      map.setTarget(mapElement.current);

      const vectorLayer = getLayer(map, 'features');
      const extent = vectorLayer.getSource().getExtent();
      const view = map.getView();

      view.fit(extent, map.getSize());
      view.setMinZoom(6);
      view.setMaxZoom(18);

      map.addControl(new ZoomToExtent({ extent }));
      addMapInteraction(map);

      return () => {
         map.dispose();
      }
   }, [map]);

   return (
      <React.Fragment>
         <div className="map-container">
            <div ref={mapElement} className="map"></div>
         </div>
      </React.Fragment>
   );
}

export default MapView;