import React, { useEffect, useRef, useState } from 'react';
import { useApi } from 'hooks';
import Files from 'react-files'
import { Button } from 'react-bootstrap';
import UploadFileList from './UploadFileList/UploadFileList';
import './Upload.scss';

const GML_TO_GEOJSON_URL = process.env.REACT_APP_GML_TO_GEOJSON_URL;

function Upload({ onResponse }) {
   const [files, setFiles] = useState([]);
   const sendAsync = useApi();
   const uploadElement = useRef(null);

   useEffect(() => {
      if (!files.length) {
         onResponse(null);
      }
   }, [files, onResponse])

   async function uploadFile() {
      if (!files.length) {
         return;
      }

      const formData = new FormData();
      formData.append('file', files[0]);

      const response = await sendAsync(GML_TO_GEOJSON_URL, formData, { headers: { 'Content-Type': 'multipart/form-data' } });

      if (response) {
         onResponse(response);
      }
   }

   return (
      <React.Fragment>
         <Files
            ref={uploadElement}
            className='files-dropzone'
            onChange={setFiles}
            accepts={['.gml']}
            multiple={false}
            maxFiles={1}
            maxFileSize={10000000}
            minFileSize={0}
            clickable
         >
            Slipp filer her eller klikk for å laste opp
         </Files>

         <UploadFileList files={files} uploadElement={uploadElement} />

         {
            files.length ?
               <Button variant="primary" onClick={uploadFile}>Vis kart</Button> :
               null
         }
      </React.Fragment>
   )
}

export default Upload;