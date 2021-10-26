import { View } from 'ol';
import { defaults as defaultControls, FullScreen, ScaleLine } from 'ol/control';
import GeoJSON from 'ol/format/GeoJSON';
import { defaults as defaultInteractions, DragRotateAndZoom } from 'ol/interaction';
import { Vector as VectorLayer } from 'ol/layer';
import TileLayer from 'ol/layer/Tile';
import Map from 'ol/Map';
import TileWMS from 'ol/source/TileWMS';
import VectorSource from 'ol/source/Vector';
import { addValidationResultToFeatures } from './features';
import { addStyling } from './styling';

async function createFeaturesLayer(mapDocument) {
   const features = new GeoJSON().readFeatures(mapDocument.geoJson);

   const featuresLayer = new VectorLayer({
      source: new VectorSource({ features }),
      declutter: true
   });

   featuresLayer.set('id', 'features');

   addValidationResultToFeatures(mapDocument, features);
   await addStyling(features, () => { featuresLayer.changed() });

   return featuresLayer;
}

function createSelectedFeaturesLayer() {
   const selectedFeaturesLayer = new VectorLayer({
      source: new VectorSource(),
      zIndex: 999,
      declutter: true
   });

   selectedFeaturesLayer.set('id', 'selected-features');

   return selectedFeaturesLayer;
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


function scaleControl() {
   return new ScaleLine({
      units: 'metric',
      bar: true,
      steps: 4,
      text: true,
      minWidth: 140,
      target: '#target'
   });
}


export async function createMap(mapDocument) {
   if (!mapDocument) {
      return null;
   }

   return new Map({
      layers: [
         createTileLayer(),
         await createFeaturesLayer(mapDocument),
         createSelectedFeaturesLayer()
      ],
      view: new View({
         projection: mapDocument.epsg,
         padding: [25, 25, 25, 25]
      }),
      controls: defaultControls().extend([new FullScreen(), scaleControl()]),
      interactions: defaultInteractions().extend([new DragRotateAndZoom()]),
   });
}
