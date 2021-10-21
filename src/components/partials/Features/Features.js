import { LegendContext } from 'App';
import featureMembers from 'config/plankart.config';
import { useContext } from 'react';
import { getSymbolById, zoomTo } from 'utils/map/helpers';
import './Features.scss';

function Features({ map, features }) {
   const legends = useContext(LegendContext);

   if (!map || !features.length) {
      return null;
   }

   function getFeatureInfo(feature) {
      const featureMember = featureMembers.find(member => member.name === feature.get('name'));
      const infoProps = featureMember?.infoProps;

      if (!infoProps?.length) {
         return null;
      }

      return (
         infoProps.map((prop) => {
            return (
               <div className="info-row" key={`${feature.get('id')}-${prop}`}>
                  <div className="label capitalize">{prop}:</div>
                  <div className="value">{feature.get(prop)}</div>
               </div>
            );
         })
      );
   }

   function getSymbolImage(id) {
      return getSymbolById(legends, id)?.image;
   }

   function getErrorMessages(feature) {
      const errorMessages = feature.get('errorMessages');

      if (!errorMessages?.length) {
         return null;
      }

      return (
         <div className="error-messages">
            <h5>Valideringsfeil:</h5>
            <ol>
               {errorMessages.map((message, index) => <li key={`${feature.get('id')}-error-${index}`}>{message}</li>)}
            </ol>
         </div>
      );
   }

   return (
      <div className="feature-info">
         {features.map(feature => {
            return (
               <div className="feature" key={feature.get('id')}>
                  <div className="header">
                     {
                        feature.get('symbolId') ?
                           <img src={getSymbolImage(feature.get('symbolId'))} alt="" /> :
                           null
                     }
                     <span className="name">{feature.get('name')}</span>
                     <button className="zoom" onClick={() => zoomTo(map, [feature])} title="Gå til objekt"></button>
                  </div>

                  <div className="info-row">
                     <div className="label">GML-ID:</div>
                     <div className="value">{feature.get('id')}</div>
                  </div>

                  {getFeatureInfo(feature)}

                  {getErrorMessages(feature)}
               </div>
            );
         })}
      </div>
   );
}

export default Features;