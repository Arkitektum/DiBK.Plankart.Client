import React, { useEffect, useState, useContext, useCallback } from 'react';
import { useDispatch } from 'react-redux';
import { toggleSidebar } from 'store/slices/mapSlice';
import filesize from 'filesize';
import Upload from './Upload/Upload';
import Upload3D from './Upload/Upload3D';
import './TopBar.scss';
import MapContext from 'context/MapContext';
import { getLayer, getFeaturesByName } from 'utils/map/helpers';
import { toggleFeature } from 'utils/map/features';

function TopBar({ loading, onUploadResponse }) {
   const [mapDocument, setMapDocument] = useState(null);
   const [_3dData, set3dData] = useState(null);
   const [sidebarVisible, setSidebarVisible] = useState(true);
   const [fullscreen, setFullscreen] = useState(false);
   const dispatch = useDispatch();
   const [ol3dMapEnabled, setOl3dMapEnabled] = useState(false);
   const [ol3dMap, _] = useContext(MapContext);

   const setEnabled3dView = useCallback(
      enabled => {
         function togglePaaskrifter(){
            const vectorLayer = getLayer(ol3dMap.getOlMap(), 'features');
            const paaskrifter = getFeaturesByName(vectorLayer, 'RpPåskrift');

            paaskrifter.forEach(paaskrift => {
               toggleFeature(paaskrift);
            })
         }

         ol3dMap.setEnabled(enabled);
         setOl3dMapEnabled(enabled);

         setTimeout(togglePaaskrifter, 0);
      },
      [ol3dMap]
   )

   useEffect(
      () => {
         function handleFullscreenChange() {
            setFullscreen(document.fullscreenElement !== null);
         }

         document.addEventListener('fullscreenchange', handleFullscreenChange)

         return () => {
            document.removeEventListener('fullscreenchange', handleFullscreenChange);
         }
      },
      []
   );

   useEffect(
      () => {
         if (!_3dData || !mapDocument) {
            return;
         }

         mapDocument.czmlData = _3dData.czmlData;
         mapDocument.validationResult3d = _3dData.validationResult;

         onUploadResponse({ ...mapDocument });

         setEnabled3dView(true);
      },
      [_3dData, setEnabled3dView, onUploadResponse, mapDocument]
   );

   function handleToggleSidebarClick() {
      dispatch(toggleSidebar({ visible: !sidebarVisible }));
      setSidebarVisible(!sidebarVisible);
   }

   function handleToggleFullscreenClick() {
      if (!document.fullscreenElement) {
         document.documentElement.requestFullscreen();
      } else if (document.exitFullscreen) {
         document.exitFullscreen();
      }
   }
   
   function handleToggle3dMapClick() {
      if (ol3dMap){
         setEnabled3dView(!ol3dMapEnabled);
      }
   }

   function handleUploadResponse(response) {
      setMapDocument(response);
      onUploadResponse(response);
   }

   function handleUpload3dResponse(response) {
      set3dData(response);
   }

   return (
      <div className="top-bar">
         <div className="top-bar-left">
            <div className="upload-button" style={{ display: loading ? 'none' : 'block' }}>
               <Upload onResponse={handleUploadResponse} />
            </div>
            <div className="upload-button" style={{ display: loading ? 'none' : 'block' }}>
               <Upload3D onResponse={handleUpload3dResponse} />
            </div>

            <div
               role="button"
               className={`toggle-sidebar ${!sidebarVisible ? 'sidebar-hidden' : ''}`}
               title={sidebarVisible ? 'Skjul sidepanel' : 'Vis sidepanel'}
               onClick={handleToggleSidebarClick}
               style={{ display: !mapDocument ? 'none' : 'block' }}
            >
            </div>
         </div>
         <div className="top-bar-center">
            {
               mapDocument ?
                  <div className="file-name">
                     {mapDocument.fileName}
                     <span>({filesize(mapDocument.fileSize, { separator: ',' })})</span>
                  </div>
                  :
                  null
            }
            <span className="app-name">GML-kart | Fellestjenester PLAN</span>
         </div>
         <div className="top-bar-right">
            <div
               role="button"
               className={`toggle-ol3d ${ol3dMapEnabled ? 'ol3d-toggled' : ''}`}
               title={`Bytt til ${ol3dMapEnabled ? '2D-vising' : '3D-visning'}`}
               onClick={handleToggle3dMapClick}
            />
            <div
               role="button"
               className={`toggle-fullscreen ${fullscreen ? 'fullscreen-toggled' : ''}`}
               title={fullscreen ? 'Avslutt fullskjerm' : 'Vis i fullskjerm'}
               onClick={handleToggleFullscreenClick}
            >
            </div>
         </div>
      </div>
   );
}

export default TopBar;