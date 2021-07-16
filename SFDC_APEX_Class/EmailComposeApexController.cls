public class EmailComposeApexController {
    
    public string toMail{set;get;}
    public string ccMail{set;get;}
    public string repMail{set;get;}
    public string checkMailStatus{set;get;}

    
    public void EmailDemo()
    {
        Messaging.SingleEmailMessage email = new Messaging.SingleEmailMessage();
        string[] to = new string[]{toMail} ;
        string[] cc = new string[]{ccMail};
        
            if(toMail!= null && toMail != ''){
                email.setToAddresses(to);
            }
            if(ccMail!= null && ccMail != ''){
                email.setCCAddresses(cc);
            }
            if(repMail!= null && repMail != ''){
                email.setReplyTo(repMail);
            }        
        
        email.setSubject('Congrat !! Your order is approved');
        
        email.setHtmlBody('Dear Customer <br/><br/> This is auto generated mail, <br/> your order is placed, thanks for the service.<br/><br/> Regards,<br/><br/>Amazon.com');
        
        try{
            
            
            Messaging.sendEmail(new Messaging.SingleEmailMessage[]{email});
            checkMailStatus= 'Mail has been sent successufully   '+ to;
       		toMail='';
        	ccMail='';
        	repMail='';
           
                
        }catch(Exception e){
            system.debug('The message related to error :'+e.getMessage());
            checkMailStatus ='Mail has not sent due to '+e.getMessage();     
        }     
    }
     	public void clearData()
        {
        	toMail='';
        	ccMail='';
        	repMail='';
        	checkMailStatus='';
        }
    
    public Pagereference gotonewpageCalculator()
    {     
     /*PageReference pageRef = Page.Calculator;
     pageRef.getParameters().put('msg','success');
     return PageRef;*/
        
         PageReference pageRef = new PageReference('apex/calculator');
        pageref.setRedirect(true);
        return pageRef;
     }
    
   
}