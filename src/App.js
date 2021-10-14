import React, { useState } from 'react';
import { useSelector } from 'react-redux';
import { Legends, MapView, TopBar, ValidationErrors } from 'components/partials';
import { Spinner } from 'components/custom-elements';
import Logo from 'assets/gfx/logo-dibk.svg';
import { testdata } from 'testdata/testdata';
import './App.scss';

function App() {
   const [mapDocument, setMapDocument] = useState(testdata);
   const [legends, setLegends] = useState([]);
   const apiLoading = useSelector(state => state.api.loading);

   return (
      <div className="app">
         <TopBar onUploadResponse={setMapDocument} />

         <div className="content">
            <div className="left-content">
               <header>
                  <h1>
                     <img src={Logo} alt="DiBK" />
                     <div className="header">
                        <span>GML-plankart</span>
                        <span>Fellestjenester PLAN</span>
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
               <Legends legends={legends} />
            </div>
            <div className="mid-content">
               {
                  apiLoading ?
                     <Spinner /> :
                     null

                  /*apiLoading ?
                     <img src={Spin} alt="" className="spin" /> :
                     null*/
               }
               <MapView mapDocument={mapDocument} onLegendUpdated={setLegends} />
            </div>
            <div className="right-content">
               <ValidationErrors mapDocument={mapDocument} />
            </div>
         </div>
      </div>
   );
}

export default App;
