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
               <se:Name>RpPåskrift</se:Name>
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
                     <se:Radius>1</se:Radius>
                     <se:Fill>
                        <se:CssParameter name="fill">#ffffff</se:CssParameter>
                     </se:Fill>
                  </se:Halo>
                  <se:VendorOption name="conflictResolution">false</se:VendorOption>
               </se:TextSymbolizer>
            </se:Rule>
            <!-- For kompatibilitet med QGIS: -->            
            <se:Rule>
               <se:Name>Dummy</se:Name>
               <se:LineSymbolizer>
                  <se:Stroke>
                     <se:SvgParameter name="stroke">#000000</se:SvgParameter>
                     <se:SvgParameter name="stroke-opacity">0</se:SvgParameter>
                  </se:Stroke>
               </se:LineSymbolizer>
            </se:Rule>
         </se:FeatureTypeStyle>
      </UserStyle>
   </NamedLayer>
</StyledLayerDescriptor>