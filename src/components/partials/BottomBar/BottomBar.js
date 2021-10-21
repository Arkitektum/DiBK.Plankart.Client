import React from 'react';
import './BottomBar.scss';

function BottomBar({ mapDocument }) {
   return (
      <div className="bottom-bar">
         {
            mapDocument !== null ?
               <React.Fragment>
                  <span className="name">{mapDocument?.name || 'Ikke angitt'}</span>
                  <span className="id">ID: {mapDocument?.id || 'Ikke angitt'}</span>
                  <span className="epsg">{mapDocument?.epsg}</span>
               </React.Fragment> :
               null
         }
      </div>
   )
}

export default BottomBar;