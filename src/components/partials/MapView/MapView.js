import Logo from 'assets/gfx/logo-dibk.svg';
import { Spinner } from 'components/custom-elements';
import { FeatureContextMenu, Features, Legends, ValidationErrors } from 'components/partials';
import featureMembers from 'config/plankart.config';
import { ZoomToExtent } from 'ol/control';
import { click } from 'ol/events/condition';
import { Select } from 'ol/interaction';
import React, { useCallback, useEffect, useRef, useState } from 'react';
import { useSelector } from 'react-redux';
import { createLegends, filterLegends } from 'utils/legend-generator/legend-generator';
import { addLegendToFeatures, highlightSelectedFeatures, toggleFeatures } from 'utils/map/features';
import { getLayer } from 'utils/map/helpers';
import { createMap } from 'utils/map/map';
import './MapView.scss';

function MapView({ mapDocument }) {
   const [map, setMap] = useState(null);
   const [contextMenuData, setContextMenuData] = useState(null);
   const [features, setFeatures] = useState([]);
   const [selectedFeatures, setSelectedFeatures] = useState([]);
   const [legends, setLegends] = useState([]);
   const [filteredLegends, setFilteredLegends] = useState([]);
   const apiLoading = useSelector(state => state.api.loading);
   const legend = useSelector(state => state.legend);
   const mapElement = useRef();

   useEffect(
      () => {
         const members = featureMembers
            .filter(member => member.showLegend)
            .map(member => member.name);

         createLegends(members)
            .then(legs => {
               setLegends(legs);
            });
      },
      []
   );

   useEffect(
      () => {
         if (!features.length || !legends.length) {
            return;
         }

         addLegendToFeatures(features, legends);
         setFilteredLegends(filterLegends(legends, features));
      },
      [features, legends]
   );

   useEffect(
      () => {
         if (!legend.name) {
            return;
         }

         toggleFeatures(legend, map);
      },
      [legend, map]
   );

   useEffect(
      () => {
         if (!mapDocument) {
            return;
         }

         createMap(mapDocument)
            .then(olMap => {
               setMap(olMap);

               const vectorLayer = getLayer(olMap, 'features');
               setFeatures(vectorLayer.getSource().getFeatures());
            });
      },
      [mapDocument]
   );

   const selectFeature = useCallback(
      features => {
         highlightSelectedFeatures(map, features);
         setSelectedFeatures([...features]);
      },
      [map]
   );

   useEffect(
      () => {
         if (!map) {
            return;
         }

         map.setTarget(mapElement.current);

         const vectorLayer = getLayer(map, 'features');
         const extent = vectorLayer.getSource().getExtent();
         const view = map.getView();

         view.fit(extent, map.getSize());
         view.setMinZoom(6);
         view.setMaxZoom(18);

         map.addControl(new ZoomToExtent({ extent }));

         const selectClick = new Select({
            condition: click,
            layers: layer => layer.get('id') === 'features',
            multi: true,
            style: null
         });

         map.addInteraction(selectClick);

         selectClick.on('select', event => {
            const features = event.target.getFeatures();

            if (features.getLength() === 1) {
               selectFeature(features.getArray());
            } else if (features.getLength() > 1) {
               const originalEvent = event.mapBrowserEvent.originalEvent;
               setContextMenuData({ left: originalEvent.offsetX, top: originalEvent.offsetY, features });
            }
         });

         return () => {
            map.dispose();
         }
      },
      [map, selectFeature]
   );

   return (
      <div className="content">
         <div className="left-content">
            <div className="top">
               <header>
                  <h1>
                     <img src={Logo} alt="DiBK" />
                     <div className="header">
                        <span>GML-plankart</span>
                        <span>Fellestjenester PLAN</span>
                     </div>
                  </h1>
               </header>
            </div>

            <Legends legends={filteredLegends} />
         </div>

         <div className="mid-content">
            {
               apiLoading ?
                  <Spinner /> :
                  null
            }

            <div className={`map-container ${selectedFeatures.length ? 'with-feature-info' : ''}`}>
               <div ref={mapElement} className="map"></div>
            </div>

            <FeatureContextMenu map={map} data={contextMenuData} onFeatureSelect={selectFeature} />
         </div>

         <div className="right-content">
            <Features map={map} features={selectedFeatures} />
            <ValidationErrors map={map} validationResult={mapDocument?.validationResult} onMessageClick={selectFeature} />
         </div>
      </div>
   );
}

export default MapView;