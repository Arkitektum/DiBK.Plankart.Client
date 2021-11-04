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
               <se:Name>1271 - Eksisterende tre som skal bevares</se:Name>
               <se:Description>
                  <se:Title>1271 - Eksisterende tre som skal bevares</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>juridiskpunkt</ogc:PropertyName>
                     <ogc:Literal>1271</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PointSymbolizer>
                  <se:Graphic>
                     <se:ExternalGraphic>
                        <se:OnlineResource xlink:type="simple" xlink:href="http://localhost:3000/sld-local/gfx/rp-juridisk-punkt-1271.svg" />
                        <se:Format>image/svg+xml</se:Format>
                     </se:ExternalGraphic>
                     <se:Size>25</se:Size>
                  </se:Graphic>
               </se:PointSymbolizer>
            </se:Rule>   
            <se:Rule>
               <se:Name>1272 - Regulert nytt tre</se:Name>
               <se:Description>
                  <se:Title>1272 - Regulert nytt tre</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>juridiskpunkt</ogc:PropertyName>
                     <ogc:Literal>1272</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PointSymbolizer>
                  <se:Graphic>
                     <se:ExternalGraphic>
                        <se:OnlineResource xlink:type="simple" xlink:href="http://localhost:3000/sld-local/gfx/rp-juridisk-punkt-1272.svg" />
                        <se:Format>image/svg+xml</se:Format>
                     </se:ExternalGraphic>
                     <se:Size>25</se:Size>
                  </se:Graphic>
               </se:PointSymbolizer>
            </se:Rule>     
         </se:FeatureTypeStyle>
      </UserStyle>
   </NamedLayer>
</StyledLayerDescriptor>
