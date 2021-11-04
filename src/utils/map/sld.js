import axios from 'axios';
import { getLayer as getSldLayer, getStyle, Reader } from 'utils/sld-reader';

const SLD_BASE_URL = process.env.REACT_APP_SLD_BASE_URL;
const sldStyles = {};

export async function loadSldStyle(name) {
   if (sldStyles[name]) {
      return sldStyles[name];
   }

   try {
      const response = await axios.get(`${SLD_BASE_URL}/${name}.sld`);
      const sldObject = Reader(response.data, name);
      const sldLayer = getSldLayer(sldObject);      
      const style = getStyle(sldLayer, name);
      sldStyles[name] = style; 
      
      return style;    
   } catch {
      return null;
   }
}