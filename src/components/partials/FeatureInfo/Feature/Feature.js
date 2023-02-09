import { Fragment } from 'react';
import { getPropertyList } from 'utils/map/feature-info';
import { getSymbolById, zoomTo, zoomToGeometry } from 'utils/map/helpers';
import './Feature.scss';

function Feature({ feature, map, legend }) {
   function getFeatureInfo(feature) {
      const propertyList = getPropertyList(feature);

      if (propertyList.size === 0) {
         return null;
      }

      const featureId = feature.get('id');
      const rows = [];

      propertyList.forEach((values, key) => {
         const value = values.join(', ');

         rows.push(
            <div className="box-row" key={`${featureId}-${key}`}>
               <div className="label capitalize" title={key}>{key}:</div>
               <div className="value" title={value}>{value}</div>
            </div>
         );
      });

      return (
         <Fragment>
            <div className="divider"></div>
            {rows.map(row => row)}
         </Fragment>
      )
   }

   function getGeometryInfo(feature) {
      let label, value;
      const area = feature.get('_area');
      const length = feature.get('_length');

      if (area) {
         label = 'Areal';
         value = area;
      } else if (length) {
         label = 'Lengde';
         value = length;
      } else {
         return null;
      }

      return (
         <div className="box-row">
            <div className="label">{label}:</div>
            <div className="value">{value}</div>
         </div>
      );
   }


   function getSymbolImage(id) {
      return getSymbolById(legend, id)?.image;
   }

   function getErrorMessages(feature) {
      const messages = feature.get('_errorMessages');

      if (!messages?.length) {
         return null;
      }

      const errors = messages.filter(message => message.type === 'ERROR');
      const warnings = messages.filter(message => message.type === 'WARNING');
      let title;
      
      if (errors.length && warnings.length) {
         title = 'Feil og advarsler';
      } else if (errors.length && !warnings.length) {
         title = 'Feil';
      } else {
         title = 'Advarsler';
      }

      return (
         <Fragment>
            <div className="divider"></div>
            <div className="error-messages">
               <h5>{title} ({messages.length}):</h5>
               <ul>
                  {
                     errors.concat(warnings).map((message, index) => {
                        return (
                           <li key={`${feature.get('id')}-error-${index}`} className={'message message-' + message.type.toLowerCase()}>
                              {message.message}
                              {
                                 message.zoomTo ?
                                    <span role="button" onClick={() => zoomToGeometry(map, message.zoomTo)}>Zoom til feil</span> :
                                    null
                              }
                           </li>
                        )
                     })
                  }
               </ul>
            </div>
         </Fragment>
      );
   }

   return (
      <div className="feature">
         <div className="feature-header">
            {
               feature.get('_symbolId') ?
                  <img src={getSymbolImage(feature.get('_symbolId'))} alt="" /> :
                  null
            }
            <span className="name">{feature.get('_name')}</span>
            <button className="zoom" onClick={() => zoomTo(map, [feature])} title="Gå til objekt"></button>
         </div>

         <div className="feature-content">
            <div className="box-row">
               <div className="label">GML-ID:</div>
               <div className="value">{feature.get('id')}</div>
            </div>

            {getGeometryInfo(feature)}

            {getFeatureInfo(feature)}

            {getErrorMessages(feature)}
         </div>
      </div>
   );
}

export default Feature;