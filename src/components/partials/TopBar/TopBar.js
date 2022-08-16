import React, { useEffect, useState, useContext, useCallback } from 'react';
import { useDispatch } from 'react-redux';
import { toggle3d, toggleSidebar } from 'store/slices/mapSlice';
import filesize from 'filesize';
import Upload from './Upload/Upload';
import Upload3D from './Upload/Upload3D';
import './TopBar.scss';
import MapContext from 'context/MapContext';
import { getLayer } from 'utils/map/helpers';
import { clearSelectedFeatures } from 'utils/map/features';

function TopBar({ loading, onUploadResponse }) {
   const [mapDocument, setMapDocument] = useState(null);
   const [_3dData, set3dData] = useState(null);
   const [sidebarVisible, setSidebarVisible] = useState(true);
   const [fullscreen, setFullscreen] = useState(false);
   const dispatch = useDispatch();
   const [_3dMapEnabled, set_3dMapEnabled] = useState(false);
   const [_3dMap] = useContext(MapContext);

   const setEnabled3dView = useCallback(
      enabled => {
         const olMap = _3dMap.getOlMap();

         function togglePåskrifter() {
            const vectorLayer = getLayer(olMap, 'RpPåskrift');
            vectorLayer.setVisible(!enabled);
         }

         clearSelectedFeatures(olMap);

         _3dMap.setEnabled(enabled);
         set_3dMapEnabled(enabled);
         dispatch(toggle3d(enabled));
         setTimeout(togglePåskrifter, 0);
      },
      [_3dMap, dispatch]
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
      if (_3dMap) {
         setEnabled3dView(!_3dMapEnabled);
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
            <div className="open-files">
               <div className="upload-button" style={{ display: loading ? 'none' : 'block' }}>
                  <Upload onResponse={handleUploadResponse} />
               </div>
               <div className="upload-button" style={{ display: loading ? 'none' : 'block' }}>
                  <Upload3D onResponse={handleUpload3dResponse} />
               </div>
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
               className={`toggle-ol3d ${_3dMapEnabled ? 'ol3d-toggled' : ''}`}
               title={`Bytt til ${_3dMapEnabled ? '2D-vising' : '3D-visning'}`}
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