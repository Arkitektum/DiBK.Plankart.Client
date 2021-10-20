import axios from 'axios';
import { Feature } from 'ol';
import { Polygon } from 'ol/geom';
import { toContext } from 'ol/render';
import { Stroke, Style } from 'ol/style';
import { getGeometryStyles, getLayer as getSldLayer, getStyle, OlStyler, Reader } from 'utils/sld-reader';
import { processExternalGraphicSymbolizersAsync } from 'utils/sld-reader/imageCache';

const SLD_BASE_URL = process.env.REACT_APP_SLD_BASE_URL;

const SYMBOLIZER = {
   POLYGON: 'POLYGON',
   LINE: 'LINE',
   POINT: 'POINT',
   TEXT: 'TEXT'
};

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

function createGeometry(rule) {
   const symbolizer = getSymbolizerType(rule);

   switch (symbolizer) {
      case SYMBOLIZER.POLYGON:
         return new Polygon([[[0, 0], [0, 50], [50, 50], [50, 0], [0, 0]]]);
      default:
         return new Polygon([[[0, 0], [0, 50], [50, 50], [50, 0], [0, 0]]]);
   }
}

async function loadExternalGraphics(style) {
   const featureStyleType = style.featuretypestyles[0];
   const rules = featureStyleType.rules;

   await processExternalGraphicSymbolizersAsync(rules, featureStyleType, {})
}

async function createLegend(name) {
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
   const rules = style.featuretypestyles[0].rules;

   const legend = {
      name: style.name,
      symbols: [],
      hidden: false
   };

   await loadExternalGraphics(style);

   for (let i = 0; i < rules.length; i++) {
      const rule = rules[i];

      const styles = getGeometryStyles([rule]);
      const feature = new Feature({ geometry: createGeometry(rule) });
      const olStyles = OlStyler(styles, feature);

      const canvas = document.createElement('canvas');
      const vectorContext = toContext(canvas.getContext('2d'), { size: [50, 50] });

      vectorContext.setStyle(new Style({ stroke: new Stroke({ color: 'black' }) }));
      vectorContext.drawFeature(feature, olStyles[0]);

      legend.symbols.push({
         id: '_' + Math.random().toString(36).substr(2, 9),
         image: canvas.toDataURL(),
         rule,
         hidden: false
      });
   }

   return legend;
}

export async function createLegends(names) {
   const legends = [];

   for (let i = 0; i < names.length; i++) {
      const name = names[i];
      const legend = await createLegend(name);

      legends.push(legend);
   }

   return legends;
}

export function filterLegends(legends, features) {
   return legends.map(legend => {
      legend.symbols.forEach(symbol => {
         symbol.hidden = !features.some(feature => feature.get('legend')?.id === symbol.id);
      });

      legend.hidden = legend.symbols.every(symbol => symbol.hidden);

      return legend;
   });
}
