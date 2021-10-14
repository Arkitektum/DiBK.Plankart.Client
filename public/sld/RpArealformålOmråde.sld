<?xml version="1.0" encoding="UTF-8"?>
<StyledLayerDescriptor xmlns="http://www.opengis.net/sld"
   xmlns:ogc="http://www.opengis.net/ogc" xsi:schemaLocation="http://www.opengis.net/sld http://schemas.opengis.net/sld/1.1.0/StyledLayerDescriptor.xsd"
   xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" version="1.1.0"
   xmlns:se="http://www.opengis.net/se"
   xmlns:xlink="http://www.w3.org/1999/xlink">
   <NamedLayer>
      <se:Name>RpArealformålOmråde</se:Name>
      <UserStyle>
         <se:Name>RpArealformålOmråde</se:Name>
         <se:FeatureTypeStyle>
            <se:Rule>
               <se:Name>1001 - Bebyggelse og anlegg</se:Name>
               <se:Description>
                  <se:Title>1001 - Bebyggelse og anlegg</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>1001</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#ffcc00</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>1110 - Boligbebyggelse</se:Name>
               <se:Description>
                  <se:Title>1110 - Boligbebyggelse</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>1110</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#ffff33</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>1111 - Boligbebyggelse-frittliggende småhusbebyggelse</se:Name>
               <se:Description>
                  <se:Title>1111 - Boligbebyggelse-frittliggende småhusbebyggelse</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>1111</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#ffff99</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>1112 - Boligbebyggelse-konsentrert småhusbebyggelse</se:Name>
               <se:Description>
                  <se:Title>1112 - Boligbebyggelse-konsentrert småhusbebyggelse</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>1112</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#ffff33</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>1113 - Boligbebyggelse-blokkbebyggelse</se:Name>
               <se:Description>
                  <se:Title>1113 - Boligbebyggelse-blokkbebyggelse</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>1113</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#ffff33</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>1119 - Garasjeanlegg for bolig-/fritidsbebyggelse</se:Name>
               <se:Description>
                  <se:Title>1119 - Garasjeanlegg for bolig-/fritidsbebyggelse</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>1119</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#ffff33</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>1120 - Fritidsbebygelse</se:Name>
               <se:Description>
                  <se:Title>1120 - Fritidsbebygelse</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>1120</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#ffcc66</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>1121 - Fritidsbebyggelse-frittliggende</se:Name>
               <se:Description>
                  <se:Title>1121 - Fritidsbebyggelse-frittliggende</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>1121</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#ffe7ae</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>1122 - Fritidsbebyggelse-konsentrert</se:Name>
               <se:Description>
                  <se:Title>1122 - Fritidsbebyggelse-konsentrert</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>1122</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#ffcc66</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>1123 - Fritidsbebyggelse-blokk</se:Name>
               <se:Description>
                  <se:Title>1123 - Fritidsbebyggelse-blokk</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>1123</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#ffcc66</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>1124 - Kolonihage</se:Name>
               <se:Description>
                  <se:Title>1124 - Kolonihage</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>1124</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#ffcc66</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>1130 - Sentrumsformål</se:Name>
               <se:Description>
                  <se:Title>1130 - Sentrumsformål</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>1130</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#cc9900</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>1140 - Kjøpesenter</se:Name>
               <se:Description>
                  <se:Title>1140 - Kjøpesenter</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>1140</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#cc99cc</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>1150 - Forretninger</se:Name>
               <se:Description>
                  <se:Title>1150 - Forretninger</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>1150</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#ccccff</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>1160 - Offentlig eller privat tjenesteyting</se:Name>
               <se:Description>
                  <se:Title>1160 - Offentlig eller privat tjenesteyting</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>1160</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#ff9999</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>1161 - Barnehage</se:Name>
               <se:Description>
                  <se:Title>1161 - Barnehage</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>1161</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#ff9999</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>1162 - Undervisning</se:Name>
               <se:Description>
                  <se:Title>1162 - Undervisning</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>1162</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#ff9999</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>1163 - Institusjon</se:Name>
               <se:Description>
                  <se:Title>1163 - Institusjon</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>1163</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#ff9999</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>1164 - Kirke/annen religionsutøvelse</se:Name>
               <se:Description>
                  <se:Title>1164 - Kirke/annen religionsutøvelse</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>1164</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#ff9999</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>1165 - Forsamlingslokale</se:Name>
               <se:Description>
                  <se:Title>1165 - Forsamlingslokale</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>1165</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#ff9999</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>1166 - Administrasjon</se:Name>
               <se:Description>
                  <se:Title>1166 - Administrasjon</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>1166</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#ff9999</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>1169 - Annen offentlig eller privat tjenesteyting</se:Name>
               <se:Description>
                  <se:Title>1169 - Annen offentlig eller privat tjenesteyting</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>1169</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#ff9999</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>1170 - Fritids- og turistformål</se:Name>
               <se:Description>
                  <se:Title>1170 - Fritids- og turistformål</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>1170</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#9999cc</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>1171 - Utleiehytter</se:Name>
               <se:Description>
                  <se:Title>1171 - Utleiehytter</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>1171</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#9999cc</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>1172 - Fornøyelsespark</se:Name>
               <se:Description>
                  <se:Title>1172 - Fornøyelsespark</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>1172</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#9999cc</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>1173 - Campingplass</se:Name>
               <se:Description>
                  <se:Title>1173 - Campingplass</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>1173</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#9999cc</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>1174 - Leirplass</se:Name>
               <se:Description>
                  <se:Title>1174 - Leirplass</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>1174</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#9999cc</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>1200 - Råstoffutvinning</se:Name>
               <se:Description>
                  <se:Title>1200 - Råstoffutvinning</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>1200</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#cc9999</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>1201 - Steinbrudd og masseuttak</se:Name>
               <se:Description>
                  <se:Title>1201 - Steinbrudd og masseuttak</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>1201</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#cc9999</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>1300 - Næringsbebyggelse</se:Name>
               <se:Description>
                  <se:Title>1300 - Næringsbebyggelse</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>1300</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#9966ff</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>1310 - Kontor</se:Name>
               <se:Description>
                  <se:Title>1310 - Kontor</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>1310</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#cc99ff</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>1320 - Hotell/overnatting</se:Name>
               <se:Description>
                  <se:Title>1320 - Hotell/overnatting</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>1320</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#cc99ff</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>1330 - Bevertning</se:Name>
               <se:Description>
                  <se:Title>1330 - Bevertning</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>1330</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#cc99ff</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>1340 - Industri</se:Name>
               <se:Description>
                  <se:Title>1340 - Industri</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>1340</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#cc66ff</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>1350 - Lager</se:Name>
               <se:Description>
                  <se:Title>1350 - Lager</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>1350</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#cc66ff</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>1360 - Bensinstasjon/vegserviceanlegg</se:Name>
               <se:Description>
                  <se:Title>1360 - Bensinstasjon/vegserviceanlegg</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>1360</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#cc66ff</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>1390 - Annen næring</se:Name>
               <se:Description>
                  <se:Title>1390 - Annen næring</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>1390</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#9966ff</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>1400 - Idrettsanlegg</se:Name>
               <se:Description>
                  <se:Title>1400 - Idrettsanlegg</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>1400</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#99cc00</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>1410 - Skianlegg</se:Name>
               <se:Description>
                  <se:Title>1410 - Skianlegg</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>1410</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#99cc00</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>1420 - Skiløypetrasé</se:Name>
               <se:Description>
                  <se:Title>1420 - Skiløypetrasé</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>1420</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#99cc00</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>1430 - Idrettsstadion</se:Name>
               <se:Description>
                  <se:Title>1430 - Idrettsstadion</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>1430</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#669900</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>1440 - Nærmiljøanlegg</se:Name>
               <se:Description>
                  <se:Title>1440 - Nærmiljøanlegg</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>1440</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#99cc00</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>1450 - Golfbane</se:Name>
               <se:Description>
                  <se:Title>1450 - Golfbane</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>1450</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#ccff33</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>1460 - Motorsportanlegg</se:Name>
               <se:Description>
                  <se:Title>1460 - Motorsportanlegg</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>1460</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#669900</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>1470 - Skytebane</se:Name>
               <se:Description>
                  <se:Title>1470 - Skytebane</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>1470</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#669900</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>1490 - Andre idrettsanlegg</se:Name>
               <se:Description>
                  <se:Title>1490 - Andre idrettsanlegg</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>1490</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#99cc00</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>1500 - Andre typer bebyggelse og anlegg</se:Name>
               <se:Description>
                  <se:Title>1500 - Andre typer bebyggelse og anlegg</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>1500</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#ff9933</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>1501 - Godsterminal</se:Name>
               <se:Description>
                  <se:Title>1501 - Godsterminal</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>1501</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#ff9933</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>1502 - Godslager</se:Name>
               <se:Description>
                  <se:Title>1502 - Godslager</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>1502</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#ff9933</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>1510 - Energianlegg</se:Name>
               <se:Description>
                  <se:Title>1510 - Energianlegg</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>1510</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#ff9933</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>1520 - Fjernvarmeanlegg</se:Name>
               <se:Description>
                  <se:Title>1520 - Fjernvarmeanlegg</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>1520</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#ff9933</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>1530 - Vindkraftanlegg</se:Name>
               <se:Description>
                  <se:Title>1530 - Vindkraftanlegg</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>1530</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#ff9933</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>1540 - Vann- og avløpsanlegg</se:Name>
               <se:Description>
                  <se:Title>1540 - Vann- og avløpsanlegg</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>1540</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#ff9933</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>1541 - Vannforsyningsanlegg</se:Name>
               <se:Description>
                  <se:Title>1541 - Vannforsyningsanlegg</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>1541</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#ff9933</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>1542 - Avløpsanlegg</se:Name>
               <se:Description>
                  <se:Title>1542 - Avløpsanlegg</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>1542</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#ff9933</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>1550 - Renovasjonsanlegg</se:Name>
               <se:Description>
                  <se:Title>1550 - Renovasjonsanlegg</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>1550</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#ff9933</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>1560 - Øvrige kommunaltekniske anlegg</se:Name>
               <se:Description>
                  <se:Title>1560 - Øvrige kommunaltekniske anlegg</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>1560</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#ff9933</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>1570 - Telekommunikasjonsanlegg</se:Name>
               <se:Description>
                  <se:Title>1570 - Telekommunikasjonsanlegg</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>1570</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#ff9933</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>1587 - Småbåtanlegg i sjø og vassdrag</se:Name>
               <se:Description>
                  <se:Title>1587 - Småbåtanlegg i sjø og vassdrag</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>1587</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#ff9933</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>1588 - Småbåtanlegg i sjø og vassdrag med tilhørende strandsone</se:Name>
               <se:Description>
                  <se:Title>1588 - Småbåtanlegg i sjø og vassdrag med tilhørende strandsone</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>1588</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#ff9933</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>1589 - Uthus/naust/badehus</se:Name>
               <se:Description>
                  <se:Title>1589 - Uthus/naust/badehus</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>1589</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#ff9933</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>1590 - Annen særskilt angitt bebyggelse og anlegg</se:Name>
               <se:Description>
                  <se:Title>1590 - Annen særskilt angitt bebyggelse og anlegg</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>1590</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#ff9933</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>1600 - Uteoppholdsareal</se:Name>
               <se:Description>
                  <se:Title>1600 - Uteoppholdsareal</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>1600</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#66cc99</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>1610 - Lekeplass</se:Name>
               <se:Description>
                  <se:Title>1610 - Lekeplass</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>1610</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#66cc99</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>1620 - Gårdsplass</se:Name>
               <se:Description>
                  <se:Title>1620 - Gårdsplass</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>1620</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#66cc99</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>1630 - Parsellhage</se:Name>
               <se:Description>
                  <se:Title>1630 - Parsellhage</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>1630</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#66cc99</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>1690 - Annet uteoppholdsareal</se:Name>
               <se:Description>
                  <se:Title>1690 - Annet uteoppholdsareal</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>1690</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#66cc99</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>1700 - Grav- og urnelund</se:Name>
               <se:Description>
                  <se:Title>1700 - Grav- og urnelund</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>1700</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#cc6699</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>1710 - Krematorium</se:Name>
               <se:Description>
                  <se:Title>1710 - Krematorium</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>1710</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#cc6699</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>1730 - Nødvendige bygg og anlegg for grav- og urnelund</se:Name>
               <se:Description>
                  <se:Title>1730 - Nødvendige bygg og anlegg for grav- og urnelund</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>1730</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#cc6699</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>1800 - Kombinert bebyggelse og anleggsformål</se:Name>
               <se:Description>
                  <se:Title>1800 - Kombinert bebyggelse og anleggsformål</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>1800</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:GraphicFill>
                        <se:Graphic>
                           <se:ExternalGraphic>
                              <se:OnlineResource xlink:type="simple" xlink:href="https://dibk-plankart.azurewebsites.net/sld/gfx/arealformaal-1800.svg" />
                              <se:Format>image/svg+xml</se:Format>
                           </se:ExternalGraphic>
                           <se:Size>18</se:Size>
                           <se:Rotation>
                              <ogc:Literal>135</ogc:Literal>
                           </se:Rotation>
                        </se:Graphic>
                     </se:GraphicFill>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>1801 - Bolig/forretning</se:Name>
               <se:Description>
                  <se:Title>1801 - Bolig/forretning</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>1801</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:GraphicFill>
                        <se:Graphic>
                           <se:ExternalGraphic>
                              <se:OnlineResource xlink:type="simple" xlink:href="https://dibk-plankart.azurewebsites.net/sld/gfx/arealformaal-1801.svg" />
                              <se:Format>image/svg+xml</se:Format>
                           </se:ExternalGraphic>
                           <se:Size>18</se:Size>
                           <se:Rotation>
                              <ogc:Literal>135</ogc:Literal>
                           </se:Rotation>
                        </se:Graphic>
                     </se:GraphicFill>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>1802 - Bolig/forretning/kontor</se:Name>
               <se:Description>
                  <se:Title>1802 - Bolig/forretning/kontor</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>1802</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:GraphicFill>
                        <se:Graphic>
                           <se:ExternalGraphic>
                              <se:OnlineResource xlink:type="simple" xlink:href="https://dibk-plankart.azurewebsites.net/sld/gfx/arealformaal-1802.svg" />
                              <se:Format>image/svg+xml</se:Format>
                           </se:ExternalGraphic>
                           <se:Size>45</se:Size>
                           <se:Rotation>
                              <ogc:Literal>135</ogc:Literal>
                           </se:Rotation>
                        </se:Graphic>
                     </se:GraphicFill>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>1803 - Bolig/tjenesteyting</se:Name>
               <se:Description>
                  <se:Title>1803 - Bolig/tjenesteyting</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>1803</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:GraphicFill>
                        <se:Graphic>
                           <se:ExternalGraphic>
                              <se:OnlineResource xlink:type="simple" xlink:href="https://dibk-plankart.azurewebsites.net/sld/gfx/arealformaal-1803.svg" />
                              <se:Format>image/svg+xml</se:Format>
                           </se:ExternalGraphic>
                           <se:Size>18</se:Size>
                           <se:Rotation>
                              <ogc:Literal>135</ogc:Literal>
                           </se:Rotation>
                        </se:Graphic>
                     </se:GraphicFill>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>1804 - Bolig/kontor</se:Name>
               <se:Description>
                  <se:Title>1804 - Bolig/kontor</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>1804</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:GraphicFill>
                        <se:Graphic>
                           <se:ExternalGraphic>
                              <se:OnlineResource xlink:type="simple" xlink:href="https://dibk-plankart.azurewebsites.net/sld/gfx/arealformaal-1804.svg" />
                              <se:Format>image/svg+xml</se:Format>
                           </se:ExternalGraphic>
                           <se:Size>18</se:Size>
                           <se:Rotation>
                              <ogc:Literal>135</ogc:Literal>
                           </se:Rotation>
                        </se:Graphic>
                     </se:GraphicFill>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>1810 - Forretning/kontor</se:Name>
               <se:Description>
                  <se:Title>1810 - Forretning/kontor</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>1810</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:GraphicFill>
                        <se:Graphic>
                           <se:ExternalGraphic>
                              <se:OnlineResource xlink:type="simple" xlink:href="https://dibk-plankart.azurewebsites.net/sld/gfx/arealformaal-1810.svg" />
                              <se:Format>image/svg+xml</se:Format>
                           </se:ExternalGraphic>
                           <se:Size>18</se:Size>
                           <se:Rotation>
                              <ogc:Literal>135</ogc:Literal>
                           </se:Rotation>
                        </se:Graphic>
                     </se:GraphicFill>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>1811 - Forretning/kontor/Industri</se:Name>
               <se:Description>
                  <se:Title>1811 - Forretning/kontor/Industri</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>1811</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:GraphicFill>
                        <se:Graphic>
                           <se:ExternalGraphic>
                              <se:OnlineResource xlink:type="simple" xlink:href="https://dibk-plankart.azurewebsites.net/sld/gfx/arealformaal-1811.svg" />
                              <se:Format>image/svg+xml</se:Format>
                           </se:ExternalGraphic>
                           <se:Size>45</se:Size>
                           <se:Rotation>
                              <ogc:Literal>135</ogc:Literal>
                           </se:Rotation>
                        </se:Graphic>
                     </se:GraphicFill>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>1812 - Forretning/industri</se:Name>
               <se:Description>
                  <se:Title>1812 - Forretning/industri</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>1812</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:GraphicFill>
                        <se:Graphic>
                           <se:ExternalGraphic>
                              <se:OnlineResource xlink:type="simple" xlink:href="https://dibk-plankart.azurewebsites.net/sld/gfx/arealformaal-1812.svg" />
                              <se:Format>image/svg+xml</se:Format>
                           </se:ExternalGraphic>
                           <se:Size>18</se:Size>
                           <se:Rotation>
                              <ogc:Literal>135</ogc:Literal>
                           </se:Rotation>
                        </se:Graphic>
                     </se:GraphicFill>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>1813 - Forretning/kontor/tjenesteyting</se:Name>
               <se:Description>
                  <se:Title>1813 - Forretning/kontor/tjenesteyting</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>1813</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:GraphicFill>
                        <se:Graphic>
                           <se:ExternalGraphic>
                              <se:OnlineResource xlink:type="simple" xlink:href="https://dibk-plankart.azurewebsites.net/sld/gfx/arealformaal-1813.svg" />
                              <se:Format>image/svg+xml</se:Format>
                           </se:ExternalGraphic>
                           <se:Size>45</se:Size>
                           <se:Rotation>
                              <ogc:Literal>135</ogc:Literal>
                           </se:Rotation>
                        </se:Graphic>
                     </se:GraphicFill>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>1814 - Forretning/tjenesteyting</se:Name>
               <se:Description>
                  <se:Title>1814 - Forretning/tjenesteyting</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>1814</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:GraphicFill>
                        <se:Graphic>
                           <se:ExternalGraphic>
                              <se:OnlineResource xlink:type="simple" xlink:href="https://dibk-plankart.azurewebsites.net/sld/gfx/arealformaal-1814.svg" />
                              <se:Format>image/svg+xml</se:Format>
                           </se:ExternalGraphic>
                           <se:Size>18</se:Size>
                           <se:Rotation>
                              <ogc:Literal>135</ogc:Literal>
                           </se:Rotation>
                        </se:Graphic>
                     </se:GraphicFill>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>1824 - Næring/tjenesteyting</se:Name>
               <se:Description>
                  <se:Title>1824 - Næring/tjenesteyting</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>1824</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:GraphicFill>
                        <se:Graphic>
                           <se:ExternalGraphic>
                              <se:OnlineResource xlink:type="simple" xlink:href="https://dibk-plankart.azurewebsites.net/sld/gfx/arealformaal-1824.svg" />
                              <se:Format>image/svg+xml</se:Format>
                           </se:ExternalGraphic>
                           <se:Size>18</se:Size>
                           <se:Rotation>
                              <ogc:Literal>135</ogc:Literal>
                           </se:Rotation>
                        </se:Graphic>
                     </se:GraphicFill>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>1825 - Kontor/lager</se:Name>
               <se:Description>
                  <se:Title>1825 - Kontor/lager</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>1825</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:GraphicFill>
                        <se:Graphic>
                           <se:ExternalGraphic>
                              <se:OnlineResource xlink:type="simple" xlink:href="https://dibk-plankart.azurewebsites.net/sld/gfx/arealformaal-1825.svg" />
                              <se:Format>image/svg+xml</se:Format>
                           </se:ExternalGraphic>
                           <se:Size>18</se:Size>
                           <se:Rotation>
                              <ogc:Literal>135</ogc:Literal>
                           </se:Rotation>
                        </se:Graphic>
                     </se:GraphicFill>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>1826 - Industri/lager</se:Name>
               <se:Description>
                  <se:Title>1826 - Industri/lager</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>1826</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:GraphicFill>
                        <se:Graphic>
                           <se:ExternalGraphic>
                              <se:OnlineResource xlink:type="simple" xlink:href="https://dibk-plankart.azurewebsites.net/sld/gfx/arealformaal-1826.svg" />
                              <se:Format>image/svg+xml</se:Format>
                           </se:ExternalGraphic>
                           <se:Size>18</se:Size>
                           <se:Rotation>
                              <ogc:Literal>135</ogc:Literal>
                           </se:Rotation>
                        </se:Graphic>
                     </se:GraphicFill>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>1830 - Kontor/industr</se:Name>
               <se:Description>
                  <se:Title>1830 - Kontor/industr</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>1830</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:GraphicFill>
                        <se:Graphic>
                           <se:ExternalGraphic>
                              <se:OnlineResource xlink:type="simple" xlink:href="https://dibk-plankart.azurewebsites.net/sld/gfx/arealformaal-1830.svg" />
                              <se:Format>image/svg+xml</se:Format>
                           </se:ExternalGraphic>
                           <se:Size>18</se:Size>
                           <se:Rotation>
                              <ogc:Literal>135</ogc:Literal>
                           </se:Rotation>
                        </se:Graphic>
                     </se:GraphicFill>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>1831 - Kontor/tjenesteyting</se:Name>
               <se:Description>
                  <se:Title>1831 - Kontor/tjenesteyting</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>1831</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:GraphicFill>
                        <se:Graphic>
                           <se:ExternalGraphic>
                              <se:OnlineResource xlink:type="simple" xlink:href="https://dibk-plankart.azurewebsites.net/sld/gfx/arealformaal-1831.svg" />
                              <se:Format>image/svg+xml</se:Format>
                           </se:ExternalGraphic>
                           <se:Size>18</se:Size>
                           <se:Rotation>
                              <ogc:Literal>135</ogc:Literal>
                           </se:Rotation>
                        </se:Graphic>
                     </se:GraphicFill>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>1900 - Angitt bebyggelse og anleggsformål kombinert med andre angitte
hovedformål</se:Name>
               <se:Description>
                  <se:Title>1900 - Angitt bebyggelse og anleggsformål kombinert med andre angitte
hovedformål</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>1900</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:GraphicFill>
                        <se:Graphic>
                           <se:ExternalGraphic>
                              <se:OnlineResource xlink:type="simple" xlink:href="https://dibk-plankart.azurewebsites.net/sld/gfx/arealformaal-1900.svg" />
                              <se:Format>image/svg+xml</se:Format>
                           </se:ExternalGraphic>
                           <se:Size>18</se:Size>
                           <se:Rotation>
                              <ogc:Literal>135</ogc:Literal>
                           </se:Rotation>
                        </se:Graphic>
                     </se:GraphicFill>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>2001 - Samferdselsanlegg og teknisk infrastruktur (arealer)</se:Name>
               <se:Description>
                  <se:Title>2001 - Samferdselsanlegg og teknisk infrastruktur (arealer)</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>2001</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#999999</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>2010 - Veg</se:Name>
               <se:Description>
                  <se:Title>2010 - Veg</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>2010</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#cccccc</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>2011 - Kjøreveg</se:Name>
               <se:Description>
                  <se:Title>2011 - Kjøreveg</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>2011</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#cccccc</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>2012 - Fortau</se:Name>
               <se:Description>
                  <se:Title>2012 - Fortau</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>2012</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#ffcccc</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>2013 - Torg</se:Name>
               <se:Description>
                  <se:Title>2013 - Torg</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>2013</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#ffcccc</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>2014 - Gatetun</se:Name>
               <se:Description>
                  <se:Title>2014 - Gatetun</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>2014</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#f0dddb</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>2015 - Gang-/sykkelveg</se:Name>
               <se:Description>
                  <se:Title>2015 - Gang-/sykkelveg</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>2015</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#ffcccc</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>2016 - Gangveg/gangareal/gågate</se:Name>
               <se:Description>
                  <se:Title>2016 - Gangveg/gangareal/gågate</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>2016</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#ffcccc</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>2017 - Sykkelveg/-felt</se:Name>
               <se:Description>
                  <se:Title>2017 - Sykkelveg/-felt</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>2017</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#ffcccc</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>2018 - Annen veggrunn - tekniske anlegg</se:Name>
               <se:Description>
                  <se:Title>2018 - Annen veggrunn - tekniske anlegg</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>2018</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#999999</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>2019 - Annen veggrunn - grøntareal</se:Name>
               <se:Description>
                  <se:Title>2019 - Annen veggrunn - grøntareal</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>2019</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#999966</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>2020 - Bane (nærmere angitt baneformål)</se:Name>
               <se:Description>
                  <se:Title>2020 - Bane (nærmere angitt baneformål)</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>2020</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#cc9966</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>2021 - Trasé for jernbane</se:Name>
               <se:Description>
                  <se:Title>2021 - Trasé for jernbane</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>2021</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#cc9966</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>2022 - Trase for sporveg/forstadsbane</se:Name>
               <se:Description>
                  <se:Title>2022 - Trase for sporveg/forstadsbane</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>2022</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#cc9966</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>2023 - Trase for taubane</se:Name>
               <se:Description>
                  <se:Title>2023 - Trase for taubane</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>2023</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#cc9966</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>2024 - Stasjons-/terminalbygg</se:Name>
               <se:Description>
                  <se:Title>2024 - Stasjons-/terminalbygg</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>2024</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#cc9966</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>2025 - Holdeplass/plattform</se:Name>
               <se:Description>
                  <se:Title>2025 - Holdeplass/plattform</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>2025</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#cc9966</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>2026 - Leskur/plattformtak</se:Name>
               <se:Description>
                  <se:Title>2026 - Leskur/plattformtak</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>2026</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#cc9966</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>2027 - Tekniske bygg/konstruksjoner</se:Name>
               <se:Description>
                  <se:Title>2027 - Tekniske bygg/konstruksjoner</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>2027</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#cc9966</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>2028 - Annen banegrunn - tekniske anlegg</se:Name>
               <se:Description>
                  <se:Title>2028 - Annen banegrunn - tekniske anlegg</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>2028</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#cc9966</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>2029 - Annen banegrunn - grøntareal</se:Name>
               <se:Description>
                  <se:Title>2029 - Annen banegrunn - grøntareal</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>2029</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#999966</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>2030 - Lufthavn</se:Name>
               <se:Description>
                  <se:Title>2030 - Lufthavn</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>2030</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#999999</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>2031 - Lufthavn - landings-/taxebane</se:Name>
               <se:Description>
                  <se:Title>2031 - Lufthavn - landings-/taxebane</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>2031</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#999999</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>2032 - Lufthavn - terminalbygg</se:Name>
               <se:Description>
                  <se:Title>2032 - Lufthavn - terminalbygg</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>2032</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#999999</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>2033 - Lufthavn - hangarer/administrasjonsbygg</se:Name>
               <se:Description>
                  <se:Title>2033 - Lufthavn - hangarer/administrasjonsbygg</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>2033</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#999999</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>2034 - Landingsplass for helikopter</se:Name>
               <se:Description>
                  <se:Title>2034 - Landingsplass for helikopter</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>2034</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#999999</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>2040- Havn</se:Name>
               <se:Description>
                  <se:Title>2040- Havn</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>2040</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#99cccc</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>2041 - Kai</se:Name>
               <se:Description>
                  <se:Title>2041 - Kai</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>2041</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#99cccc</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>2042 - Havneterminaler</se:Name>
               <se:Description>
                  <se:Title>2042 - Havneterminaler</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>2042</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#99cccc</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>2043 - Havnelager</se:Name>
               <se:Description>
                  <se:Title>2043 - Havnelager</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>2043</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#99cccc</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>2050 - Hovednett for sykkel</se:Name>
               <se:Description>
                  <se:Title>2050 - Hovednett for sykkel</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>2050</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#ffcccc</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>2060 - Kollektivnett</se:Name>
               <se:Description>
                  <se:Title>2060 - Kollektivnett</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>2060</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#cc9966</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>2061 - Trase for nærmere angitt kollektivtransport</se:Name>
               <se:Description>
                  <se:Title>2061 - Trase for nærmere angitt kollektivtransport</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>2061</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#cc9966</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>2070 - Kollektivknutepunkt</se:Name>
               <se:Description>
                  <se:Title>2070 - Kollektivknutepunkt</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>2070</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#cc9966</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>2071 - Kollektivanlegg</se:Name>
               <se:Description>
                  <se:Title>2071 - Kollektivanlegg</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>2071</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#cc9966</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>2072 - Kollektivterminal</se:Name>
               <se:Description>
                  <se:Title>2072 - Kollektivterminal</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>2072</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#cc9966</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>2073 - Kollektivholdeplass</se:Name>
               <se:Description>
                  <se:Title>2073 - Kollektivholdeplass</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>2073</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#cc9966</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>2074 - Pendler- /innfartsparkering</se:Name>
               <se:Description>
                  <se:Title>2074 - Pendler- /innfartsparkering</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>2074</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#cc9966</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>2080 - Parkering</se:Name>
               <se:Description>
                  <se:Title>2080 - Parkering</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>2080</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#b9b9b9</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>2081 - Rasteplass</se:Name>
               <se:Description>
                  <se:Title>2081 - Rasteplass</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>2081</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#b9b9b9</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>2082 - Parkeringsplasser</se:Name>
               <se:Description>
                  <se:Title>2082 - Parkeringsplasser</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>2082</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#b9b9b9</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>2083 - Parkeringshus/ -anlegg</se:Name>
               <se:Description>
                  <se:Title>2083 - Parkeringshus/ -anlegg</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>2083</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#b9b9b9</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>2100 - Trase for teknisk infrastruktur</se:Name>
               <se:Description>
                  <se:Title>2100 - Trase for teknisk infrastruktur</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>2100</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#ffcc99</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>2110 - Energinett</se:Name>
               <se:Description>
                  <se:Title>2110 - Energinett</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>2110</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#ffcc99</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>2120 - Fjernvarmenett</se:Name>
               <se:Description>
                  <se:Title>2120 - Fjernvarmenett</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>2120</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#ffcc99</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>2140 - Vann- og avløpsnett</se:Name>
               <se:Description>
                  <se:Title>2140 - Vann- og avløpsnett</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>2140</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#ffcc99</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>2141 - Vannforsyningsnett</se:Name>
               <se:Description>
                  <se:Title>2141 - Vannforsyningsnett</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>2141</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#ffcc99</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>2142 - Avløpsnett</se:Name>
               <se:Description>
                  <se:Title>2142 - Avløpsnett</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>2142</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#ffcc99</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>2143 - Overvannsnett</se:Name>
               <se:Description>
                  <se:Title>2143 - Overvannsnett</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>2143</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#ffcc99</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>2150 - Avfallssug</se:Name>
               <se:Description>
                  <se:Title>2150 - Avfallssug</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>2150</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#ffcc99</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>2160 - Telekommunikasjonsnett</se:Name>
               <se:Description>
                  <se:Title>2160 - Telekommunikasjonsnett</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>2160</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#ffcc99</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>2180 - Andre teknisk infrastrukturtraseer</se:Name>
               <se:Description>
                  <se:Title>2180 - Andre teknisk infrastrukturtraseer</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>2180</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#ffcc99</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>2190 - Kombinerte tekniske infrastrukturtraseer</se:Name>
               <se:Description>
                  <se:Title>2190 - Kombinerte tekniske infrastrukturtraseer</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>2190</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#ffcc99</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>2800 - Kombinerte formål for samferdselsanlegg og/eller teknisk
infrastrukturtraser</se:Name>
               <se:Description>
                  <se:Title>2800 - Kombinerte formål for samferdselsanlegg og/eller teknisk
infrastrukturtraser</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>2800</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:GraphicFill>
                        <se:Graphic>
                           <se:ExternalGraphic>
                              <se:OnlineResource xlink:type="simple" xlink:href="https://dibk-plankart.azurewebsites.net/sld/gfx/arealformaal-2800.svg" />
                              <se:Format>image/svg+xml</se:Format>
                           </se:ExternalGraphic>
                           <se:Size>18</se:Size>
                           <se:Rotation>
                              <ogc:Literal>135</ogc:Literal>
                           </se:Rotation>
                        </se:Graphic>
                     </se:GraphicFill>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>2900 - Angitte samferdselsanlegg og</se:Name>
               <se:Description>
                  <se:Title>2900 - Angitte samferdselsanlegg og</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>2900</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:GraphicFill>
                        <se:Graphic>
                           <se:ExternalGraphic>
                              <se:OnlineResource xlink:type="simple" xlink:href="https://dibk-plankart.azurewebsites.net/sld/gfx/arealformaal-2900.svg" />
                              <se:Format>image/svg+xml</se:Format>
                           </se:ExternalGraphic>
                           <se:Size>18</se:Size>
                           <se:Rotation>
                              <ogc:Literal>135</ogc:Literal>
                           </se:Rotation>
                        </se:Graphic>
                     </se:GraphicFill>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>3001 - Grønnstruktur</se:Name>
               <se:Description>
                  <se:Title>3001 - Grønnstruktur</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>3001</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#99ff99</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>3020 - Naturområde</se:Name>
               <se:Description>
                  <se:Title>3020 - Naturområde</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>3020</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#99ff99</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>3030 - Turdrag</se:Name>
               <se:Description>
                  <se:Title>3030 - Turdrag</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>3030</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#99ff99</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>3031 - Turveg</se:Name>
               <se:Description>
                  <se:Title>3031 - Turveg</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>3031</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#99ff99</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>3040 - Friområde</se:Name>
               <se:Description>
                  <se:Title>3040 - Friområde</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>3040</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#99ff99</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>3041 - Badeplass/ -område</se:Name>
               <se:Description>
                  <se:Title>3041 - Badeplass/ -område</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>3041</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#99ff99</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>3050 - Park</se:Name>
               <se:Description>
                  <se:Title>3050 - Park</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>3050</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#99ff99</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>3060 - Vegetasjonsskjerm</se:Name>
               <se:Description>
                  <se:Title>3060 - Vegetasjonsskjerm</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>3060</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#99ff99</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>3800 - Kombinerte grønnstrukturformål</se:Name>
               <se:Description>
                  <se:Title>3800 - Kombinerte grønnstrukturformål</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>3800</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:GraphicFill>
                        <se:Graphic>
                           <se:ExternalGraphic>
                              <se:OnlineResource xlink:type="simple" xlink:href="https://dibk-plankart.azurewebsites.net/sld/gfx/arealformaal-3800.svg" />
                              <se:Format>image/svg+xml</se:Format>
                           </se:ExternalGraphic>
                           <se:Size>18</se:Size>
                           <se:Rotation>
                              <ogc:Literal>135</ogc:Literal>
                           </se:Rotation>
                        </se:Graphic>
                     </se:GraphicFill>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>3900 - Angitt grønnstruktur kombinert med andre angitte hovedformål</se:Name>
               <se:Description>
                  <se:Title>3900 - Angitt grønnstruktur kombinert med andre angitte hovedformål</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>3900</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:GraphicFill>
                        <se:Graphic>
                           <se:ExternalGraphic>
                              <se:OnlineResource xlink:type="simple" xlink:href="https://dibk-plankart.azurewebsites.net/sld/gfx/arealformaal-3900.svg" />
                              <se:Format>image/svg+xml</se:Format>
                           </se:ExternalGraphic>
                           <se:Size>18</se:Size>
                           <se:Rotation>
                              <ogc:Literal>135</ogc:Literal>
                           </se:Rotation>
                        </se:Graphic>
                     </se:GraphicFill>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>4001 - Forsvaret</se:Name>
               <se:Description>
                  <se:Title>4001 - Forsvaret</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>4001</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#cccc99</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>4010 - Ulike typer militære formål</se:Name>
               <se:Description>
                  <se:Title>4010 - Ulike typer militære formål</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>4010</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#cccc99</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>4020 - Skytefelt/øvingsområde</se:Name>
               <se:Description>
                  <se:Title>4020 - Skytefelt/øvingsområde</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>4020</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#cccc99</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>4030 - Forlegning/leir</se:Name>
               <se:Description>
                  <se:Title>4030 - Forlegning/leir</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>4030</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#cccc99</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>4800 - Kombinerte militærformål</se:Name>
               <se:Description>
                  <se:Title>4800 - Kombinerte militærformål</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>4800</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:GraphicFill>
                        <se:Graphic>
                           <se:ExternalGraphic>
                              <se:OnlineResource xlink:type="simple" xlink:href="https://dibk-plankart.azurewebsites.net/sld/gfx/arealformaal-4800.svg" />
                              <se:Format>image/svg+xml</se:Format>
                           </se:ExternalGraphic>
                           <se:Size>18</se:Size>
                           <se:Rotation>
                              <ogc:Literal>135</ogc:Literal>
                           </se:Rotation>
                        </se:Graphic>
                     </se:GraphicFill>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>4900 - Angitt militært formål kombinert med andre angitte hovedformål</se:Name>
               <se:Description>
                  <se:Title>4900 - Angitt militært formål kombinert med andre angitte hovedformål</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>4900</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:GraphicFill>
                        <se:Graphic>
                           <se:ExternalGraphic>
                              <se:OnlineResource xlink:type="simple" xlink:href="https://dibk-plankart.azurewebsites.net/sld/gfx/arealformaal-4900.svg" />
                              <se:Format>image/svg+xml</se:Format>
                           </se:ExternalGraphic>
                           <se:Size>18</se:Size>
                           <se:Rotation>
                              <ogc:Literal>135</ogc:Literal>
                           </se:Rotation>
                        </se:Graphic>
                     </se:GraphicFill>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>5100 - LNFR-areal for nødvendige tiltak for landbruk og reindrift og gårdstilknyttet
næringsvirksomhet basert på gårdens ressursgrunnlag</se:Name>
               <se:Description>
                  <se:Title>5100 - LNFR-areal for nødvendige tiltak for landbruk og reindrift og gårdstilknyttet
næringsvirksomhet basert på gårdens ressursgrunnlag</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>5100</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#ccff99</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>5110 - Landbruksformål</se:Name>
               <se:Description>
                  <se:Title>5110 - Landbruksformål</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>5110</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#ccff99</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>5111 - Jordbruk</se:Name>
               <se:Description>
                  <se:Title>5111 - Jordbruk</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>5111</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#ccff99</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>5112 - Skogbruk</se:Name>
               <se:Description>
                  <se:Title>5112 - Skogbruk</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>5112</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#ccff99</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>5113 - Seterområde</se:Name>
               <se:Description>
                  <se:Title>5113 - Seterområde</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>5113</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#33ff99</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>5114 - Gartneri</se:Name>
               <se:Description>
                  <se:Title>5114 - Gartneri</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>5114</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#33ff99</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>5115 - Pelsdyranlegg</se:Name>
               <se:Description>
                  <se:Title>5115 - Pelsdyranlegg</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>5115</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#33ff99</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>5120 - Naturformål</se:Name>
               <se:Description>
                  <se:Title>5120 - Naturformål</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>5120</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#99ff66</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>5130 - Friluftsformål</se:Name>
               <se:Description>
                  <se:Title>5130 - Friluftsformål</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>5130</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#99ff66</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>5140 - Reindriftsformål</se:Name>
               <se:Description>
                  <se:Title>5140 - Reindriftsformål</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>5140</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#99ff66</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>5200 - LNFR-areal for spredt bolig-, fritids- eller næringsbebyggelse mv.</se:Name>
               <se:Description>
                  <se:Title>5200 - LNFR-areal for spredt bolig-, fritids- eller næringsbebyggelse mv.</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>5200</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#ccffcc</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>5210 - Spredt boligbebyggelse</se:Name>
               <se:Description>
                  <se:Title>5210 - Spredt boligbebyggelse</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>5210</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#ccffcc</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>5220 - Spredt fritidsbebyggelse</se:Name>
               <se:Description>
                  <se:Title>5220 - Spredt fritidsbebyggelse</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>5220</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#ccffcc</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>5230 - Spredt næringsbebyggelse</se:Name>
               <se:Description>
                  <se:Title>5230 - Spredt næringsbebyggelse</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>5230</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#ccffcc</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>5300 - Naturvern</se:Name>
               <se:Description>
                  <se:Title>5300 - Naturvern</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>5300</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#00cc66</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>5400 - Jordvern</se:Name>
               <se:Description>
                  <se:Title>5400 - Jordvern</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>5400</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#00cc66</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>5500 - Særlige landskapshensyn</se:Name>
               <se:Description>
                  <se:Title>5500 - Særlige landskapshensyn</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>5500</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#00cc66</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>5600 - Vern av kulturminner og kulturmiljø</se:Name>
               <se:Description>
                  <se:Title>5600 - Vern av kulturminner og kulturmiljø</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>5600</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#00cc66</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>5900 - LNFR-formål kombinert med andre angitte hovedformål</se:Name>
               <se:Description>
                  <se:Title>5900 - LNFR-formål kombinert med andre angitte hovedformål</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>5900</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:GraphicFill>
                        <se:Graphic>
                           <se:ExternalGraphic>
                              <se:OnlineResource xlink:type="simple" xlink:href="https://dibk-plankart.azurewebsites.net/sld/gfx/arealformaal-5900.svg" />
                              <se:Format>image/svg+xml</se:Format>
                           </se:ExternalGraphic>
                           <se:Size>18</se:Size>
                           <se:Rotation>
                              <ogc:Literal>135</ogc:Literal>
                           </se:Rotation>
                        </se:Graphic>
                     </se:GraphicFill>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>6001 - Bruk og vern av sjø og vassdrag med tilhørende strandsone</se:Name>
               <se:Description>
                  <se:Title>6001 - Bruk og vern av sjø og vassdrag med tilhørende strandsone</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>6001</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#ccffff</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>6100 - Ferdsel</se:Name>
               <se:Description>
                  <se:Title>6100 - Ferdsel</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>6100</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#33ccff</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>6200 - Farled</se:Name>
               <se:Description>
                  <se:Title>6200 - Farled</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>6200</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#33ccff</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>6220 - Havneområde i sjø</se:Name>
               <se:Description>
                  <se:Title>6220 - Havneområde i sjø</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>6220</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#33ccff</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>6230 - Småbåthavn</se:Name>
               <se:Description>
                  <se:Title>6230 - Småbåthavn</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>6230</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#33ccff</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>6240 - Bøyehavn</se:Name>
               <se:Description>
                  <se:Title>6240 - Bøyehavn</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>6240</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#33ccff</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>6300 - Fiske</se:Name>
               <se:Description>
                  <se:Title>6300 - Fiske</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>6300</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#6699ff</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>6310 - Fiskebruk</se:Name>
               <se:Description>
                  <se:Title>6310 - Fiskebruk</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>6310</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#9966ff</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>6320 - Kaste- og låssettingsplasser</se:Name>
               <se:Description>
                  <se:Title>6320 - Kaste- og låssettingsplasser</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>6320</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#6699ff</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>6330 - Oppvekstområde for yngel</se:Name>
               <se:Description>
                  <se:Title>6330 - Oppvekstområde for yngel</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>6330</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#6699ff</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>6400 - Akvakultur</se:Name>
               <se:Description>
                  <se:Title>6400 - Akvakultur</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>6400</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#ffccff</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>6410 - Akvakulturanlegg i sjø og vassdrag</se:Name>
               <se:Description>
                  <se:Title>6410 - Akvakulturanlegg i sjø og vassdrag</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>6410</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#ffccff</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>6420 - Akvakulturanlegg i sjø og vassdrag med tilhørende landanlegg</se:Name>
               <se:Description>
                  <se:Title>6420 - Akvakulturanlegg i sjø og vassdrag med tilhørende landanlegg</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>6420</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#ffccff</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>6500 - Drikkevann</se:Name>
               <se:Description>
                  <se:Title>6500 - Drikkevann</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>6500</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#3399ff</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>6600 - Naturområde</se:Name>
               <se:Description>
                  <se:Title>6600 - Naturområde</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>6600</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#99ffff</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>6610 - Naturområde i sjø og vassdrag</se:Name>
               <se:Description>
                  <se:Title>6610 - Naturområde i sjø og vassdrag</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>6610</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#99ffff</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>6620 - Naturområde i sjø og vassdrag med tilhørende strandsone</se:Name>
               <se:Description>
                  <se:Title>6620 - Naturområde i sjø og vassdrag med tilhørende strandsone</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>6620</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#99ffff</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>6700 - Friluftsområde</se:Name>
               <se:Description>
                  <se:Title>6700 - Friluftsområde</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>6700</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#99ffff</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>6710 - Friluftsområde i sjø og vassdrag</se:Name>
               <se:Description>
                  <se:Title>6710 - Friluftsområde i sjø og vassdrag</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>6710</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#99ffff</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>6720 - Friluftsområde i sjø og vassdrag med tilhørende strandsone</se:Name>
               <se:Description>
                  <se:Title>6720 - Friluftsområde i sjø og vassdrag med tilhørende strandsone</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>6720</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#99ffff</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>6760 - Idrett/vannsport</se:Name>
               <se:Description>
                  <se:Title>6760 - Idrett/vannsport</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>6760</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#99ffff</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>6770 - Badeområde</se:Name>
               <se:Description>
                  <se:Title>6770 - Badeområde</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>6770</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#99ffff</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>6800 - Kombinerte formål i sjø og vassdrag med eller uten tilhørende strandsone</se:Name>
               <se:Description>
                  <se:Title>6800 - Kombinerte formål i sjø og vassdrag med eller uten tilhørende strandsone</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>6800</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:GraphicFill>
                        <se:Graphic>
                           <se:ExternalGraphic>
                              <se:OnlineResource xlink:type="simple" xlink:href="https://dibk-plankart.azurewebsites.net/sld/gfx/arealformaal-6800.svg" />
                              <se:Format>image/svg+xml</se:Format>
                           </se:ExternalGraphic>
                           <se:Size>18</se:Size>
                           <se:Rotation>
                              <ogc:Literal>135</ogc:Literal>
                           </se:Rotation>
                        </se:Graphic>
                     </se:GraphicFill>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>6900 - Angitt formål i sjø og vassdrag med eller uten tilhørende strandsone
kombinert med andre angitte hovedformål</se:Name>
               <se:Description>
                  <se:Title>6900 - Angitt formål i sjø og vassdrag med eller uten tilhørende strandsone
kombinert med andre angitte hovedformål</se:Title>
               </se:Description>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>arealformål</ogc:PropertyName>
                     <ogc:Literal>6900</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:GraphicFill>
                        <se:Graphic>
                           <se:ExternalGraphic>
                              <se:OnlineResource xlink:type="simple" xlink:href="https://dibk-plankart.azurewebsites.net/sld/gfx/arealformaal-6900.svg" />
                              <se:Format>image/svg+xml</se:Format>
                           </se:ExternalGraphic>
                           <se:Size>18</se:Size>
                           <se:Rotation>
                              <ogc:Literal>135</ogc:Literal>
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
