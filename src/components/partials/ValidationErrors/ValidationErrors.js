import React, { useState } from 'react';
import { Button } from 'react-bootstrap';
import { useDispatch } from 'react-redux';
import { selectFeature } from 'store/slices/featureSlice';
import './ValidationErrors.scss';

function ValidationErrors({ mapDocument }) {
   const [selected, setSelected] = useState(null);
   const dispatch = useDispatch();
   const rules = mapDocument?.validationResult.rules || [];

   function handleMessageClick(messageId, gmlIds) {
      if (messageId !== selected) {
         setSelected(messageId);
      } else {
         setSelected(null);
      }

      dispatch(selectFeature({ id: gmlIds[0], select: messageId !== selected }));
   }

   if (!rules.length) {
      return;
   }

   return (
      <React.Fragment>
         <h4>Valideringsfeil</h4>
         {
            rules.map(rule => {
               return (
                  <div key={rule.id}>
                     <div>{rule.name}</div>
                     <ol className="messages">
                        {
                           rule.messages.map((message, index) => {
                              const messageId = `${rule.id}-${index}`;

                              return (
                                 <li key={messageId} className={messageId === selected ? 'selected' : ''}>
                                    <Button variant="link" onClick={() => handleMessageClick(messageId, message.gmlIds)}>{message.message}</Button>
                                 </li>
                              )
                           })
                        }
                     </ol>
                  </div>
               );
            })
         }
      </React.Fragment>
   );
}

export default ValidationErrors;