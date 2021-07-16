public class Account_ApexTrigger {

    public static void afterInsert(List<Account> newlist)
    {
        List<Opportunity> oppInsert = new List<Opportunity>();
        
        for(Account acc : newlist)
        {
             Opportunity opp = new Opportunity();
            	opp.Name = acc.Name;
            opp.AccountId = acc.Id;
            opp.StageName ='Prospecting';
            opp.CloseDate =date.today();
            
            oppInsert.add(opp);
        }
        if(!oppInsert.isEmpty())
        {
            Insert oppInsert;
        }
        system.debug('DML:'+ Limits.getDmlStatements());
        
    }
    public static void beforeUpdate(List<Account> newlist,MAP<Id, Account> oldMap)
    {
        for(Account acc : newlist)
        {
            if(oldMap != null && acc.Phone != oldMap.get(acc.Id).Phone)
            {
                acc.Description ='Phone is modified on Account';
            }
        }
        
        
    }
    public static void afterUpdate(List<Account> newlist,MAP<Id, Account> oldMap)
    {
        //add new updated details in map by hcecking ID
        Map<Id,Account> accIdToAccMap = new Map<Id,Account>();
        
        //add account record update to opp list
		List<Opportunity> oppToBeUpdated = new List<Opportunity>();
        
        
		for(Account acc : newlist)
        {
            //checked here record already present or not and phone is same or diff
            if(oldMap != null && acc.Phone != oldMap.get(acc.Id).phone)
            {
                //added newly updated values of acc record to Map
                accIdToAccMap.put(acc.Id,acc);
            }
        }
        
        //query to check opp record for same record ID i.e Acc ID
        //List<Opportunity>   oppList = [select Id,Account_Phone__c,AccountId from Opportunity where AccountId IN :accIdToAccMap.keyset()];
        
       // system.debug('Account Keyset : '+accIdToAccMap.keyset() + ' and opp list from DB '+oppList);
        
        for(Opportunity opp : [select Id,Account_Phone__c,AccountId from Opportunity where AccountId IN :accIdToAccMap.keyset()])
        {
            Opportunity oppor = new Opportunity();
            
            //checked that key is present or not in opp
            if(accIdToAccMap.containskey(opp.AccountId)){
            oppor.Id = opp.Id;
            oppor.Account_Phone__c = accIdToAccMap.get(opp.AccountId).Phone;
            oppToBeUpdated.add(opp);
            }
        }
        if(!oppToBeUpdated.isEmpty())
        {
            //updated opp record 
            update oppToBeUpdated;
        }
    }
    
}