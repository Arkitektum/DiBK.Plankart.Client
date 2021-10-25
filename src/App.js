import React, { createContext, useEffect, useState } from 'react';
import { BottomBar, MapView, SplashScreen, TopBar } from 'components/partials';
import { createLegends } from 'utils/map/legend';
import './App.scss';

function App() {
   const [mapDocument, setMapDocument] = useState(null);
   const [legends, setLegends] = useState([]);
   const [loading, setLoading] = useState(true);

   useEffect(
      () => {
         async function loadLegends() {
            setLegends(await createLegends());
            setLoading(false);
         }
         
         loadLegends();
      },
      []
   );

   return (
      <LegendContext.Provider value={legends}>
         <div className="app">
            <TopBar onUploadResponse={setMapDocument} loading={loading} />
            <MapView mapDocument={mapDocument} />
            <BottomBar mapDocument={mapDocument} />
            <SplashScreen mapDocument={mapDocument} loading={loading} />
         </div>
      </LegendContext.Provider>
   );
}

export default App;
export const LegendContext = createContext([]);
