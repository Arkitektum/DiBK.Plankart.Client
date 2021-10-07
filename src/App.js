import Logo from 'assets/gfx/logo-dibk.svg';
import { MapView, Upload } from 'components/partials';
import { useState } from 'react';
import './App.scss';
import { geoJson4 } from 'utils/map';

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
                  <Upload onResponse={setGeoJsonDocument} />
               </div>
               <div className="right-content">
                  {
                     geoJsonDocument !== null ?
                        <MapView geoJsonDocument={geoJsonDocument} /> :
                        null
                  }
               </div>
            </div>
         </div>
      </div>
   );
}

export default App;
