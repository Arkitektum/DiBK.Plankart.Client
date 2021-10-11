import Legend from './Legend/Legend';
import './Legends.scss';

function Legends({ legends }) {
   if (!legends.length) {
      return null;
   }

   return (
      <div className="legends">
         {legends.map((legend, index) => <Legend legend={legend} key={'legend-' + index} />)}
      </div>
   );
}

export default Legends;