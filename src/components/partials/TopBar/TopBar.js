import React, { useState } from 'react';
import { useDispatch } from 'react-redux';
import { toggleSidebar } from 'store/slices/mapSlice';
import filesize from 'filesize';
import Upload from './Upload/Upload';
import './TopBar.scss';

function TopBar({ loading, onUploadResponse }) {
   const [mapDocument, setMapDocument] = useState(null);
   const [sidebarVisible, setSidebarVisible] = useState(true);
   const dispatch = useDispatch();

   function handleToggleSidebarClick() {
      dispatch(toggleSidebar({ visible: !sidebarVisible }));
      setSidebarVisible(!sidebarVisible);
   }

   function handleUploadResponse(response) {
      setMapDocument(response);
      onUploadResponse(response);
   }

   return (
      <div className="top-bar">
         <div className="top-bar-left">
            <div className="upload-button" style={{ display: loading ? 'none' : 'block' }}>
               <Upload onResponse={handleUploadResponse} />
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
         <div className="top-bar-right">
            {
               mapDocument ?
                  <div className="file-name">
                     {mapDocument.fileName}
                     <span>({filesize(mapDocument.fileSize, { separator: ',' })})</span>
                  </div>
                  :
                  null
            }
            <span className="app-name">GML-plankart | Fellestjenester PLAN</span>
         </div>
      </div>
   );
}

export default TopBar;