import React, { useState } from 'react';
import Upload from './Upload/Upload';
import filesize from 'filesize';
import './TopBar.scss';
import { Button } from 'react-bootstrap';
import IconHidePanel from 'assets/gfx/icon-hide-panel.svg';

function TopBar({ loading, onUploadResponse }) {
   const [mapDocument, setMapDocument] = useState(null);

   function toggleLeftPanel() {
      document.body.classList.toggle('left-panel-hidden');
   }

   function handleUploadResponse(response) {
      setMapDocument(response);
      onUploadResponse(response);
   }

   return (
      <div className="top-bar">
         <div className="upload-button" style={{ display: loading ? 'none' : 'block' }}>
            <Upload onResponse={handleUploadResponse} />            
         </div>
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
   );
}

export default TopBar;