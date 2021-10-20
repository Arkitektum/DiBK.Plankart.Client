import FeatureMember from 'models/FeatureMember';

const featureMembers = [
   new FeatureMember('RpOmråde'),
   new FeatureMember('RpArealformålOmråde', { infoProps: ['arealformål', 'feltnavn', 'eierform'] }),
   new FeatureMember('RpBestemmelseOmråde'),
   new FeatureMember('RpAngittHensynSone'),
   new FeatureMember('RpSikringSone'),
   new FeatureMember('RpFareSone', { infoProps: ['hensynSonenavn', 'fare']}),
   new FeatureMember('RpInfrastrukturSone'),
   new FeatureMember('RpStøySone'),
   new FeatureMember('RpBåndleggingSone'),
   new FeatureMember('RpDetaljeringSone'),
   new FeatureMember('RpGjennomføringSone'),
   new FeatureMember('RpJuridiskLinje', { infoProps: ['juridisklinje'] }),
   new FeatureMember('RpGrense', { showLegend: false }),
   new FeatureMember('RpFormålGrense'),
   new FeatureMember('RpPåskrift', { infoProps: ['tekststreng', 'påskriftType'], showLegend: false }),
];

export default featureMembers;