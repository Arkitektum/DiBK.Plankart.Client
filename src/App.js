import Logo from 'assets/gfx/logo-dibk.svg';
import { MapView, Upload } from 'components/partials';
import { useState } from 'react';
import './App.scss';
import { geoJson1 } from 'utils/map';

function App() {
   const [geoJsonDocument, setGeoJsonDocument] = useState(geoJson1);

   return (
      <div className="app">
         <div className="container">
            <header>
               <h1>
                  <img src={Logo} alt="DiBK" />Fellestjenester PLAN |<span>Plankart</span>
               </h1>
            </header>

            <div className="section">
               <Upload onResponse={setGeoJsonDocument} />
            </div>

            <div className="section">
               <MapView geoJsonDocument={geoJsonDocument} />
            </div>
         </div>
      </div>
   );
}

export default App;
