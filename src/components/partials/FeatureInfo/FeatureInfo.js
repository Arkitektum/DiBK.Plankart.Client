import React, { useContext, useEffect, useState } from 'react';
import { useDispatch, useSelector } from 'react-redux';
import { toggleFeatureInfo } from 'store/slices/mapSlice';
import { getSymbolById, zoomTo, zoomToGeometry } from 'utils/map/helpers';
import { LegendContext } from 'App';
import featureMembers from 'config/features.config';
import './FeatureInfo.scss';

function FeatureInfo({ map, features }) {
   const [expanded, setExpanded] = useState(false);
   const legends = useContext(LegendContext);
   const featureInfo = useSelector(state => state.map.featureInfo);
   const dispatch = useDispatch();

   useEffect(
      () => {
         setExpanded(featureInfo.expanded);
      },
      [featureInfo]
   );

   function toggle() {
      dispatch(toggleFeatureInfo({ expanded: !expanded }));
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
               <div className="box-row" key={`${feature.get('id')}-${prop}`}>
                  <div className="label capitalize">{prop}:</div>
                  <div className="value">{feature.get(prop)}</div>
               </div>
            );
         })
      );
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
               {errorMessages.map((message, index) => {
                  return (
                     <li key={`${feature.get('id')}-error-${index}`}>
                        {message.message}
                        {
                           message.zoomTo ?
                              <span role="button" onClick={() => zoomToGeometry(map, message.zoomTo)}>Zoom til feil</span> :
                              null
                        }
                     </li>
                  )
               })}
            </ol>
         </div>
      );
   }

   if (!map || !features.length) {
      return null;
   }

   return (
      <div className={`feature-info box ${expanded ? 'box-expanded' : ''}`}>
         <div className="box-header expand-button" role="button" onClick={toggle}>Objekt</div>

         <div className="box-content">
            {
               features.map(feature => {
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

                        <div className="box-row">
                           <div className="label">GML-ID:</div>
                           <div className="value">{feature.get('id')}</div>
                        </div>

                        {getFeatureInfo(feature)}

                        {getGeometryInfo(feature)}

                        {getErrorMessages(feature)}
                     </div>
                  );
               })
            }
         </div>
      </div>
   );
}

export default FeatureInfo;