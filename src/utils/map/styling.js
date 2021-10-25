import featureMembers from 'config/plankart.config';
import { createOlStyleFunction } from 'utils/sld-reader';
import { groupBy } from './helpers';
import { loadSldStyle } from './sld';

export async function createStyle(name, callback) {
   const style = await loadSldStyle(name);
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

      if (!featureMembers.some(member => member.name === key)) {
         continue;
      }

      const style = await createStyle(key, callback);

      groupedFeatures[key].forEach(feature => {
         feature.setStyle(style);
         feature.set('visible', true);
      });
   }
}