import React, { useState } from 'react';
import { useSelector } from 'react-redux';
import { Legends, MapView, TopBar } from 'components/partials';
import { Spinner } from 'components/custom-elements';
import Logo from 'assets/gfx/logo-dibk.svg';
import './App.scss';

function App() {
   const [mapDocument, setMapDocument] = useState(null);
   const [legends, setLegends] = useState([]);
   const apiLoading = useSelector(state => state.api.loading);

   return (
      <div className="app">
         <div className="content">
            <div className="left-content">
               <header>
                  <h1>
                     <img src={Logo} alt="DiBK" />
                     <div className="header">
                        <span>Fellestjenester PLAN</span>
                        <span>GML-plankart</span>
                     </div>
                  </h1>
               </header>
               {
                  mapDocument ?
                     <div className="info">
                        <span className="name">{mapDocument.name || '-'}</span>
                        <span className="id">{mapDocument.id || '-'}</span>
                     </div> :
                     null
               }
               <div>
                  <Legends legends={legends} />
               </div>
            </div>
            <div className="right-content">
               <TopBar onUploadResponse={setMapDocument} />
               {
                  apiLoading ?
                     <Spinner /> :
                     null
               }
               <MapView mapDocument={mapDocument} onLegendUpdated={setLegends} />
            </div>
         </div>
      </div>
   );
}

export default App;
