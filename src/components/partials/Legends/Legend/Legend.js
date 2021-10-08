import { useState } from "react";

function Legend({ legend }) {
   const [expanded, setExpanded] = useState(true);

   function handleClick() {
      setExpanded(!expanded);
   }

   return (
      <div className={`legend ${!expanded ? 'legend-collapsed' : ''}`}>
         <h3 onClick={handleClick}>{legend.title}</h3>

         <div className="symbols">
            {legend.symbols.map((symbol, index) => {
               return (
                  <div className="symbol" key={'symbol-' + index}>
                     <img src={symbol.image} alt="" /><span title={symbol.title}>{symbol.title}</span>
                  </div>
               );
            })}
         </div>
      </div>
   )
}

export default Legend;