import { useEffect, useMemo, useRef, useState } from 'react';
import './FeatureContextMenu.scss';

function FeatureContextMenu({ map, data, onFeatureSelect }) {
   const [visible, setVisible] = useState(false);
   const menuElement = useRef(null);

   const { handleClickOutside, closeMenu } = useMemo(
      () => {
         function handleClickOutside(event) {
            if (menuElement.current && !menuElement.current.contains(event.target)) {
               closeMenu();
            }
         }

         function closeMenu() {
            document.removeEventListener('mousedown', handleClickOutside);
            data.features.clear();
            setVisible(false);
         }

         return { handleClickOutside, closeMenu };
      },
      [data]
   );

   useEffect(
      () => {
         if (!map || !data) {
            return;
         }

         setVisible(true);
         map.once('movestart', () => closeMenu());
         document.addEventListener('mousedown', handleClickOutside);
      },
      [map, data, handleClickOutside, closeMenu]
   );

   function handleFeatureSelect(feature) {
      onFeatureSelect([feature]);
      closeMenu();
   }

   if (!data) {
      return null;
   }

   return (
      <div
         ref={menuElement}
         className={`feature-context-menu ${visible ? 'feature-context-menu-visible' : ''}`}
         style={{ top: `${data.top || 0}px`, left: `${data.left || 0}px` }}
      >
         {
            data.features.getArray().map(feature => {
               return (
                  <div className="feature" onClick={() => handleFeatureSelect(feature)} key={feature.get('id')}>
                     {feature.get('legend') ? <img src={feature.get('legend').image} alt="" /> : <span className="no-legend" />}
                     <span className="label">{feature.get('label')}</span>
                  </div>
               );
            })
         }
      </div>
   )
}

export default FeatureContextMenu;