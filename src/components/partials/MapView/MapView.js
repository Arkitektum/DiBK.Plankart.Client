import React, { useCallback, useContext, useEffect, useRef, useState } from 'react';
import { LegendContext } from 'App';
import { Spinner } from 'components/custom-elements';
import { FeatureContextMenu, Features, Legends, ValidationErrors } from 'components/partials';
import { ZoomToExtent } from 'ol/control';
import { click } from 'ol/events/condition';
import { Select } from 'ol/interaction';
import { useSelector } from 'react-redux';
import { filterLegends } from 'utils/map/legend';
import { addLegendToFeatures, highlightSelectedFeatures, toggleFeatures } from 'utils/map/features';
import { getLayer } from 'utils/map/helpers';
import { createMap } from 'utils/map/map';
import NorthArrow from 'assets/gfx/symbol-north-arrow.svg';
import { ScaleLine, defaults as defaultControls } from 'ol/control';
import './MapView.scss';
import { METERS_PER_UNIT } from 'ol/proj';

function MapView({ mapDocument }) {
   const [map, setMap] = useState(null);
   const [contextMenuData, setContextMenuData] = useState(null);
   const [features, setFeatures] = useState([]);
   const [selectedFeatures, setSelectedFeatures] = useState([]);
   const [filteredLegends, setFilteredLegends] = useState([]);
   const [rotation, setRotation] = useState(0);
   const legends = useContext(LegendContext);
   const legend = useSelector(state => state.legend);
   const apiLoading = useSelector(state => state.api.loading);
   const mapElement = useRef();

   const selectFeature = useCallback(
      features => {
         highlightSelectedFeatures(map, features);
         setSelectedFeatures([...features]);
      },
      [map]
   );

   const addMapInteraction = useCallback(
      () => {
         const selectClick = new Select({
            condition: click,
            layers: layer => layer.get('id') === 'features',
            multi: true,
            style: null
         });

         map.addInteraction(selectClick);

         selectClick.on('select', event => {
            const features = event.target.getFeatures();

            if (features.getLength() === 1) {
               selectFeature(features.getArray());
            } else if (features.getLength() > 1) {
               const originalEvent = event.mapBrowserEvent.originalEvent;
               setContextMenuData({ left: originalEvent.offsetX, top: originalEvent.offsetY, features });
            }
         });
      },
      [map, selectFeature]
   );

   useEffect(
      () => {
         async function create() {
            const olMap = await createMap(mapDocument);
            setMap(olMap);

            const vectorLayer = getLayer(olMap, 'features');
            setFeatures(vectorLayer.getSource().getFeatures())
         }

         if (mapDocument) {
            create();
         }
      },
      [mapDocument]
   );

   useEffect(
      () => {
         if (!map) {
            return;
         }

         map.setTarget(mapElement.current);

         const vectorLayer = getLayer(map, 'features');
         const extent = vectorLayer.getSource().getExtent();
         const view = map.getView();

         view.fit(extent, map.getSize());
         view.setMinZoom(6);
         view.setMaxZoom(18);

         view.on('change:rotation', event => {
            const rotation = event.target.getRotation();
            setRotation(rotation);
         });

         map.addControl(new ZoomToExtent({ extent }));
         addMapInteraction();

         return () => {
            map.dispose();
         }
      },
      [map, selectFeature, addMapInteraction]
   );

   useEffect(
      () => {
         if (features.length && legends.length) {
            addLegendToFeatures(features, legends);
            setFilteredLegends(filterLegends(legends, features));
         }
      },
      [features, legends]
   );

   useEffect(
      () => {
         if (legend.name) {
            toggleFeatures(legend, map);
         }
      },
      [legend, map]
   );

   return (
      <div className="content">
         <div className="left-content">
            <Legends legends={filteredLegends} />
         </div>

         <div className="mid-content">
            {
               apiLoading ?
                  <Spinner /> :
                  null
            }

            <div className="map-container">
               <div ref={mapElement} className="map"></div>
            </div>

            <FeatureContextMenu map={map} data={contextMenuData} onFeatureSelect={selectFeature} />
         </div>

         <div className="right-content">
            <Features map={map} features={selectedFeatures} />
            <ValidationErrors map={map} validationResult={mapDocument?.validationResult} onMessageClick={selectFeature} />
         </div>

         <div className="north-arrow">
            <span>N</span>
            <img src={NorthArrow} style={{ transform: `rotate(${rotation}rad)` }} alt="" />
         </div>
      </div>
   );
}

export default MapView;