import axios from 'axios';
import plankartConfig from 'config/plankart.config';
import { createOlStyleFunction, getLayer as getSldLayer, getStyle, Reader } from 'utils/sld-reader';
import { groupBy } from './helpers';

const SLD_BASE_URL = process.env.REACT_APP_SLD_BASE_URL;

export async function createStyle(name, callback) {
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

export function createStyleFunction(feature, stroke) {
   const origStyleFunction = feature.getStyleFunction();

   if (!origStyleFunction) {
      return null;
   }

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

      newStyle.setFill(null);

      return [newStyle];
   };
}

export async function addStyling(features, callback) {
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