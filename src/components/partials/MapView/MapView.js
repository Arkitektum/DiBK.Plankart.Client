import axios from 'axios';
import plankartConfig from 'config/plankart.config';
import { defaults as defaultControls, FullScreen, ZoomToExtent } from 'ol/control';
import { click } from 'ol/events/condition';
import GeoJSON from 'ol/format/GeoJSON';
import { defaults as defaultInteractions, DragRotateAndZoom } from 'ol/interaction';
import Select from 'ol/interaction/Select';
import { Vector as VectorLayer } from 'ol/layer';
import TileLayer from 'ol/layer/Tile';
import Map from 'ol/Map';
import TileWMS from 'ol/source/TileWMS';
import VectorSource from 'ol/source/Vector';
import View from 'ol/View';
import React, { useEffect, useRef, useState } from 'react';
import { groupBy } from 'utils/helpers';
import { createLegends, filterLegends } from 'utils/legend-generator/legend-generator';
import { createOlStyleFunction, getLayer as getSldLayer, getStyle, Reader } from 'utils/sld-reader';
import './MapView.scss';

function getLayer(map, id) {
   return map.getLayers().getArray()
      .find(layer => layer.get('id') === id);
}

async function createStyle(name, callback) {  
   let response;

   try {
      response = await axios.get(`/data/sld/${name}.sld`);   
   } catch {
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

async function addStyling(features, callback) {
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
      });
   }
}

function addMapInteraction(map) {
   const selectPointerMove = new Select({
      condition: click,
      style: null
   });

   map.addInteraction(selectPointerMove);

   selectPointerMove.on('select', event => {
      const features = event.target.getFeatures().getArray();

      if (features.length) {
         const feature = features[0];
         const featureName = feature.get('name');

         const info = {
            name: featureName,
            id: feature.get('id'),
         };

         const featureMember = plankartConfig.find(member => member.name === featureName);
         const infoProps = featureMember?.infoProps || [];

         infoProps.forEach(prop => {
            info[prop] = feature.get(prop);
         });

         console.log(info);
      }
   });
}

async function createVectorLayer(mapDocument) {
   const features = new GeoJSON().readFeatures(mapDocument.geoJson);

   const vectorLayer = new VectorLayer({
      source: new VectorSource({ features }),
      declutter: true
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
      }),
      maxZoom: 18
   });
}

async function createMap(mapDocument) {
   if (!mapDocument) {
      return null;
   }

   const vectorLayer = await createVectorLayer(mapDocument);

   return new Map({
      layers: [
         createTileLayer(),
         vectorLayer
      ],
      view: new View({
         projection: mapDocument.epsg,
         padding: [25, 25, 25, 25]
      }),
      controls: defaultControls().extend([new FullScreen()]),
      interactions: defaultInteractions().extend([new DragRotateAndZoom()]),
   });
} 

function MapView({ mapDocument, onLegendUpdated }) {
   const [map, setMap] = useState(null);
   const [features, setFeatures] = useState([]);
   const [legends, setLegends] = useState([]);
   const mapElement = useRef();

   useEffect(() => {
      const featureMembers = plankartConfig
         .filter(member => member.showLegend)
         .map(member => member.name);

      createLegends(featureMembers)
         .then(legs => {
            setLegends(legs);
         });
   }, []);

   useEffect(() => {
      if (!features.length || !legends.length) {
         return;
      }

      const filtered = filterLegends(legends, features);
      onLegendUpdated(filtered);
   }, [features, legends, onLegendUpdated])

   useEffect(() => {
      if (!mapDocument) {
         return;
      }

      createMap(mapDocument)
         .then(olMap => {
            setMap(olMap);
            const vectorLayer = getLayer(olMap, 'geojson');
            setFeatures(vectorLayer.getSource().getFeatures());
         });
   }, [mapDocument]);

   useEffect(() => {
      if (!map) {
         return;
      }

      map.setTarget(mapElement.current);

      const vectorLayer = getLayer(map, 'geojson');
      const extent = vectorLayer.getSource().getExtent();
      const view = map.getView();

      view.fit(extent, map.getSize());
      view.setMinZoom(6);
      view.setMaxZoom(18);

      map.addControl(new ZoomToExtent({ extent }));
      addMapInteraction(map);

      return () => {
         map.dispose();
      }
   }, [map]);

   return (
      <React.Fragment>
         <div className="map-container">
            <div ref={mapElement} className="map"></div>
         </div>
      </React.Fragment>
   );
}

export default MapView;