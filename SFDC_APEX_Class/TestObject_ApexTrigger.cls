public class TestObject_ApexTrigger {
    
    public static void beforeInsert(List<Test_Object__c> newList)
    {
        for(Test_Object__c varp : newList)
        {
            varp.Test__c = 'Inserted';
        }
    }
    public static void beforeUpdate()
    {
        system.debug('Before update  called');
    }
    public static void beforeDelete()
    {
        system.debug('Before Insert  called');
    }
    public static void afterInsert(List<Test_Object__c> newList1)
    {
        List<Job_Application__c> appInsert = new List<Job_Application__c>();
        
        for(Test_Object__c Acc : newList1)
        {
        	Job_Application__c opp =new Job_Application__c();
           
            opp.Name__c = acc.Test__c;
            opp.Trigger_Called__c =acc.Id;
            
            appInsert.add(opp);
                  
        }
        if(!appInsert.isEmpty())
        {
            Insert appInsert;
        }
               
    }
    public static void afterUpdate(list<Test_Object__c> newList1)
    {
         List<Job_Application__c> appUpdate = new List<Job_Application__c>();
        
        for(Test_Object__c Acc : newList1)
        {
        	Job_Application__c opp =new Job_Application__c( Name__c = Acc.Test__c);
           
            if(acc.Test__c != null)
            {
               opp.Salary_Excepted__c= 65000;
            }
            
            appUpdate.add(opp); 
                   
        }
        if(!appUpdate.isEmpty())
        {
            update appUpdate;
        }
    }
    public static void afterDelete()
    {
        system.debug('After Delete  called');
    }
}