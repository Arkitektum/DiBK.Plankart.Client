import axios from 'axios';
import { getLayer as getSldLayer, getStyle, Reader } from 'utils/sld-reader';
import featureMembers from 'config/plankart.config';

const SLD_BASE_URL = process.env.REACT_APP_SLD_BASE_URL;

export const sldStyles = {};

export async function loadSldStyles() {
   const names = featureMembers.map(member => member.name);

   for (let i = 0; i < names.length; i++) {
      const name = names[i];
      const style = await loadSldStyle(name);

      if (style) {
         sldStyles[name] = style;
      }
   }
}

async function loadSldStyle(name) {
   try {
      const response = await axios.get(`${SLD_BASE_URL}/${name}.sld`);
      const sldObject = Reader(response.data);
      const sldLayer = getSldLayer(sldObject);
      
      return getStyle(sldLayer, name);
   } catch {
      return null;
   }
}