import { useEffect, useRef, useState } from 'react';
import { getFeatureById, getLayer, zoomTo } from 'utils/map/helpers';
import { Rule } from 'components/partials';
import './ValidationErrors.scss';

function ValidationErrors({ map, validationResult, onMessageClick }) {
   const [expanded, setExpanded] = useState(false);
   const validationResultId = useRef(null);
   const rules = validationResult?.rules || [];
   const errors = rules.filter(rule => rule.messageType === 'ERROR') || [];
   const warnings = rules.filter(rule => rule.messageType === 'WARNING') || [];

   useEffect(
      () => {
         if (validationResult?.Id !== validationResultId.current) {
            setExpanded(false);
         }
      },
      [validationResult]
   );

   function toggle() {
      setExpanded(!expanded);
   }

   function handleMessageClick(gmlIds) {
      const featureLayer = getLayer(map, 'features');
      const features = gmlIds.map(gmlId => getFeatureById(featureLayer, gmlId));

      onMessageClick(features);
      zoomTo(map, features);
   }

   function getTitle() {
      if (errors.length && warnings.length) {
         return 'Feil og advarsler';
      } else if (errors.length && !warnings.length) {
         return 'Feil';
      }
      return 'Advarsler';
   }

   function getErrorCount() {
      return rules.flatMap(rule => rule.messages).length;
   }

   if (!rules.length) {
      return null;
   }

   return (
      <div className={`validation-errors box ${expanded ? 'box-expanded' : ''}`}>
         <div className="box-header expand-button" role="button" onClick={toggle}>{getTitle()} ({getErrorCount()})</div>
         <div className="warning"></div>
         <div className="box-content">
            <div className="rules">
               {errors.map((rule, index) => <Rule key={'rule-error-' + index} rule={rule} onMessageClick={handleMessageClick} />)}
               {warnings.map((rule, index) => <Rule key={'rule-warning-' + index} rule={rule} onMessageClick={handleMessageClick} />)}
            </div>
         </div>
      </div>
   );
}

export default ValidationErrors;