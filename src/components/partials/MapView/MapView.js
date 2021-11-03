import React, { useCallback, useContext, useEffect, useMemo, useRef, useState } from 'react';
import { LegendContext } from 'App';
import { FeatureContextMenu, FeatureInfo, Legends, MapInfo, PlanInfo, ValidationErrors } from 'components/partials';
import { ZoomToExtent } from 'ol/control';
import { click } from 'ol/events/condition';
import { Select } from 'ol/interaction';
import { useSelector } from 'react-redux';
import { filterLegends } from 'utils/map/legend';
import { addLegendToFeatures, highlightSelectedFeatures, toggleFeatures } from 'utils/map/features';
import { debounce, getLayer } from 'utils/map/helpers';
import { createMap } from 'utils/map/map';
import './MapView.scss';

function MapView({ mapDocument }) {
   const [map, setMap] = useState(null);
   const [contextMenuData, setContextMenuData] = useState(null);
   const [features, setFeatures] = useState([]);
   const [selectedFeatures, setSelectedFeatures] = useState([]);
   const [filteredLegends, setFilteredLegends] = useState([]);
   const legends = useContext(LegendContext);
   const legend = useSelector(state => state.map.legend);
   const sidebar = useSelector(state => state.map.sidebar);
   const sidebarVisible = useRef(true);
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
            hitTolerance: 10,
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
   
   const { onWindowResize } = useMemo(
      () => {
         const onWindowResize = debounce(_ => {
            map.updateSize();
         }, 500)

         return { onWindowResize };
      },
      [map]
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
         view.setMinZoom(12);
         view.setMaxZoom(24);

         map.addControl(new ZoomToExtent({ extent }));
         addMapInteraction();

         window.addEventListener('resize', onWindowResize)

         return () => {
            map.dispose();
            window.removeEventListener('resize', onWindowResize);
            setSelectedFeatures([]);
         }
      },
      [map, selectFeature, addMapInteraction, onWindowResize]
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
   
   useEffect(
      () => {
         if (map && sidebar.visible !== sidebarVisible.current) {
            map.updateSize();
            sidebarVisible.current = sidebar.visible;            
         }
      },
      [sidebar, map]
   );

   return (
      <div className={`content ${!sidebar.visible ? 'sidebar-hidden' : ''}`}>
         <div className="left-content">
            <PlanInfo mapDocument={mapDocument} />
            <MapInfo mapDocument={mapDocument} map={map} />
            <Legends legends={filteredLegends} />
         </div>

         <div className="right-content">
            <div className="map-container">
               <div ref={mapElement} className="map"></div>
            </div>

            <FeatureContextMenu map={map} data={contextMenuData} onFeatureSelect={selectFeature} />
            <FeatureInfo map={map} features={selectedFeatures} />
            <ValidationErrors map={map} validationResult={mapDocument?.validationResult} onMessageClick={selectFeature} />
         </div>
      </div>
   );
}

export default MapView;