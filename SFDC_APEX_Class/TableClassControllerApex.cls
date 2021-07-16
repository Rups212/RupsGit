public class TableClassControllerApex {

   public static List<Contact> contactList {get;set;}
    
    public TableClassControllerApex(){
        
        contactList = null;
    }
    
    public static void showData()
    {
        contactList = [select Name, Email from Contact where email <> null limit 20];
    }
    
    
    
}