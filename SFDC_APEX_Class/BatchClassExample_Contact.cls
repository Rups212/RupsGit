global class BatchClassExample_Contact implements Database.Batchable<sObject>{
    
    global Database.QueryLocator start(Database.BatchableContext bc){
        
        String q = 'select Id,Level__c,Languages__c from contact';
        return Database.getQueryLocator(q);
    }
    global void execute(Database.BatchableContext bc, List<Contact> conList){
        
        for(Contact c : conlist){
            
            if(c.Level__c == 'primary'){
                c.Languages__c ='Marathi';
            }else if(c.Level__c == 'secondary'){
                c.Languages__c ='Hindi';
            }else{
                c.Languages__c ='English';
            }
        }
        update conlist;
        
    }
    global void finish(Database.BatchableContext bc){
        
    }
    

}