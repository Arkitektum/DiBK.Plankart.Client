import React, { useCallback, useContext, useEffect, useMemo, useRef, useState } from 'react';
import { LegendContext } from 'App';
import { FeatureContextMenu, FeatureInfo, Legends, MapInfo, PlanInfo, ValidationErrors } from 'components/partials';
import { ZoomToExtent } from 'ol/control';
import { click } from 'ol/events/condition';
import { Select } from 'ol/interaction';
import { useDispatch, useSelector } from 'react-redux';
import { filterLegends } from 'utils/map/legend';
import { addGeometryInfo, addLegendToFeatures, highlightSelectedFeatures, toggleFeatures } from 'utils/map/features';
import { debounce, getLayer } from 'utils/map/helpers';
import { createMap } from 'utils/map/map';
import OLCesium from 'ol-cesium';
import { WebMapServiceImageryProvider, CzmlDataSource, CesiumTerrainProvider } from 'cesium';
import { cesiumBaseMap } from 'config/cesiumBaseMap.config';
import Ion from 'cesium/Source/Core/Ion';
import IonResource from 'cesium/Source/Core/IonResource';
import './MapView.scss';
import { toggleFeatureInfo } from 'store/slices/mapSlice';
import MapContext from 'context/MapContext';

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
   const dispatch = useDispatch();
   const [ol3dMap, setOl3dMap] = useContext(MapContext);

   Ion.defaultAccessToken = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJqdGkiOiI2MjcxMThmNC00YjRlLTQxN2EtOWVlYy01ZjlkMDI4OTk1MDYiLCJpZCI6Njk1ODcsImlhdCI6MTYzODk3MjM0Mn0.gk-hx6X_EMGF5iRzvKLLlu0dNNFUoIFe65HA83ZY7IE';

   const selectFeature = useCallback(
      features => {
         addGeometryInfo(features);
         highlightSelectedFeatures(map, features);
         setSelectedFeatures([...features]);
         dispatch(toggleFeatureInfo({ expanded: true }));
      },
      [map, dispatch]
   );

   const addMapInteraction = useCallback(
      () => {
         const selectClick = new Select({
            condition: click,
            layers: layer => layer.get('id') === 'features',
            multi: true,
            hitTolerance: 5,
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

         if (mapDocument && mapDocument.czmlData.czmlStrings.length === 0) {
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

   useEffect(
      () => {
         if (!map) {
            return;
         }

         var olcs = new OLCesium({map: map});
         setOl3dMap(olcs);
      },
      [map]
   )

   useEffect(
      () => {
         if (!ol3dMap){
            console.log('ol3dMap not ready');
            return;
         }

         var scene = ol3dMap.getCesiumScene();
         //scene.requestRenderMode = true;

         scene.terrainProvider = new CesiumTerrainProvider({
            url: IonResource.fromAssetId(827785),
            credit: "Norges Kartverk"
         });

         const cesiumBaseMapWMS = new WebMapServiceImageryProvider({
            url: cesiumBaseMap.url,
            layers: cesiumBaseMap.layers,
            maximumLevel: cesiumBaseMap.maxZoom,
         });

         if (!scene.imageryLayers.contains(cesiumBaseMapWMS)){
            scene.imageryLayers.addImageryProvider(cesiumBaseMapWMS);
         }

         preloadCesiumAsync();
      },
      [ol3dMap]
   )

   useEffect(
      () => {
         if (mapDocument?.czmlData.czmlStrings.length > 0){
            var dataSources = ol3dMap.getDataSources();

            mapDocument.czmlData.czmlStrings.forEach(czmlString =>
               dataSources.add(CzmlDataSource.load(czmlString))
            );
         }
      },
      [mapDocument]
   )

   async function preloadCesiumAsync() {
      ol3dMap.warmUp(0, 20000);
   }

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