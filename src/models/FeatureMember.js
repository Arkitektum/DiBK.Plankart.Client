class FeatureMember {
   constructor(name, options = {}) {
      const { sld, zIndex, showLegend = true } = options;
      this.name = name;
      this.sld = sld;      
      this.zIndex = zIndex;
      this.showLegend = showLegend;
   }
}

export default FeatureMember;