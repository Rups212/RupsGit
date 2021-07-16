public class ActionTagsController_FunctionClass {
    
    public Account Acc {get;set;}
    public Boolean showFax {get;set;}
    
    public ActionTagsController_FunctionClass()
    {
        acc = new Account();
        showFax = false;
    }
    public void PriorityChanged()
    {
        if(Acc.CustomerPriority__c == 'High'){
            showFax = true;
        }else
        {
            showFax = false;
        }
    }
    

}