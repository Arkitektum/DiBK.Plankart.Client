import axios from 'axios';
import featureMembers from 'config/map.plankart.config';
import { defaults as defaultControls, FullScreen } from 'ol/control';
import GeoJSON from 'ol/format/GeoJSON';
import { defaults as defaultInteractions, DragRotateAndZoom } from 'ol/interaction';
import { Vector as VectorLayer } from 'ol/layer';
import TileLayer from 'ol/layer/Tile';
import Map from 'ol/Map';
import TileWMS from 'ol/source/TileWMS';
import VectorSource from 'ol/source/Vector';
import View from 'ol/View';
import React, { useEffect, useRef, useState } from 'react';
import { groupBy } from 'utils/helpers';
import { createOlStyleFunction, getLayer as getSldLayer, getStyle, Reader } from 'utils/sld-reader';
import './MapView.scss';

function getLayer(map, id) {
   return map.getLayers().getArray().find(layer => layer.get('id') === id);
}

async function createStyle(name, callback) {
   const response = await axios.get(`/data/sld/${name}.sld`);
   const sldObject = Reader(response.data);
   const sldLayer = getSldLayer(sldObject);
   const style = getStyle(sldLayer, name);
   const featureTypeStyle = style.featuretypestyles[0];

   return createOlStyleFunction(featureTypeStyle, {
      imageLoadedCallback: callback
   });
}

async function addStyling(features, callback) {
   const groupedFeatures = groupBy(features, feature => feature.get('name'));
   const featureKeys = Object.keys(groupedFeatures);

   for (let i = 0; i < featureKeys.length; i++) {
      const key = featureKeys[i];

      if (!featureMembers[key]) {
         continue;
      }

      const style = await createStyle(key, callback);

      groupedFeatures[key].forEach(feature => {
         feature.setStyle(style);
      });
   }
}

async function createVectorLayer(geoJsonDocument) {
   const features = new GeoJSON().readFeatures(geoJsonDocument.featureCollection);
   const groupedFeatures = groupBy(features, feature => feature.get('name'));

   const vectorLayer = new VectorLayer({      
      source: new VectorSource({ features /*: groupedFeatures['RpAngittHensynSone']*/ })
   });

   vectorLayer.set('id', 'geojson');

   await addStyling(features, () => { vectorLayer.changed() });

   return vectorLayer;
}

function createTileLayer() {
   return new TileLayer({
      source: new TileWMS({
         url: 'https://opencache.statkart.no/gatekeeper/gk/gk.open?',
         params: {
            LAYERS: 'norges_grunnkart_graatone',
            VERSION: '1.1.1',
         }
      })
   });
}

async function createMap(geoJsonDocument) {
   if (!geoJsonDocument) {
      return null;
   }

   return new Map({
      layers: [
         createTileLayer(),
         await createVectorLayer(geoJsonDocument)
      ],
      view: new View({
         projection: geoJsonDocument.epsg,
         padding: [25, 25, 25, 25]
      }),
      controls: defaultControls().extend([new FullScreen()]),
      interactions: defaultInteractions().extend([new DragRotateAndZoom()])
   });
}

function MapView({ geoJsonDocument }) {
   const [map, setMap] = useState(null);
   const mapElement = useRef();

   useEffect(() => {
      if (!geoJsonDocument) {
         return;
      }

      createMap(geoJsonDocument)
         .then(olMap => {
            setMap(olMap);
         });

   }, [geoJsonDocument]);

   useEffect(() => {
      if (!map) {
         return;
      }

      const vectorLayer = getLayer(map, 'geojson');

      map.setTarget(mapElement.current);
      map.getView().fit(vectorLayer.getSource().getExtent(), map.getSize());

      return () => {
         map.dispose();
      }
   }, [map]);


   return (
      <div className="map-container">
         <div ref={mapElement} className="map"></div>
      </div>
   );
}

export default MapView;