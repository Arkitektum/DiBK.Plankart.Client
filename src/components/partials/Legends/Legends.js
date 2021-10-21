import { useState } from 'react';
import { Button } from 'react-bootstrap';
import Legend from './Legend/Legend';
import './Legends.scss';

function Legends({ legends }) {
   const [showAll, setShowAll] = useState(false);
   const [expanded, setExpanded] = useState(false);

   if (!legends.length) {
      return null;
   }

   function toggle() {
      setExpanded(!expanded);
   }

   function handleCheckboxChange(event) {
      setShowAll(event.target.checked);
   }

   return (
      <div className={`legends ${showAll ? 'legends-show-all' : ''} ${expanded ? 'panel-expanded' : ''}`}>
         <Button className="expand-button" variant="link" onClick={toggle}>Tegnforklaringer</Button>

         <div className="content">
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