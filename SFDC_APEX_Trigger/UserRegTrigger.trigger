trigger UserRegTrigger on User_Registration__c (before insert, before update) {

     if(trigger.isbefore && trigger.isinsert){
        
         UserRegApex.checkCardType(trigger.new);
    }/*else if(trigger.isbefore && trigger.isupdate){
        
       //  UserRegApex.checkCardTypeupdate(trigger.new, trigger.oldmap);
    }*/
}