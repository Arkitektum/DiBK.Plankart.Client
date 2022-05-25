import FeatureMember from 'models/FeatureMember';

const featureMembers = [
   new FeatureMember('RpOmråde', {
      sld: 'https://register.geonorge.no/register/kartografi/files/rpomrade_wms-qgis-esri_v1.sld'
   }),
   new FeatureMember('RpArealformålOmråde', { 
      sld: 'https://register.geonorge.no/register/kartografi/files/rparealformalomrade_wms-qgis-esri_v1.sld',
      infoProps: ['arealformål', 'feltnavn', 'eierform'] }
   ),
   new FeatureMember('RpBestemmelseOmråde', { 
      sld: 'https://register.geonorge.no/register/kartografi/files/rpbestemmelseomrade_wms-qgis-esri_v1.sld',
      zIndex: 1,
      infoProps: ['bestemmelseOmrådeNavn']
   }),
   new FeatureMember('RpBestemmelseMidlByggAnlegg', { 
      sld: 'https://register.geonorge.no/register/kartografi/files/rpbestemmelsemidlbygganlegg_wms-qgis-esri_v1.sld',
      zIndex: 1,
      infoProps: ['bestemmelseOmrådeNavn']
   }),
   new FeatureMember('RpAngittHensynSone', { 
      sld: 'https://register.geonorge.no/register/kartografi/files/rpangitthensynsone_wms-qgis-esri_v1.sld',
      zIndex: 1,
      infoProps: ['hensynSonenavn', 'angittHensyn']
   }),
   new FeatureMember('RpBåndleggingSone', { 
      sld: 'https://register.geonorge.no/register/kartografi/files/rpbandleggingsone_wms-qgis-esri_v1.sld', 
      zIndex: 1,
      infoProps: ['hensynSonenavn', 'båndlegging']
   }),
   new FeatureMember('RpDetaljeringSone', { 
      sld: 'https://register.geonorge.no/register/kartografi/files/rpdetaljeringsone_wms-qgis-esri_v1.sld',
      zIndex: 1,
      infoProps: ['hensynSonenavn', 'detaljering']
   }),
   new FeatureMember('RpFareSone', { 
      sld: 'https://register.geonorge.no/register/kartografi/files/rpfaresone_wms-qgis-esri_v1.sld',
      zIndex: 1, 
      infoProps: ['hensynSonenavn', 'fare']
   }),
   new FeatureMember('RpGjennomføringSone', { 
      sld: 'https://register.geonorge.no/register/kartografi/files/rpgjennomforingsone_wms-qgis-esri_v1.sld',
      zIndex: 1,
      infoProps: ['hensynSonenavn', 'gjennomføring'],
   }),
   new FeatureMember('RpInfrastrukturSone', { 
      sld: 'https://register.geonorge.no/register/kartografi/files/rpinfrastruktursone_wms-qgis-esri_v1.sld',
      zIndex: 1,
      infoProps: ['hensynSonenavn', 'infrastruktur']
   }),
   new FeatureMember('RpSikringSone', { 
      sld: 'https://register.geonorge.no/register/kartografi/files/rpsikringsone_wms-qgis-esri_v1.sld',
      zIndex: 1,
      infoProps: ['hensynSonenavn', 'sikring']
   }),
   new FeatureMember('RpStøySone', { 
      sld: 'https://register.geonorge.no/register/kartografi/files/rpstoysone_wms-qgis-esri_v1.sld',
      zIndex: 1,
      infoProps: ['hensynSonenavn', 'støy']
   }),
   new FeatureMember('RpRegulertHøyde', { 
      sld: 'https://register.geonorge.no/register/kartografi/files/rpregulerthoyde_wms-qgis-esri_v1.sld',
      zIndex: 2 
   }),
   new FeatureMember('RpFormålGrense', {
      sld: 'https://register.geonorge.no/register/kartografi/files/rpformalgrense_wms-qgis-esri_v1.sld',
      zIndex: 2
   }),
   new FeatureMember('RpJuridiskLinje', { 
      sld: 'http://register.geonorge.no/register/kartografi/files/rpjuridisklinje_wms-qgis-esri_v1.sld',
      zIndex: 2, 
      infoProps: ['juridisklinje'] 
   }),
   new FeatureMember('RpJuridiskPunkt', { 
      sld: 'https://register.geonorge.no/register/kartografi/files/rpjuridiskpunkt_wms-qgis-esri_v1.sld',
      zIndex: 3, 
      infoProps: ['juridiskpunkt'] 
   }),
   new FeatureMember('RpGrense', { 
      /* Lokal versjon satt til "transparent": */
      sld: 'https://dibk-plankart.azurewebsites.net/sld/RpGrense.sld',
      showLegend: false 
   }),
   new FeatureMember('RpPåskrift', { 
      sld: 'https://register.geonorge.no/register/kartografi/files/rppaskrift_wms-qgis-esri_v1.sld',
      zIndex: 3, 
      infoProps: ['tekststreng', 'påskriftType'], 
      showLegend: false 
   })
];

export default featureMembers;