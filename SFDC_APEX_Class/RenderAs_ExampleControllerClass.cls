public class RenderAs_ExampleControllerClass {

    
    public static list<Contact> contactlist {get;set;}
    public static list<Account> Acclist {get;set;}
    
    public RenderAs_ExampleControllerClass()
    {
        contactlist =null;
        Acclist =null;
    }
    
    public void showdata()
    {
        contactlist = [select Name, MailingCity, Phone from Contact where Phone <> null limit 10];
        showdata1();
    }
     
    public void showdata1()
    {
        acclist = [select Name, AccountNumber, Phone from Account where Phone <> null limit 10];
    }
     
}