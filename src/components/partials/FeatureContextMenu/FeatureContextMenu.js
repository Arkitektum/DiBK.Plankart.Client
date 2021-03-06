import { LegendContext } from 'App';
import { DEVICE_PIXEL_RATIO } from 'ol/has';
import { useContext, useEffect, useLayoutEffect, useMemo, useRef, useState } from 'react';
import { getSymbolById } from 'utils/map/helpers';
import './FeatureContextMenu.scss';

function FeatureContextMenu({ map, data, onFeatureSelect }) {
   const legends = useContext(LegendContext);
   const [visible, setVisible] = useState(false);
   const [posistion, setPosition] = useState({ top: 0, left: 0 });
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

   useLayoutEffect(
      () => {
         if (visible) {
            let top, left;
            const dataLeft = data.left / DEVICE_PIXEL_RATIO;
            const dataTop = data.top / DEVICE_PIXEL_RATIO;

            if (dataLeft + menuElement.current.offsetWidth > map.getTarget().clientWidth) {
               left = dataLeft - menuElement.current.offsetWidth;
            } else {
               left = dataLeft;
            }

            if (dataTop + menuElement.current.offsetHeight > map.getTarget().clientHeight) {
               top = dataTop - menuElement.current.offsetHeight;
            } else {
               top = dataTop;
            }

            setPosition({ top, left });
         }
      },
      [visible, data, map]
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

   function getSymbol(feature) {
      return (
         feature.get('_symbolId') ?
            <img src={getSymbolById(legends, feature.get('_symbolId'))?.image} alt="" /> :
            <span className="no-legend" />
      );
   }

   if (!data) {
      return null;
   }

   return (
      <div
         ref={menuElement}
         className={`feature-context-menu ${visible ? 'feature-context-menu-visible' : ''}`}
         style={{ top: `${posistion.top || 0}px`, left: `${posistion.left || 0}px` }}
      >
         {
            data.features.getArray().map(feature => {
               return (
                  <div className="feature" onClick={() => handleFeatureSelect(feature)} key={feature.get('id')}>
                     {getSymbol(feature)}
                     <span className="label">{feature.get('_label')}</span>
                  </div>
               );
            })
         }
      </div>
   )
}

export default FeatureContextMenu;