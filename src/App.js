import React, { useState } from 'react';
import { MapView, TopBar } from 'components/partials';
import './App.scss';

function App() {
   const [mapDocument, setMapDocument] = useState(null);

   return (
      <div className="app">
         <TopBar onUploadResponse={setMapDocument} />
         <MapView mapDocument={mapDocument} />
      </div>
   );
}

export default App;
