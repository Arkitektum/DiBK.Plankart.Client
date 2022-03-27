import axios from 'axios';
import { getLayer as getSldLayer, getStyle, Reader } from 'utils/sld-reader';
import { getUrl } from './helpers';

const sldStyles = {};

export async function loadSldStyle(featureMember) {
   if (!featureMember.sld) {
      return null;
   }

   const name = featureMember.name;

   if (sldStyles[name]) {
      return sldStyles[name];
   }

   const url = getUrl(featureMember.sld);

   try {
      const response = await axios.get(url);
      const sldObject = Reader(response.data, name);
      const sldLayer = getSldLayer(sldObject);      
      const style = getStyle(sldLayer, name);
      sldStyles[name] = style; 
      
      return style;    
   } catch {
      return null;
   }
}