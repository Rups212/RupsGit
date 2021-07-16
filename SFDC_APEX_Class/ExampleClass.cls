public with sharing class ExampleClass {

    public string UserName{set;get;}
    public string message {set;get;}
    
    public void showMessage()
    {
        message = 'Welcome ' + UserName;
    }
    
}