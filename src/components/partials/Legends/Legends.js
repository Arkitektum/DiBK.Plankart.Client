import { useState } from 'react';
import { useEffect } from 'react';
import { createLegends } from 'utils/legend-generator/legend-generator';
import Legend from './Legend/Legend';
import './Legends.scss';

const SLDs = ['RpOmråde', 'RpArealformålOmråde', 'RpBestemmelseOmråde', 'RpFareSone'];

function Legends() {
   const [legends, setLegends] = useState([]);

   useEffect(() => {
      createLegends(SLDs)
         .then(keys => {
            setLegends(keys);
         });
   }, []);

   return (
      <div className="legends">
         {
            legends.map((legend, index) => <Legend legend={legend} key={'legend-' + index} />)
         }
      </div>
   );
}

export default Legends;