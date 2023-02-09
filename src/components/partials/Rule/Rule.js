import { useState } from 'react';
import { Button } from 'react-bootstrap';
import './Rule.scss';

function Rule({ rule, onMessageClick }) {
   const [expanded, setExpanded] = useState(false);
   const title = `${rule.id}: ${rule.name} (${rule.messages.length})`;

   function toggle() {
      setExpanded(!expanded);
   }

   return (
      <div className={`rule rule-${rule.messageType.toLowerCase()} ${!expanded ? 'rule-collapsed' : ''}`} role="button">
         <div className="rule-name" onClick={toggle}>
            <span title={title}>{title}</span>
         </div>
         <ol className="messages">
            {
               rule.messages.map((message, index) => {
                  const messageId = `${rule.id}-${index}`;

                  return (
                     message.gmlIds ?
                        <li key={messageId} className="link">
                           <Button variant="link" onClick={() => onMessageClick(message.gmlIds)}>{message.message}</Button>
                        </li> :
                        <li key={messageId} className="no-link">
                           <span>{message.message}</span>
                        </li>
                  );
               })
            }
         </ol>
      </div>
   );
}

export default Rule;