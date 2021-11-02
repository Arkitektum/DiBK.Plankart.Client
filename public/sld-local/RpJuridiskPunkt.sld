<?xml version="1.0" encoding="UTF-8"?>
<StyledLayerDescriptor xmlns="http://www.opengis.net/sld"
   xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
   xmlns:ogc="http://www.opengis.net/ogc"
   xmlns:se="http://www.opengis.net/se" version="1.1.0"
   xmlns:xlink="http://www.w3.org/1999/xlink" xsi:schemaLocation="http://www.opengis.net/sld http://schemas.opengis.net/sld/1.1.0/StyledLayerDescriptor.xsd">
   <NamedLayer>
      <se:Name>RpJuridiskPunkt</se:Name>
      <UserStyle>
         <se:Name>RpJuridiskPunkt</se:Name>
         <se:FeatureTypeStyle>
            <se:Rule>
               <se:Name>1231 - Vegstengning/fysisk kjøresperre</se:Name>
               <se:Description>
                  <se:Title>1231 - Vegstengning/fysisk kjøresperre</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>juridiskpunkt</ogc:PropertyName>
                     <ogc:Literal>1231</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PointSymbolizer>
                  <se:Graphic>
                     <se:Mark>
                        <se:WellKnownName>ttf://Wingdings#0xE7</se:WellKnownName>
                     </se:Mark>
                     <se:Size>18</se:Size>
                     <se:Rotation>
                        <ogc:Literal>0</ogc:Literal>
                     </se:Rotation>
                  </Graphic>
               </PointSymbolizer>
            </se:Rule>
         </se:FeatureTypeStyle>
      </UserStyle>
   </NamedLayer>
</StyledLayerDescriptor>
