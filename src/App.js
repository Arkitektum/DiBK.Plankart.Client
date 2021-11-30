import { hot } from "react-hot-loader/root";
import { createContext, useEffect, useState } from 'react';
import { useSelector } from 'react-redux';
import { CesiumMapView, SplashScreen, TopBar } from 'components/partials';
import { createLegends } from 'utils/map/legend';
import { Spinner } from 'components/custom-elements';
import './App.scss';

function App() {
   const [mapDocument, setMapDocument] = useState(null);
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
      <LegendContext.Provider value={legends}>
         <div className={`app ${apiLoading ? 'api-loading' : ''}`}>
            <TopBar onUploadResponse={setMapDocument} loading={loading} />
            <CesiumMapView show={true} />
            <SplashScreen mapDocument={mapDocument} loading={loading} />
            {
               apiLoading ?
                  <Spinner /> :
                  null
            }
         </div>
      </LegendContext.Provider>
   );
}

export default hot(App);
export const LegendContext = createContext([]);
