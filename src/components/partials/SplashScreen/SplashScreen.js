import { useSelector } from "react-redux";
import Logo from 'assets/gfx/logo-dibk.svg';
import './SplashScreen.scss';
import { Spinner } from "components/custom-elements";

function SplashScreen({ mapDocument, loading }) {
   const apiLoading = useSelector(state => state.api.loading);

   if (mapDocument || apiLoading) {
      return null;
   }

   return (
      <div className="splash-screen">
         <div>
            <img src={Logo} alt="DiBK" />

            <div className="header">
               <span>GML-kart</span>
               <span>Fellestjenester PLAN</span>
            </div>
            {
               loading ?
                  <Spinner /> :
                  null
            }
         </div>

      </div>
   );
}

export default SplashScreen;