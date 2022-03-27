class FeatureMember {
   constructor(name, options = {}) {
      const { sld, zIndex, infoProps, showLegend = true } = options;
      this.name = name;
      this.sld = sld;      
      this.infoProps = infoProps;
      this.zIndex = zIndex;
      this.showLegend = showLegend;
   }
}

export default FeatureMember;