import React, { useEffect, useRef, useState } from 'react';
import { useApi } from 'hooks';
import Files from 'react-files'
import { Button, Spinner } from 'react-bootstrap';
import UploadFileList from './UploadFileList/UploadFileList';
import './Upload.scss';
import { useSelector } from 'react-redux';

const GML_TO_GEOJSON_URL = process.env.REACT_APP_GML_TO_GEOJSON_URL;

function Upload({ onResponse }) {
   const [files, setFiles] = useState([]);
   const [fileLoaded, setFileLoaded] = useState(false);
   const sendAsync = useApi();
   const uploadElement = useRef(null);
   const apiLoading = useSelector(state => state.api.loading);

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
         setFileLoaded(true);
      }
   }

   return (
      <div className={files.length ? 'file-added' : ''}>
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
            Slipp en fil her eller klikk for å velge
         </Files>

         <UploadFileList files={files} uploadElement={uploadElement} />

         {
            files.length ?
               <div>
                  <Button variant="primary" onClick={uploadFile} disabled={fileLoaded}>Vis kart</Button>
                  {
                     apiLoading ?
                        <Spinner animation="border" /> :
                        ''
                  }
               </div> :
               null
         }
      </div>
   )
}

export default Upload;