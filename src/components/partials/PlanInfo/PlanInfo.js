import './PlanInfo.scss';

function PlanInfo({ mapDocument }) {
   if (!mapDocument) {
      return null;
   }

   return (
      <div className="plan-info box">
         <div className="box-header">{mapDocument.planType} for</div>
         <div className="box-content">
            <span className="name">{mapDocument.name}</span>
            <span className="id">Arealplan-ID: {mapDocument.id}</span>
         </div>
      </div>
   );
}

export default PlanInfo;