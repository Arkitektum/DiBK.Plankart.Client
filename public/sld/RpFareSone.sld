<?xml version="1.0" encoding="UTF-8"?>
<StyledLayerDescriptor xmlns="http://www.opengis.net/sld"
   xmlns:ogc="http://www.opengis.net/ogc"
   xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" version="1.1.0" xsi:schemaLocation="http://www.opengis.net/sld http://schemas.opengis.net/sld/1.1.0/StyledLayerDescriptor.xsd"
   xmlns:se="http://www.opengis.net/se"
   xmlns:xlink="http://www.w3.org/1999/xlink">
   <NamedLayer>
      <se:Name>RpFareSone</se:Name>
      <UserStyle>
         <se:Name>RpFareSone</se:Name>
         <se:FeatureTypeStyle>
            <se:Rule>
               <se:Name>RpFareSone</se:Name>
               <se:PolygonSymbolizer>
                  <se:Stroke>
                     <se:SvgParameter name="stroke">#000000</se:SvgParameter>
                     <se:SvgParameter name="stroke-width">2</se:SvgParameter>
                     <se:SvgParameter name="stroke-linejoin">bevel</se:SvgParameter>
                     <se:SvgParameter name="stroke-linecap">square</se:SvgParameter>
                     <se:SvgParameter name="stroke-dasharray">16 5 1 5</se:SvgParameter>
                  </se:Stroke>               
                  <se:Fill>
                     <se:GraphicFill>
                        <se:Graphic>
                           <se:ExternalGraphic>
                              <se:OnlineResource xlink:type="simple" xlink:href="https://dibk-plankart.azurewebsites.net/sld/gfx/rp-fare-sone.svg" />
                              <se:Format>image/svg+xml</se:Format>
                           </se:ExternalGraphic>
						  <se:Size>12</se:Size>
                           <se:Rotation>
                              <ogc:Literal>45</ogc:Literal>
                           </se:Rotation>
                        </se:Graphic>
                     </se:GraphicFill>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
         </se:FeatureTypeStyle>
      </UserStyle>
   </NamedLayer>
</StyledLayerDescriptor>
