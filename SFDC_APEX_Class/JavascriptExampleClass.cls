public class JavascriptExampleClass {

    public String recId{get;set;}
    public List<Account> VarAccount{set;get;}
    public List<Contact> VarContact{set;get;}
    public List<Opportunity> VarOppotunities{set;get;}
    
    public JavascriptExampleClass()
    {
        VarAccount = [select Id,Name,Phone,BillingStreet,BillingCity from Account limit 10];
        VarContact = null;
        VarOppotunities =null;
    }
    
    public void show()
    {
        VarContact = [SELECT Id,AccountId , FirstName,LastName,Email from Contact where AccountId=: recId];
        VarOppotunities =[SELECT Id , Name,StageName,CloseDate from Opportunity where AccountId =:recId];
        system.debug('COntact:'+VarContact);
  
    }
}