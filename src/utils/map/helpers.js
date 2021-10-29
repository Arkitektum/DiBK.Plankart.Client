import { extend, getCenter } from 'ol/extent';

const MAX_ZOOM = 24;

export function getLayer(map, id) {
   return map.getLayers().getArray()
      .find(layer => layer.get('id') === id);
}

export function getFeatureById(vectorLayer, id) {
   return vectorLayer.getSource().getFeatures()
      .find(feature => feature.get('id') === id);
}

export function getFeaturesByName(vectorLayer, name) {
   return vectorLayer.getSource().getFeatures()
      .filter(feature => feature.get('name') === name);
}

export function getSymbolById(legends, id) {
   return legends.flatMap(legend => legend.symbols).find(symbol => symbol.id === id);
}

export function zoomTo(map, features) {
   const featureExtent = features[0].getGeometry().getExtent();

   for (let i = 0; i < features.length; i++) {
      extend(featureExtent, features[i].getGeometry().getExtent());
   }

   const view = map.getView();
   const resolution = view.getResolutionForExtent(featureExtent);
   const zoom = view.getZoomForResolution(resolution);

   view.animate({
      center: getCenter(featureExtent),
      duration: 1000
   });

   view.animate({
      zoom: zoom <= MAX_ZOOM ? zoom : MAX_ZOOM,
      duration: 1000
   });
}

export const groupBy = (arr, criteria) => {
   return arr.reduce((obj, item) => {
      const key = typeof criteria === 'function' ? criteria(item) : item[criteria];

      if (!obj.hasOwnProperty(key)) {
         obj[key] = [];
      }

      obj[key].push(item);

      return obj;
   }, {});
};

export function debounce(func, wait, immediate) {
   let timeout;

   return function executedFunction() {
      const context = this;
      const args = arguments;

      const later = function () {
         timeout = null;

         if (!immediate) {
            func.apply(context, args);
         }
      };

      const callNow = immediate && !timeout;

      clearTimeout(timeout);

      timeout = setTimeout(later, wait);

      if (callNow) {
         func.apply(context, args);         
      }
   };
};

export const allEqual = array => array.every(value => value === array[0]);