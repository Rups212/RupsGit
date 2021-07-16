public class ConfidentialDealClass {
    
    @invocablemethod
    public static void deleteCreatedRecord(List<Id> IdList)
    {
       
       List<Confidential_Deals__c>  con = [select Id from Confidential_Deals__c where Id In: IdList];
        system.debug('Id ='+IdList);
        
 
        //delete con;
    }

}