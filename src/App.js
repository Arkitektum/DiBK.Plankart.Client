import { createContext, useEffect, useState } from 'react';
import { useSelector } from 'react-redux';
import { MapView, SplashScreen, TopBar } from 'components/partials';
import { createLegends } from 'utils/map/legend';
import { Spinner } from 'components/custom-elements';
import './App.scss';
import MapContext from 'context/MapContext';


function App() {
   const [mapDocument, setMapDocument] = useState(null);
   const [ol3dMap, setOl3dMap] = useState(null);
   const [legends, setLegends] = useState([]);
   const [loading, setLoading] = useState(true);
   const apiLoading = useSelector(state => state.api.loading);

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
      <MapContext.Provider value={[ol3dMap, setOl3dMap]}>
         <LegendContext.Provider value={legends}>
            <div className={`app ${apiLoading ? 'api-loading' : ''}`}>
               <TopBar onUploadResponse={setMapDocument} loading={loading} />
               <MapView mapDocument={mapDocument} />
               <SplashScreen mapDocument={mapDocument} loading={loading} />
               {
                  apiLoading ?
                     <Spinner /> :
                     null
               }
            </div>
         </LegendContext.Provider>
      </MapContext.Provider>
   );
}

export default App;
export const LegendContext = createContext([]);
