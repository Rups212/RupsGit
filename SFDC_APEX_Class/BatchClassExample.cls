global class BatchClassExample implements database.Batchable<sObject> {
    
    global database.QueryLocator start(Database.BatchableContext bc){
        
        string query = 'select description from account';
        return Database.getQueryLocator(query);
        
       // return database.getQueryLocator('select description from account');
    }
    global void execute(Database.BatchableContext bc, List<Account> acclist){
        
        for( Account acc : acclist){
            
            if(acc.description =='Not available'){
                acc.Description= 'Please fill details else account transction will be made inactive';
            }
            update acclist;
        }
    }
    
    global void finish(Database.BatchableContext bc){
        
        //code for sending email
        //performing Signature Activity
        //For calling another batch class
        //Sending SMS
        
    }

}