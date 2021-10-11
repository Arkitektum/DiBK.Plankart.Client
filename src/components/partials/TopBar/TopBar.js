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
         <div>
            <Upload onResponse={handleUploadResponse} />
         </div>
         {
            mapDocument ?
               <React.Fragment>
                  <div className="file-name">
                     {mapDocument?.fileName}
                     <span>({filesize(mapDocument.fileSize, { separator: ',' })})</span>
                  </div>
                  <div className="epsg">{mapDocument.epsg}</div>
               </React.Fragment> :
               null
         }
      </div>
   );
}

export default TopBar;