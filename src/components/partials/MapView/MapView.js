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
import OLCesium from 'ol-cesium';
import { WebMercatorProjection, GeographicProjection, WebMapServiceImageryProvider, ArcGISTiledElevationTerrainProvider, Color, CesiumTerrainProvider, createWorldTerrain, Viewer, viewerDragDropMixin } from 'cesium';
import './MapView.scss';
import { baseMap } from 'config/baseMap.config';
import IonResource from 'cesium/Source/Core/IonResource';
import Ion from 'cesium/Source/Core/Ion';

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
   const [ol3dMap, setOl3dMap] = useState(null);
   const ol3dMapEnabled = useRef(true);

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

            console.log('mapDocument: ', mapDocument);

            const vectorLayer = getLayer(olMap, 'features');
            setFeatures(vectorLayer.getSource().getFeatures())

            setMap(olMap);
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

         var plankartLayer = scene.imageryLayers.get(0);

         console.log('plankartLayer: ', plankartLayer)

         scene.imageryLayers.addImageryProvider(new WebMapServiceImageryProvider({
            url : baseMap.url,
            layers : baseMap.layer,
         }));
         
         scene.terrainProvider = new CesiumTerrainProvider({
            url: IonResource.fromAssetId(734967),
         });

         /*scene.terrainProvider =  new ArcGISTiledElevationTerrainProvider({
            url : 'https://elevation3d.arcgis.com/arcgis/rest/services/WorldElevation3D/Terrain3D/ImageServer'
         });*/

         ol3dMap.setEnabled(ol3dMapEnabled.current);
      },
      [ol3dMap, ol3dMapEnabled, map]
   )

   function toggle3dMap() {
      ol3dMapEnabled.current = !ol3dMapEnabled.current;

      if (ol3dMap){
         ol3dMap.setEnabled(ol3dMapEnabled.current);
      }
   }

   const terrainProvider = new ArcGISTiledElevationTerrainProvider({
      url : 'https://elevation3d.arcgis.com/arcgis/rest/services/WorldElevation3D/Terrain3D/ImageServer'
   });

   const imageryProvider = new WebMapServiceImageryProvider({
      url: baseMap.url,
      layers: baseMap.layer
   });

   Ion.defaultAccessToken = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJqdGkiOiI2MjcxMThmNC00YjRlLTQxN2EtOWVlYy01ZjlkMDI4OTk1MDYiLCJpZCI6Njk1ODcsImlhdCI6MTYzODk3MjM0Mn0.gk-hx6X_EMGF5iRzvKLLlu0dNNFUoIFe65HA83ZY7IE';

   const customTerrainProvider1 = new CesiumTerrainProvider({
      url: IonResource.fromAssetId(734967),
   });

   const customTerrainProvider2 = new CesiumTerrainProvider({
      url: IonResource.fromAssetId(734978),
   });

   const cesiumWorldTerrain = createWorldTerrain();

   /*var viewer = new Viewer('cesiumContainer', {
      terrainProvider : customTerrainProvider1,
      imageryProvider : imageryProvider,
   });

   //Add basic drag and drop functionality
   viewer.extend(viewerDragDropMixin);

   //Show a pop-up alert if we encounter an error when processing a dropped file
   viewer.dropError.addEventListener(function(dropHandler, name, error) {
   console.log(error);
   window.alert(error);
   });*/

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
               {<button onClick={toggle3dMap}>
                  Vis/Skjul 3d-kart
               </button>}
            </div>
            <div id="loadingOverlay">
               <h1>Loading...</h1>
            </div>

            <FeatureContextMenu map={map} data={contextMenuData} onFeatureSelect={selectFeature} />
            <FeatureInfo map={map} features={selectedFeatures} />
            <ValidationErrors map={map} validationResult={mapDocument?.validationResult} onMessageClick={selectFeature} />
         </div>
      </div>
   );
}

export default MapView;