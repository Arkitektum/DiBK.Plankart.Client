import FeatureMember from 'models/FeatureMember';

const plankartConfig = [
   new FeatureMember('RpOmråde'),
   new FeatureMember('RpArealformålOmråde', { infoProps: ['arealformål', 'feltnavn', 'eierform'] }),
   new FeatureMember('RpBestemmelseOmråde'),
   new FeatureMember('RpAngittHensynSone'),
   new FeatureMember('RpSikringSone'),
   new FeatureMember('RpFareSone'),
   new FeatureMember('RpInfrastrukturSone'),
   new FeatureMember('RpStøySone'),
   new FeatureMember('RpBåndleggingSone'),
   new FeatureMember('RpDetaljeringSone'),
   new FeatureMember('RpGjennomføringSone'),
   new FeatureMember('RpJuridiskLinje', { infoProps: ['juridisklinje'] }),
   new FeatureMember('RpGrense', { showLegend: false }),
   new FeatureMember('RpFormålGrense'),
   new FeatureMember('RpPåskrift', { showLegend: false }),
   //new FeatureMember('RpJuridiskPunkt')
];

export default plankartConfig;