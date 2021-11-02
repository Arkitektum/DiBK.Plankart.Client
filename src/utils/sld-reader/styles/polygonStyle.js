import { toContext } from 'ol/render';
import { Style, Fill } from 'ol/style';
import { Polygon, MultiPolygon } from 'ol/geom';
import { DEVICE_PIXEL_RATIO } from 'ol/has';
import { IMAGE_LOADING, IMAGE_LOADED, IMAGE_ERROR } from '../constants';
import { memoizeStyleFunction } from './styleUtils';
import { getCachedImage, getImageLoadingState } from '../imageCache';
import { imageLoadingPolygonStyle, imageErrorPolygonStyle } from './static';
import { getSimpleStroke, getSimpleFill } from './simpleStyles';
import { getGraphicStrokeRenderer } from './graphicStrokeStyle';

function createPattern(graphic) {
   const { image, width, height } = getCachedImage(
      graphic.externalgraphic.onlineresource
   );

   const canvas = document.createElement('canvas');

   const context = canvas.getContext('2d');

   let imageRatio = DEVICE_PIXEL_RATIO;

   if (graphic.size && height !== graphic.size) {
      imageRatio *= graphic.size / height;
   }

   if (imageRatio === 1) {
      return createAndRotatePattern(context, image, graphic);
   }

   const tempCanvas = document.createElement('canvas');
   const tCtx = tempCanvas.getContext('2d');

   tempCanvas.width = width * imageRatio;
   tempCanvas.height = height * imageRatio;

   tCtx.drawImage(
      image,
      0, 0, width, height,
      0, 0, width * imageRatio, height * imageRatio
   );

   return createAndRotatePattern(context, tempCanvas, graphic);
}

function createAndRotatePattern(context, imageOrCanvas, graphic) {
   const pattern = context.createPattern(imageOrCanvas, 'repeat');

   if (graphic.rotation) {
      const matrix = new DOMMatrix();
      pattern.setTransform(matrix.rotate(graphic.rotation));
   }

   return pattern;
}

function getExternalGraphicFill(symbolizer) {
   const { graphic } = symbolizer.fill.graphicfill;
   const fillImageUrl = graphic.externalgraphic.onlineresource;

   switch (getImageLoadingState(fillImageUrl)) {
      case IMAGE_LOADED:
         return new Fill({
            color: createPattern(symbolizer.fill.graphicfill.graphic),
         });
      case IMAGE_LOADING:
         return imageLoadingPolygonStyle.getFill();
      case IMAGE_ERROR:
         return imageErrorPolygonStyle.getFill();
      default:
         return imageLoadingPolygonStyle.getFill();
   }
}

function polygonStyle(symbolizer) {
   const fillImageUrl =
      symbolizer.fill &&
      symbolizer.fill.graphicfill &&
      symbolizer.fill.graphicfill.graphic &&
      symbolizer.fill.graphicfill.graphic.externalgraphic &&
      symbolizer.fill.graphicfill.graphic.externalgraphic.onlineresource;

   const polygonFill = fillImageUrl
      ? getExternalGraphicFill(symbolizer)
      : getSimpleFill(symbolizer.fill);

   // When a polygon has a GraphicStroke, use a custom renderer to combine
   // GraphicStroke with fill. This is needed because a custom renderer
   // ignores any stroke, fill and image present in the style.
   if (symbolizer.stroke && symbolizer.stroke.graphicstroke) {
      const renderGraphicStroke = getGraphicStrokeRenderer(symbolizer);
      return new Style({
         renderer: (pixelCoords, renderState) => {
            // First render the fill (if any).
            if (polygonFill) {
               const { feature, context } = renderState;
               const render = toContext(context);
               render.setFillStrokeStyle(polygonFill, undefined);
               const geometryType = feature.getGeometry().getType();
               if (geometryType === 'Polygon') {
                  render.drawPolygon(new Polygon(pixelCoords));
               } else if (geometryType === 'MultiPolygon') {
                  render.drawMultiPolygon(new MultiPolygon(pixelCoords));
               }
            }

            // Then, render the graphic stroke.
            renderGraphicStroke(pixelCoords, renderState);
         },
      });
   }

   const polygonStroke = getSimpleStroke(symbolizer.stroke);

   return new Style({
      fill: polygonFill,
      stroke: polygonStroke,
   });
}

const cachedPolygonStyle = memoizeStyleFunction(polygonStyle);

/**
 * @private
 * Get an OL line style instance for a feature according to a symbolizer.
 * @param {object} symbolizer SLD symbolizer object.
 * @returns {ol/Style} OpenLayers style instance.
 */
function getPolygonStyle(symbolizer) {
   return cachedPolygonStyle(symbolizer);
}

export default getPolygonStyle;
