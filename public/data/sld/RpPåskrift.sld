<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<StyledLayerDescriptor version="1.1.0" xsi:schemaLocation="http://www.opengis.net/sld StyledLayerDescriptor.xsd"
   xmlns="http://www.opengis.net/sld"
   xmlns:ogc="http://www.opengis.net/ogc"
   xmlns:xlink="http://www.w3.org/1999/xlink"
   xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
   xmlns:se="http://www.opengis.net/se">
   <NamedLayer>
      <se:Name>RpPåskrift</se:Name>
      <UserStyle>
         <se:Name>RpPåskrift</se:Name>
         <se:FeatureTypeStyle>
            <se:Rule>
               <se:Title>RpPåskrift</se:Title>
               <se:TextSymbolizer>
                  <se:Label>
                     <ogc:PropertyName>tekststreng</ogc:PropertyName>
                  </se:Label>
                  <se:LabelPlacement>
                     <se:LinePlacement />
                  </se:LabelPlacement>
                  <se:Fill>
                     <se:CssParameter name="fill">#000000</se:CssParameter>
                  </se:Fill>
                  <se:Font>
                     <se:CssParameter name="font-size">12</se:CssParameter>
                     <se:CssParameter name="font-family">Arial</se:CssParameter>
                  </se:Font>
                  <se:Halo>
                     <se:Fill>
                        <se:CssParameter name="fill">#ffffff</se:CssParameter>
                     </se:Fill>
                  </se:Halo>
               </se:TextSymbolizer>
            </se:Rule>
         </se:FeatureTypeStyle>
      </UserStyle>
   </NamedLayer>
</StyledLayerDescriptor>