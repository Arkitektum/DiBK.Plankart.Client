import React, { useCallback, useContext, useEffect, useMemo, useRef, useState } from 'react';
import { LegendContext } from 'App';
import { FeatureContextMenu, FeatureInfo, Legends, MapInfo, PlanInfo, ValidationErrors } from 'components/partials';
import { ZoomToExtent } from 'ol/control';
import { click } from 'ol/events/condition';
import { Select } from 'ol/interaction';
import { transformExtent } from 'ol/proj';
import { useDispatch, useSelector } from 'react-redux';
import { filterLegends } from 'utils/map/legend';
import { addGeometryInfo, addLegendToFeatures, highlightSelectedFeatures, toggleFeatures } from 'utils/map/features';
import { debounce, getAllFeatures, getExtentOfFeatures } from 'utils/map/helpers';
import { createMap } from 'utils/map/map';
import OLCesium from 'ol-cesium';
import { WebMapServiceImageryProvider, CzmlDataSource, CesiumTerrainProvider, Rectangle } from 'cesium';
import { baseMap } from 'config/baseMap.config';
import IonResource from 'cesium/Source/Core/IonResource';
import { toggleFeatureInfo } from 'store/slices/mapSlice';
import MapContext from 'context/MapContext';
import axios from 'axios';
import './MapView.scss';

const TERRAIN_DATA_URL = process.env.REACT_APP_TERRAIN3D_URL;

function MapView({ mapDocument }) {
   const [map, setMap] = useState(null);
   const [contextMenuData, setContextMenuData] = useState(null);
   const [features, setFeatures] = useState([]);
   const [selectedFeatures, setSelectedFeatures] = useState([]);
   const [filteredLegends, setFilteredLegends] = useState([]);
   const [terrainResourceId, setTerrainResourceId] = useState(null);
   const [mapExtent3d, setMapExtent3d] = useState(null);
   const [ol3dMap, setOl3dMap] = useContext(MapContext);
   const legends = useContext(LegendContext);
   const legend = useSelector(state => state.map.legend);
   const sidebar = useSelector(state => state.map.sidebar);
   const sidebarVisible = useRef(true);
   const mapElement = useRef();
   const dispatch = useDispatch();

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
            layers: layer => layer.get('isFeatureLayer') === true,
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
         async function createOlMap() {
            const olMap = await createMap(mapDocument);
            setMap(olMap);

            const features = getAllFeatures(olMap);
            setFeatures(features);
         }

         async function createTerrainResource() {
            const response = await axios.post(TERRAIN_DATA_URL, {
               envelope: mapDocument.envelope.asString,
               epsgCode: mapDocument.envelope.epsg.code2D.replace('EPSG:', '')
            });

            const resourceId = response.data;
            setTerrainResourceId(resourceId);
         }

         if (mapDocument && mapDocument.czmlData.czmlStrings.length === 0 && terrainResourceId === null) {
            createOlMap();
            createTerrainResource();
         }
      },
      [mapDocument, terrainResourceId]
   );

   useEffect(
      () => {
         if (!map) {
            return;
         }

         map.once('rendercomplete', _ => {

            const olcs = new OLCesium({ map });
            olcs.warmUp(0, 20000);
            console.log('nlsah')
            setOl3dMap(olcs);
         });

         map.setTarget(mapElement.current);

         const extent = getExtentOfFeatures(map)
         const view = map.getView();

         const mapEpsgCode = map.getView().getProjection().getCode();
         setMapExtent3d(transformExtent(extent, mapEpsgCode, 'EPSG:4326'));

         view.fit(extent, map.getSize());
         view.setMinZoom(10);
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
      [map, setOl3dMap, selectFeature, addMapInteraction, onWindowResize]
   );

   useEffect(
      () => {
         if (mapExtent3d === null || ol3dMap === null) {
            return;
         }

         const scene = ol3dMap.getCesiumScene()
         const globe = scene.globe;
         const dummy = Rectangle.fromDegrees(mapExtent3d[0] - 0.05, mapExtent3d[1] - 0.025, mapExtent3d[2] + 0.05, mapExtent3d[3] + 0.025);

         globe.cartographicLimitRectangle = dummy;
         globe.showSkirts = false;
         globe.backFaceCulling = false;
         globe.undergroundColor = undefined;
         scene.skyAtmosphere.show = false;
      },
      [mapExtent3d, ol3dMap]
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
         if (!ol3dMap) {
            return;
         }

         const scene = ol3dMap.getCesiumScene();

         scene.terrainProvider = new CesiumTerrainProvider({
            url: IonResource.fromAssetId(1),
         });

         const cesiumBaseMapWMS = new WebMapServiceImageryProvider({
            url: baseMap.wmsUrl,
            layers: baseMap.layer,
            maximumLevel: baseMap.maxZoom
         });

         if (!scene.imageryLayers.contains(cesiumBaseMapWMS)) {
            scene.imageryLayers.addImageryProvider(cesiumBaseMapWMS);
         }
      },
      [ol3dMap]
   );

   useEffect(
      () => {
         if (mapDocument?.czmlData.czmlStrings.length > 0) {
            var dataSources = ol3dMap.getDataSources();

            mapDocument.czmlData.czmlStrings.forEach(czmlString =>
               dataSources.add(CzmlDataSource.load(czmlString))
            );
         }
      },
      [mapDocument, ol3dMap]
   );

   useEffect(
      () => {
         if (terrainResourceId === null || ol3dMap === null) {
            return;
         }

         var scene = ol3dMap.getCesiumScene();

         scene.terrainProvider = new CesiumTerrainProvider({
            url: IonResource.fromAssetId(terrainResourceId),
            credit: "Norges Kartverk"
         });
      },
      [terrainResourceId, ol3dMap]
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