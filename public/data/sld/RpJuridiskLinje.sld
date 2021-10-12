<?xml version="1.0" encoding="UTF-8"?>
<StyledLayerDescriptor xmlns="http://www.opengis.net/sld"
   xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
   xmlns:ogc="http://www.opengis.net/ogc"
   xmlns:se="http://www.opengis.net/se" version="1.1.0"
   xmlns:xlink="http://www.w3.org/1999/xlink" xsi:schemaLocation="http://www.opengis.net/sld http://schemas.opengis.net/sld/1.1.0/StyledLayerDescriptor.xsd">
   <NamedLayer>
      <se:Name>RpJuridiskLinje</se:Name>
      <UserStyle>
         <se:Name>RpJuridiskLinje</se:Name>
         <se:FeatureTypeStyle>
            <se:Rule>
               <se:Name>Regulert tomtegrense</se:Name>
               <se:Description>
                  <se:Title>Regulert tomtegrense</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>juridisklinje</ogc:PropertyName>
                     <ogc:Literal>1203</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:LineSymbolizer>
                  <se:Stroke>
                     <se:SvgParameter name="stroke">#000000</se:SvgParameter>
                     <se:SvgParameter name="stroke-width">1</se:SvgParameter>
                     <se:SvgParameter name="stroke-linejoin">bevel</se:SvgParameter>
                     <se:SvgParameter name="stroke-linecap">square</se:SvgParameter>
                  </se:Stroke>
               </se:LineSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>Eiendomsgrense som skal oppheves</se:Name>
               <se:Description>
                  <se:Title>Eiendomsgrense som skal oppheves</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>juridisklinje</ogc:PropertyName>
                     <ogc:Literal>1204</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:LineSymbolizer>
                  <se:Stroke>
                     <se:SvgParameter name="stroke">#000000</se:SvgParameter>
                     <se:SvgParameter name="stroke-width">1</se:SvgParameter>
                     <se:SvgParameter name="stroke-linejoin">bevel</se:SvgParameter>
                     <se:SvgParameter name="stroke-linecap">square</se:SvgParameter>
                     <se:SvgParameter name="stroke-dasharray">7 5</se:SvgParameter>
                  </se:Stroke>
               </se:LineSymbolizer>
               <se:LineSymbolizer>
                  <se:Stroke>
                     <se:GraphicStroke>
                        <se:Graphic>
                           <se:Mark>
                              <se:OnlineResource xlink:type="simple" xlink:href="ttf://Sk_PBL-symboler"/>
                              <se:Format>ttf</se:Format>
                              <se:MarkIndex>82</se:MarkIndex>
                              <se:Fill>
                                 <se:SvgParameter name="fill">#000000</se:SvgParameter>
                              </se:Fill>
                           </se:Mark>
                           <se:Size>14</se:Size>
                        </se:Graphic>
                        <se:Gap>
                           <ogc:Literal>29</ogc:Literal>
                        </se:Gap>
                     </se:GraphicStroke>
                  </se:Stroke>
               </se:LineSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>Bygg, kulturminner, mm som skal bevares</se:Name>
               <se:Description>
                  <se:Title>Bygg, kulturminner, mm som skal bevares</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>juridisklinje</ogc:PropertyName>
                     <ogc:Literal>1210</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:LineSymbolizer>
                  <se:Stroke>
                     <se:SvgParameter name="stroke">#000000</se:SvgParameter>
                     <se:SvgParameter name="stroke-width">4</se:SvgParameter>
                     <se:SvgParameter name="stroke-linejoin">bevel</se:SvgParameter>
                     <se:SvgParameter name="stroke-linecap">square</se:SvgParameter>
                  </se:Stroke>
               </se:LineSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>Byggegrense</se:Name>
               <se:Description>
                  <se:Title>Byggegrense</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>juridisklinje</ogc:PropertyName>
                     <ogc:Literal>1211</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:LineSymbolizer>
                  <se:Stroke>
                     <se:SvgParameter name="stroke">#000000</se:SvgParameter>
                     <se:SvgParameter name="stroke-width">1</se:SvgParameter>
                     <se:SvgParameter name="stroke-linejoin">bevel</se:SvgParameter>
                     <se:SvgParameter name="stroke-linecap">square</se:SvgParameter>
                     <se:SvgParameter name="stroke-dasharray">14 7</se:SvgParameter>
                  </se:Stroke>
               </se:LineSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>1212 ???</se:Name>
               <se:Description>
                  <se:Title>1212 ???</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>juridisklinje</ogc:PropertyName>
                     <ogc:Literal>1212</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:LineSymbolizer>
                  <se:Stroke>
                     <se:SvgParameter name="stroke">#2259e4</se:SvgParameter>
                     <se:SvgParameter name="stroke-width">1</se:SvgParameter>
                     <se:SvgParameter name="stroke-linejoin">bevel</se:SvgParameter>
                     <se:SvgParameter name="stroke-linecap">square</se:SvgParameter>
                  </se:Stroke>
               </se:LineSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>Planlagt bebyggelse</se:Name>
               <se:Description>
                  <se:Title>Planlagt bebyggelse</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>juridisklinje</ogc:PropertyName>
                     <ogc:Literal>1213</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:LineSymbolizer>
                  <se:Stroke>
                     <se:SvgParameter name="stroke">#000000</se:SvgParameter>
                     <se:SvgParameter name="stroke-width">1</se:SvgParameter>
                     <se:SvgParameter name="stroke-linejoin">bevel</se:SvgParameter>
                     <se:SvgParameter name="stroke-linecap">square</se:SvgParameter>
                  </se:Stroke>
               </se:LineSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>Bebyggelse som inngår i planen </se:Name>
               <se:Description>
                  <se:Title>Bebyggelse som inngår i planen </se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>juridisklinje</ogc:PropertyName>
                     <ogc:Literal>1214</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:LineSymbolizer>
                  <se:Stroke>
                     <se:SvgParameter name="stroke">#000000</se:SvgParameter>
                     <se:SvgParameter name="stroke-width">2</se:SvgParameter>
                     <se:SvgParameter name="stroke-linejoin">bevel</se:SvgParameter>
                     <se:SvgParameter name="stroke-linecap">square</se:SvgParameter>
                  </se:Stroke>
               </se:LineSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>Bebyggelse som forutsettes fjernet</se:Name>
               <se:Description>
                  <se:Title>Bebyggelse som forutsettes fjernet</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>juridisklinje</ogc:PropertyName>
                     <ogc:Literal>1215</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:LineSymbolizer>
                  <se:Stroke>
                     <se:SvgParameter name="stroke">#000000</se:SvgParameter>
                     <se:SvgParameter name="stroke-width">1</se:SvgParameter>
                     <se:SvgParameter name="stroke-linejoin">bevel</se:SvgParameter>
                     <se:SvgParameter name="stroke-linecap">square</se:SvgParameter>
                     <se:SvgParameter name="stroke-dasharray">7 7</se:SvgParameter>
                  </se:Stroke>
               </se:LineSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>Regulert senterlinje</se:Name>
               <se:Description>
                  <se:Title>Regulert senterlinje</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>juridisklinje</ogc:PropertyName>
                     <ogc:Literal>1221</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:LineSymbolizer>
                  <se:Stroke>
                     <se:SvgParameter name="stroke">#000000</se:SvgParameter>
                     <se:SvgParameter name="stroke-width">1</se:SvgParameter>
                     <se:SvgParameter name="stroke-linejoin">bevel</se:SvgParameter>
                     <se:SvgParameter name="stroke-linecap">square</se:SvgParameter>
                     <se:SvgParameter name="stroke-dasharray">29 7 1 7</se:SvgParameter>
                  </se:Stroke>
               </se:LineSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>Frisiktlinje</se:Name>
               <se:Description>
                  <se:Title>Frisiktlinje</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>juridisklinje</ogc:PropertyName>
                     <ogc:Literal>1222</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:LineSymbolizer>
                  <se:Stroke>
                     <se:SvgParameter name="stroke">#000000</se:SvgParameter>
                     <se:SvgParameter name="stroke-width">1</se:SvgParameter>
                     <se:SvgParameter name="stroke-linejoin">bevel</se:SvgParameter>
                     <se:SvgParameter name="stroke-linecap">square</se:SvgParameter>
                     <se:SvgParameter name="stroke-dasharray">7 4</se:SvgParameter>
                  </se:Stroke>
               </se:LineSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>Regulert kant kjørebane </se:Name>
               <se:Description>
                  <se:Title>Regulert kant kjørebane </se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>juridisklinje</ogc:PropertyName>
                     <ogc:Literal>1223</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:LineSymbolizer>
                  <se:Stroke>
                     <se:SvgParameter name="stroke">#000000</se:SvgParameter>
                     <se:SvgParameter name="stroke-width">1</se:SvgParameter>
                     <se:SvgParameter name="stroke-linejoin">bevel</se:SvgParameter>
                     <se:SvgParameter name="stroke-linecap">square</se:SvgParameter>
                     <se:SvgParameter name="stroke-dasharray">14 4 4 4</se:SvgParameter>
                  </se:Stroke>
               </se:LineSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>Regulert kjørefelt</se:Name>
               <se:Description>
                  <se:Title>Regulert kjørefelt</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>juridisklinje</ogc:PropertyName>
                     <ogc:Literal>1224</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:LineSymbolizer>
                  <se:Stroke>
                     <se:SvgParameter name="stroke">#000000</se:SvgParameter>
                     <se:SvgParameter name="stroke-width">1</se:SvgParameter>
                     <se:SvgParameter name="stroke-linejoin">bevel</se:SvgParameter>
                     <se:SvgParameter name="stroke-linecap">square</se:SvgParameter>
                     <se:SvgParameter name="stroke-dasharray">9 7 1 7</se:SvgParameter>
                  </se:Stroke>
               </se:LineSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>Regulert parkeringsfelt</se:Name>
               <se:Description>
                  <se:Title>Regulert parkeringsfelt</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>juridisklinje</ogc:PropertyName>
                     <ogc:Literal>1225</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:LineSymbolizer>
                  <se:Stroke>
                     <se:SvgParameter name="stroke">#000000</se:SvgParameter>
                     <se:SvgParameter name="stroke-width">1</se:SvgParameter>
                     <se:SvgParameter name="stroke-linejoin">bevel</se:SvgParameter>
                     <se:SvgParameter name="stroke-linecap">square</se:SvgParameter>
                     <se:SvgParameter name="stroke-dasharray">5 4</se:SvgParameter>
                  </se:Stroke>
               </se:LineSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>Regulert fotgjengerfelt</se:Name>
               <se:Description>
                  <se:Title>Regulert fotgjengerfelt</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>juridisklinje</ogc:PropertyName>
                     <ogc:Literal>1226</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:LineSymbolizer>
                  <se:Stroke>
                     <se:SvgParameter name="stroke">#000000</se:SvgParameter>
                     <se:SvgParameter name="stroke-width">1</se:SvgParameter>
                     <se:SvgParameter name="stroke-linejoin">bevel</se:SvgParameter>
                     <se:SvgParameter name="stroke-linecap">square</se:SvgParameter>
                     <se:SvgParameter name="stroke-dasharray">4 2</se:SvgParameter>
                  </se:Stroke>
               </se:LineSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>Regulert støyskjerm</se:Name>
               <se:Description>
                  <se:Title>Regulert støyskjerm</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>juridisklinje</ogc:PropertyName>
                     <ogc:Literal>1227</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:LineSymbolizer>
                  <se:Stroke>
                     <se:GraphicStroke>
                        <se:Graphic>
                           <se:ExternalGraphic>
                              <se:OnlineResource xlink:type="simple" xlink:href="https://dibk-plankart.azurewebsites.net/data/sld/gfx/juridisk-linje-1227.svg" />
                              <se:Format>image/svg+xml</se:Format>
                           </se:ExternalGraphic>
                           <se:Size>8</se:Size>
                           <se:Rotation>
                              <ogc:Literal>90</ogc:Literal>
                           </se:Rotation>
                        </se:Graphic>
                        <se:Gap>
                           <ogc:Literal>20</ogc:Literal>
                        </se:Gap>
                     </se:GraphicStroke>
                  </se:Stroke>
               </se:LineSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>Regulert støttemur</se:Name>
               <se:Description>
                  <se:Title>Regulert støttemur</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>juridisklinje</ogc:PropertyName>
                     <ogc:Literal>1228</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:LineSymbolizer>
                  <se:Stroke>
                     <se:SvgParameter name="stroke">#000000</se:SvgParameter>
                     <se:SvgParameter name="stroke-width">1</se:SvgParameter>
                     <se:SvgParameter name="stroke-linejoin">bevel</se:SvgParameter>
                     <se:SvgParameter name="stroke-linecap">square</se:SvgParameter>
                  </se:Stroke>
               </se:LineSymbolizer>
               <se:LineSymbolizer>
                  <se:Stroke>
                     <se:GraphicStroke>
                        <se:Graphic>
                           <se:ExternalGraphic>
                              <se:OnlineResource xlink:type="simple" xlink:href="https://dibk-plankart.azurewebsites.net/data/sld/gfx/svart-halv-linje.svg" />
                              <se:Format>image/svg+xml</se:Format>
                           </se:ExternalGraphic>
                           <se:Size>18</se:Size>
                           <se:Rotation>
                              <ogc:Literal>90</ogc:Literal>
                           </se:Rotation>
                        </se:Graphic>
                        <se:Gap>
                           <ogc:Literal>3</ogc:Literal>
                        </se:Gap>
                     </se:GraphicStroke>
                  </se:Stroke>
               </se:LineSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>Sikringsgjerde</se:Name>
               <se:Description>
                  <se:Title>Sikringsgjerde</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>juridisklinje</ogc:PropertyName>
                     <ogc:Literal>1235</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:LineSymbolizer>
                  <se:Stroke>
                     <se:SvgParameter name="stroke">#000000</se:SvgParameter>
                     <se:SvgParameter name="stroke-width">1</se:SvgParameter>
                     <se:SvgParameter name="stroke-linejoin">bevel</se:SvgParameter>
                     <se:SvgParameter name="stroke-linecap">square</se:SvgParameter>
                  </se:Stroke>
               </se:LineSymbolizer>
               <se:LineSymbolizer>
                  <se:Stroke>
                     <se:GraphicStroke>
                        <se:Graphic>
                           <se:Mark>
                              <se:OnlineResource xlink:type="simple" xlink:href="ttf://Sk_PBL-symboler"/>
                              <se:Format>ttf</se:Format>
                              <se:MarkIndex>93</se:MarkIndex>
                              <se:Fill>
                                 <se:SvgParameter name="fill">#000000</se:SvgParameter>
                              </se:Fill>
                           </se:Mark>
                           <se:Size>14</se:Size>
                        </se:Graphic>
                        <se:Gap>
                           <ogc:Literal>36</ogc:Literal>
                        </se:Gap>
                     </se:GraphicStroke>
                  </se:Stroke>
               </se:LineSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>Bru</se:Name>
               <se:Description>
                  <se:Title>Bru</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>juridisklinje</ogc:PropertyName>
                     <ogc:Literal>1252</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:LineSymbolizer>
                  <se:Stroke>
                     <se:SvgParameter name="stroke">#000000</se:SvgParameter>
                     <se:SvgParameter name="stroke-width">2</se:SvgParameter>
                     <se:SvgParameter name="stroke-linejoin">bevel</se:SvgParameter>
                     <se:SvgParameter name="stroke-linecap">square</se:SvgParameter>
                     <se:SvgParameter name="stroke-dasharray">18 4</se:SvgParameter>
                  </se:Stroke>
               </se:LineSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>Tunnel</se:Name>
               <se:Description>
                  <se:Title>Tunnel</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>juridisklinje</ogc:PropertyName>
                     <ogc:Literal>1254</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:LineSymbolizer>
                  <se:Stroke>
                     <se:SvgParameter name="stroke">#000000</se:SvgParameter>
                     <se:SvgParameter name="stroke-width">2</se:SvgParameter>
                     <se:SvgParameter name="stroke-linejoin">bevel</se:SvgParameter>
                     <se:SvgParameter name="stroke-linecap">square</se:SvgParameter>
                     <se:SvgParameter name="stroke-dasharray">4 4</se:SvgParameter>
                  </se:Stroke>
               </se:LineSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>Måle og avstandslinje</se:Name>
               <se:Description>
                  <se:Title>Måle og avstandslinje</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>juridisklinje</ogc:PropertyName>
                     <ogc:Literal>1259</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:LineSymbolizer>
                  <se:Stroke>
                     <se:SvgParameter name="stroke">#000000</se:SvgParameter>
                     <se:SvgParameter name="stroke-width">0.5</se:SvgParameter>
                     <se:SvgParameter name="stroke-linejoin">bevel</se:SvgParameter>
                     <se:SvgParameter name="stroke-linecap">square</se:SvgParameter>
                  </se:Stroke>
               </se:LineSymbolizer>
               <se:LineSymbolizer>
                  <se:VendorOption name="placement">firstPoint</se:VendorOption>
                  <se:Stroke>
                     <se:GraphicStroke>
                        <se:Graphic>
                           <se:Mark>
                              <se:WellKnownName>line</se:WellKnownName>
                              <se:Fill>
                                 <se:SvgParameter name="fill">#000000</se:SvgParameter>
                              </se:Fill>
                              <se:Stroke>
                                 <se:SvgParameter name="stroke">#000000</se:SvgParameter>
                                 <se:SvgParameter name="stroke-width">0.5</se:SvgParameter>
                              </se:Stroke>
                           </se:Mark>
                           <se:Size>7</se:Size>
                           <se:Rotation>
                              <ogc:Literal>25</ogc:Literal>
                           </se:Rotation>
                        </se:Graphic>
                     </se:GraphicStroke>
                  </se:Stroke>
               </se:LineSymbolizer>
               <se:LineSymbolizer>
                  <se:VendorOption name="placement">lastPoint</se:VendorOption>
                  <se:Stroke>
                     <se:GraphicStroke>
                        <se:Graphic>
                           <se:Mark>
                              <se:WellKnownName>line</se:WellKnownName>
                              <se:Fill>
                                 <se:SvgParameter name="fill">#000000</se:SvgParameter>
                              </se:Fill>
                              <se:Stroke>
                                 <se:SvgParameter name="stroke">#000000</se:SvgParameter>
                                 <se:SvgParameter name="stroke-width">0.5</se:SvgParameter>
                              </se:Stroke>
                           </se:Mark>
                           <se:Size>7</se:Size>
                           <se:Rotation>
                              <ogc:Literal>25</ogc:Literal>
                           </se:Rotation>
                        </se:Graphic>
                     </se:GraphicStroke>
                  </se:Stroke>
               </se:LineSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>Strandlinje sjø</se:Name>
               <se:Description>
                  <se:Title>Strandlinje sjø</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>juridisklinje</ogc:PropertyName>
                     <ogc:Literal>1260</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:LineSymbolizer>
                  <se:Stroke>
                     <se:SvgParameter name="stroke">#999999</se:SvgParameter>
                     <se:SvgParameter name="stroke-width">4</se:SvgParameter>
                     <se:SvgParameter name="stroke-linejoin">bevel</se:SvgParameter>
                     <se:SvgParameter name="stroke-linecap">square</se:SvgParameter>
                     <se:SvgParameter name="stroke-dasharray">18 7</se:SvgParameter>
                  </se:Stroke>
               </se:LineSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>Strandlinje vassdrag</se:Name>
               <se:Description>
                  <se:Title>Strandlinje vassdrag</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>juridisklinje</ogc:PropertyName>
                     <ogc:Literal>1261</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:LineSymbolizer>
                  <se:Stroke>
                     <se:SvgParameter name="stroke">#999999</se:SvgParameter>
                     <se:SvgParameter name="stroke-width">4</se:SvgParameter>
                     <se:SvgParameter name="stroke-linejoin">bevel</se:SvgParameter>
                     <se:SvgParameter name="stroke-linecap">square</se:SvgParameter>
                     <se:SvgParameter name="stroke-dasharray">18 7</se:SvgParameter>
                  </se:Stroke>
               </se:LineSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>Midtlinje vassdrag</se:Name>
               <se:Description>
                  <se:Title>Midtlinje vassdrag</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>juridisklinje</ogc:PropertyName>
                     <ogc:Literal>1262</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:LineSymbolizer>
                  <se:Stroke>
                     <se:SvgParameter name="stroke">#000000</se:SvgParameter>
                     <se:SvgParameter name="stroke-width">1</se:SvgParameter>
                     <se:SvgParameter name="stroke-linejoin">bevel</se:SvgParameter>
                     <se:SvgParameter name="stroke-linecap">square</se:SvgParameter>
                     <se:SvgParameter name="stroke-dasharray">14 7 1 7</se:SvgParameter>
                  </se:Stroke>
               </se:LineSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>9999</se:Name>
               <se:Description>
                  <se:Title>9999</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>juridisklinje</ogc:PropertyName>
                     <ogc:Literal>9999</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:LineSymbolizer>
                  <se:Stroke>
                     <se:SvgParameter name="stroke">#a7dd4a</se:SvgParameter>
                     <se:SvgParameter name="stroke-width">1</se:SvgParameter>
                     <se:SvgParameter name="stroke-linejoin">bevel</se:SvgParameter>
                     <se:SvgParameter name="stroke-linecap">square</se:SvgParameter>
                  </se:Stroke>
               </se:LineSymbolizer>
            </se:Rule>
         </se:FeatureTypeStyle>
      </UserStyle>
   </NamedLayer>
</StyledLayerDescriptor>
