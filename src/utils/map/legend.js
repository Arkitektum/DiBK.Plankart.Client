import { Feature, Map, View } from 'ol';
import { LineString, Point, Polygon } from 'ol/geom';
import { loadSldStyle } from 'utils/map/sld';
import { getGeometryStyles, OlStyler } from 'utils/sld-reader';
import { processExternalGraphicSymbolizersAsync } from 'utils/sld-reader/imageCache';
import featureMembers from 'config/features.config';
import VectorLayer from 'ol/layer/Vector';
import VectorSource from 'ol/source/Vector';
import { get, set } from 'idb-keyval';

const APP_VERSION = process.env.REACT_APP_VERSION;
const IDB_KEY = 'gml-kart-legend';
const SYMBOLIZER = { POLYGON: 'POLYGON', LINE: 'LINE', POINT: 'POINT', TEXT: 'TEXT' };

export async function createLegends() {
   const legendsFromIdb = await loadFromIdb();

   if (legendsFromIdb) {
      return legendsFromIdb;
   }

   const legends = [];
   const [map, mapElement] = createLegendTempMap();

   const names = featureMembers
      .filter(member => member.showLegend)
      .map(member => member.name);

   for (let i = 0; i < names.length; i++) {
      const name = names[i];
      const legend = await createLegend(name, map.getLayers().getArray()[0]);

      legends.push(legend);
   }

   map.dispose();
   mapElement.remove();

   await set(IDB_KEY, { version: APP_VERSION, legends });

   return legends;
}

export function filterLegends(legends, features) {
   return legends.map(legend => {
      legend.symbols.forEach(symbol => {
         symbol.hidden = !features.some(feature => feature.get('symbolId') === symbol.id);
      });

      legend.hidden = legend.symbols.every(symbol => symbol.hidden);

      return legend;
   });
}

async function createLegend(name, vectorLayer) {
   const style = await loadSldStyle(name);
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
      const olStyles = OlStyler(styles, feature);

      feature.setStyle(olStyles);

      legend.symbols.push({
         id: '_' + Math.random().toString(36).substr(2, 9),
         image: await createSymbol(vectorLayer, feature),
         rule,
         hidden: false
      });
   }

   return legend;
}

async function createSymbol(vectorLayer, feature) {
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

async function loadFromIdb() {
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
         return new Polygon([[[0, 0], [0, 50], [50, 50], [50, 0], [0, 0]]]);
      case SYMBOLIZER.LINE:
         return new LineString([[0, 50], [50, 0]]);
      case SYMBOLIZER.POINT:
         return new Point([25, 25]);
      default:         
         return new Polygon([[[0, 0], [0, 50], [50, 50], [50, 0], [0, 0]]]);
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
         extent: [0, 0, 50, 50]
      })
   });

   const mapElement = document.createElement('div');   
   Object.assign(mapElement.style, { position: 'absolute', left: '-9999px', top: '-9999px', width: '50px', height: '50px' });
   document.getElementsByTagName('body')[0].appendChild(mapElement);

   map.setTarget(mapElement);
   map.getView().fit([0, 0, 50, 50], map.getSize());

   return [map, mapElement];
}
