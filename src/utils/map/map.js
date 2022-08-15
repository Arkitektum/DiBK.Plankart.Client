import { View } from 'ol';
import { defaults as defaultControls, FullScreen } from 'ol/control';
import GeoJSON from 'ol/format/GeoJSON';
import { defaults as defaultInteractions, DragRotateAndZoom } from 'ol/interaction';
import { Vector as VectorLayer } from 'ol/layer';
import TileLayer from 'ol/layer/Tile';
import Map from 'ol/Map';
import TileWMS from 'ol/source/TileWMS';
import VectorSource from 'ol/source/Vector';
import WMTS, { optionsFromCapabilities } from 'ol/source/WMTS';
import WMTSCapabilities from 'ol/format/WMTSCapabilities';
import { addValidationResultToFeatures } from './features';
import { addStyling } from './styling';
import { baseMap } from 'config/baseMap.config';
import featureMembers from 'config/features.config';
import axios from 'axios';
import { groupBy } from './helpers';
import orderBy from 'lodash.orderby';

async function createFeatureLayers(mapDocument) {
   const allFeatures = new GeoJSON().readFeatures(mapDocument.geoJson);
   addValidationResultToFeatures(mapDocument, allFeatures);

   const grouped = groupBy(allFeatures, feature => feature.get('_name'));
   const keys = Object.keys(grouped);
   const vectorLayers = [];

   for (let i = 0; i < keys.length; i++) {
      const key = keys[i];
      const features = grouped[key];
      const featureMember = featureMembers.find(member => member.name === key);

      const vectorLayer = new VectorLayer({
         source: new VectorSource({ features: grouped[key] }),
         declutter: true,
         zIndex: featureMember?.zIndex || 0
      });

      await addStyling(features, () => { vectorLayer.changed() });

      vectorLayer.set('id', key);
      vectorLayer.set('isFeatureLayer', true);
      vectorLayers.push(vectorLayer);
   }

   const ordered = orderBy(vectorLayers, layer => layer.getZIndex());

   return ordered;
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

async function createTileLayer(epsgCode) {
   const tileLayer = await createTileLayerWMTS(epsgCode)

   return tileLayer !== null ? tileLayer : createTileLayerWMS();
}

function createTileLayerWMS() {
   return new TileLayer({
      source: new TileWMS({
         url: baseMap.wmsUrl,
         params: {
            LAYERS: baseMap.layer,
            VERSION: '1.1.1',
         }
      }),
      maxZoom: baseMap.maxZoom,
      altitudeMode: 'clampToGround',
   });
}

async function createTileLayerWMTS(epsgCode) {
   let response;

   try {
      response = await axios.get(baseMap.wmtsCapabilitiesUrl);
   } catch {
      return null;
   }

   const capabilities = new WMTSCapabilities().read(response.data);

   const options = optionsFromCapabilities(capabilities, {
      layer: baseMap.layer,
      matrixSet: epsgCode,
   });

   return new TileLayer({
      source: new WMTS(options),
      maxZoom: baseMap.maxZoom
   });
}

export async function createMap(mapDocument) {
   if (!mapDocument) {
      return null;
   }
   
   const map = new Map({
      layers: [
         await createTileLayer(mapDocument.epsg.code)
      ],
      view: new View({
         projection: mapDocument.epsg.code2D,
         padding: [25, 25, 25, 25]
      }),
      controls: defaultControls().extend([new FullScreen()]),
      interactions: defaultInteractions().extend([new DragRotateAndZoom()]),
   });   

   const featureLayers = await createFeatureLayers(mapDocument);

   featureLayers.forEach(layer => map.addLayer(layer));
   map.addLayer(createSelectedFeaturesLayer());

   return map;
}
