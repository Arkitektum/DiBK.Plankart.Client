import Logo from 'assets/gfx/logo-dibk.svg';
import { Legends, MapView, Upload } from 'components/partials';
import { useState } from 'react';
import './App.scss';

function App() {
   const [geoJsonDocument, setGeoJsonDocument] = useState(null);

   return (
      <div className="app">
         <div className="container">
            <header>
               <h1>
                  <img src={Logo} alt="DiBK" />Fellestjenester PLAN |<span>GML-plankart</span>
               </h1>
            </header>

            <div className="content">
               <div className="left-content">
                  <div className="upload">
                     <Upload onResponse={setGeoJsonDocument} />
                  </div>
                  <div style={{ display: geoJsonDocument !== null ? 'block' : 'none' }}>
                     <Legends />
                  </div>
               </div>
               <div className="right-content">
                  {
                     /*geoJsonDocument !== null ?*/
                     <MapView geoJsonDocument={geoJsonDocument} />
                     /*:
                     null*/
                  }
               </div>
            </div>
         </div>
      </div>
   );
}

export default App;
