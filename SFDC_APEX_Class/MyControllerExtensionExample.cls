public class MyControllerExtensionExample {
    
    private Account accVar;
    public string Message{set;get;}
    public string variableForStoringAccountName{set;get;}
    
    public MyControllerExtensionExample(ApexPages.StandardController controller)
    {
        
    }
    
    public void showGreeting()
    {
        Message = 'Welcome to Extension Demo';
    }
    
    public void mysave()
    {
        Account varAcc = new Account();
        varAcc.Name = variableForStoringAccountName;
        varAcc.Industry ='Chemical';
        
        insert varAcc;
        
        
    }

}