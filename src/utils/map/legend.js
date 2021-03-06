import { Feature, Map, View } from 'ol';
import { LineString, Point, Polygon } from 'ol/geom';
import { loadSldStyle } from 'utils/map/sld';
import { getGeometryStyles, OlStyler } from 'utils/sld-reader';
import { processExternalGraphicSymbolizersAsync } from 'utils/sld-reader/imageCache';
import featureMembers from 'config/features.config';
import VectorLayer from 'ol/layer/Vector';
import VectorSource from 'ol/source/Vector';
import { get, set } from 'idb-keyval';
import { createId } from './helpers';

const APP_VERSION = process.env.REACT_APP_VERSION;
const IDB_KEY = 'dibk-gml-kart';
const SYMBOLIZER = { POLYGON: 'POLYGON', LINE: 'LINE', POINT: 'POINT', TEXT: 'TEXT' };

export async function createLegends() {
   const legendsFromIdb = await loadLegendsFromIdb();

   if (legendsFromIdb) {
      return legendsFromIdb;
   }

   const legends = [];
   const [map, mapElement] = createLegendTempMap();
   const vectorLayer = map.getLayers().getArray()[0];

   const members = featureMembers
      .filter(member => member.showLegend);

   for (let i = 0; i < members.length; i++) {
      const legend = await createLegend(members[i], vectorLayer);

      if (legend !== null) {
         legends.push(legend);
      }
   }

   map.dispose();
   mapElement.remove();

   const data = await get(IDB_KEY) || {};
   await set(IDB_KEY, { ...data, version: APP_VERSION, legends });

   return legends;
}

export function filterLegends(legends, features) {
   return legends.map(legend => {
      legend.symbols.forEach(symbol => {
         symbol.hidden = !features.some(feature => feature.get('_symbolId') === symbol.id);
      });

      legend.hidden = legend.symbols.every(symbol => symbol.hidden);

      return legend;
   });
}

async function createLegend(featureMember, vectorLayer) {
   const style = await loadSldStyle(featureMember);

   if (style === null) {
      return null;
   }

   const rules = style.featuretypestyles[0].rules;

   const legend = {
      name: style.name,
      symbols: [],
      hidden: false
   };

   await loadExternalGraphics(style);

   for (let i = 0; i < rules.length; i++) {
      const rule = rules[i];
      const feature = new Feature({ geometry: createGeometry(rule) });
      const styles = getGeometryStyles([rule]);
      const olStyles = getOlStyles(styles, feature, rule);

      feature.setStyle(olStyles);

      legend.symbols.push({
         id: createId(),
         image: await createSymbolImage(vectorLayer, feature),
         rule,
         hidden: false
      });
   }

   return legend;
}

function getOlStyles(styles, feature, rule) {
   const olStyles = OlStyler(styles, feature);

   if (getSymbolizerType(rule) === SYMBOLIZER.POINT) {
      return olStyles.map(olStyle => {
         const clone = olStyle.clone();
         const image = clone.getImage();

         if (image) {
            image.setScale(image.getScale() * 1.75);
         }

         return clone;
      })
   }

   return olStyles;
}

async function createSymbolImage(vectorLayer, feature) {
   return new Promise((resolve) => {
      vectorLayer.once('postrender', event => {
         resolve(event.context.canvas.toDataURL());
      });
      
      const source = vectorLayer.getSource();
      source.clear();
      source.addFeature(feature);
   });
}

async function loadExternalGraphics(style) {
   const featureStyleType = style.featuretypestyles[0];
   const rules = featureStyleType.rules;

   await processExternalGraphicSymbolizersAsync(rules, featureStyleType, {})
}

async function loadLegendsFromIdb() {
   const { version, legends } = await get(IDB_KEY) || {};

   if (legends && version !== APP_VERSION) {
      await set(IDB_KEY, null);    
   }

   return legends;
}

function createGeometry(rule) {
   const symbolizer = getSymbolizerType(rule);

   switch (symbolizer) {
      case SYMBOLIZER.POLYGON:
         return new Polygon([[[0, 0], [0, 64], [64, 64], [64, 0], [0, 0]]]);
      case SYMBOLIZER.LINE:
         return new LineString([[8, 56], [56, 8]]);
      case SYMBOLIZER.POINT:
      case SYMBOLIZER.TEXT:
         return new Point([32, 32]);
      default:         
         return new Polygon([[[0, 0], [0, 64], [64, 64], [64, 0], [0, 0]]]);
   }
}

function getSymbolizerType(rule) {
   if (rule.polygonsymbolizer) {
      return SYMBOLIZER.POLYGON;
   }
   if (rule.linesymbolizer) {
      return SYMBOLIZER.LINE;
   }
   if (rule.pointsymbolizer) {
      return SYMBOLIZER.POINT;
   }
   if (rule.textsymbolizer) {
      return SYMBOLIZER.TEXT;
   }
}

function createLegendTempMap() {
   const map = new Map({
      layers: [
         new VectorLayer({
            source: new VectorSource()
         })
      ],
      view: new View({
         extent: [0, 0, 64, 64]
      })
   });

   const mapElement = document.createElement('div');   
   Object.assign(mapElement.style, { position: 'absolute', top: '-9999px', left: '-9999px', width: '64px', height: '64px' });
   document.getElementsByTagName('body')[0].appendChild(mapElement);

   map.setTarget(mapElement);
   map.getView().fit([0, 0, 64, 64], map.getSize());

   return [map, mapElement];
}
