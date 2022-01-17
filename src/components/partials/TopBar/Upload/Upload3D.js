import React from 'react';
import { useApi } from 'hooks';
import { useModals } from 'context/ModalsContext';
import './Upload.scss';

const MAP_URL = process.env.REACT_APP_MAP_URL;

function Upload3D({ onResponse }) {
   const sendAsync = useApi();
   const { openModal } = useModals();

   async function handleFileChange(event) {
      const files = event.target.files;

      if (!files.length) {
         return;
      }

      const formData = new FormData();
      formData.append('file', files[0]);
      event.target.value = '';

      const response = await sendAsync(MAP_URL, formData, { headers: { 'Content-Type': 'multipart/form-data' } });

      if (response) {
         if (!response.validationResult.xsdValidated) {
            openModal('XSD_VALIDATION', { fileName: response.fileName, messages: response.validationResult.xsdValidationMessages });
         } else if (!response.validationResult.epsgValidated) {
            openModal('EPSG_VALIDATION', { fileName: response.fileName, messages: response.validationResult.epsgValidationMessages });
         } else {
            onResponse(response);
         }
      }
   }

   return (
      <label className="upload" htmlFor="upload3D">
         <input id="upload3D" type="file" accept=".gml" onChange={handleFileChange} />
         <span>Åpne 3D plankart...</span>
      </label>
   );
}

export default Upload3D;