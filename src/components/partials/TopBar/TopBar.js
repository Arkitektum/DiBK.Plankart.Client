import React, { useState } from 'react';
import Upload from './Upload/Upload';
import filesize from 'filesize';
import './TopBar.scss';

function TopBar({ onUploadResponse }) {
   const [mapDocument, setMapDocument] = useState(null);

   function handleUploadResponse(response) {
      setMapDocument(response);
      onUploadResponse(response);
   }

   return (
      <div className="top-bar">
         <div className="upload-button">
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