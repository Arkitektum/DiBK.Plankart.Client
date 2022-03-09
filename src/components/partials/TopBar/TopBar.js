import React, { useEffect, useState } from 'react';
import { useDispatch } from 'react-redux';
import { toggleSidebar } from 'store/slices/mapSlice';
import filesize from 'filesize';
import Upload from './Upload/Upload';
import Upload3D from './Upload/Upload3D';
import './TopBar.scss';

function TopBar({ loading, onUploadResponse }) {
   const [mapDocument, setMapDocument] = useState(null);
   const [_3dData, set3dData] = useState(null);
   const [sidebarVisible, setSidebarVisible] = useState(true);
   const [fullscreen, setFullscreen] = useState(false);
   const dispatch = useDispatch();

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

   function handleUploadResponse(response) {
      setMapDocument(response);
      onUploadResponse(response);
   }

   function handleUpload3dResponse(response) {
      set3dData(response);
   }

   useEffect(
      () => {
         if (!_3dData || !mapDocument) {
            return;
         }

         mapDocument.czmlData = _3dData.czmlData;
         mapDocument.validationResult3d = _3dData.validationResult;

         onUploadResponse({ ...mapDocument });
      },
      [_3dData]
   );

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