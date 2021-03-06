import { useState } from 'react';
import Legend from './Legend/Legend';
import './Legends.scss';

function Legends({ legends }) {
   const [showAll, setShowAll] = useState(false);

   if (!legends.length) {
      return null;
   }

   function handleCheckboxChange(event) {
      setShowAll(event.target.checked);
   }

   return (
      <div className={`legends box ${showAll ? 'legends-show-all' : ''}`}>
         <div className="box-header">Tegnforklaringer</div>

         <div className="box-content">
            <div className="show-all">
               <label className="checkbox">
                  <input type="checkbox" defaultChecked={false} onChange={handleCheckboxChange} />
                  <span className="checkmark"></span>Vis alle
               </label>
            </div>

            <div className="legend-list">
               {legends.map((legend, index) => <Legend legend={legend} key={'legend-' + index} />)}
            </div>
         </div>
      </div>
   );
}

export default Legends;