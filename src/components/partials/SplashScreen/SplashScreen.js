import { useSelector } from "react-redux";
import Logo from 'assets/gfx/logo-dibk.svg';
import './SplashScreen.scss';

function SplashScreen({ mapDocument }) {
   const apiLoading = useSelector(state => state.api.loading);

   if (mapDocument || apiLoading) {
      return null;
   }

   return (
      <div className="splash-screen">
         <img src={Logo} alt="DiBK" />

         <div className="header">
            <span>GML-plankart</span>
            <span>Fellestjenester PLAN</span>
         </div>
      </div>
   );
}

export default SplashScreen;