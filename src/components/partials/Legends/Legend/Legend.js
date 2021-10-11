import { useState } from "react";

function Legend({ legend }) {
   const [expanded, setExpanded] = useState(true);

   function handleClick() {
      setExpanded(!expanded);
   }

   return (
      <div className={`legend ${!expanded ? 'legend-collapsed' : ''} ${legend.hidden ? 'legend-hidden' : ''}`}>
         <h3 onClick={handleClick}>{legend.name}</h3>

         <div className="symbols">
            {legend.symbols.map((symbol, index) => {
               return (
                  <div className={`symbol ${symbol.hidden ? 'symbol-hidden' : ''}`} key={'symbol-' + index}>
                     <img src={symbol.image} alt="" /><span title={symbol.rule.name}>{symbol.rule.name}</span>
                  </div>
               );
            })}
         </div>
      </div>
   )
}

export default Legend;