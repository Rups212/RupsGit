public class RenderedControllerClass {
    
    
    public static list<Contact> contactlist {get;set;}
    public static boolean ShowpageBlockFlag {get;set;}
    
    public RenderedControllerClass()
    {
        contactlist =null;
        ShowpageBlockFlag =false;    
    }
    
    public static void showdata()
    {
        contactlist = [select Name,Email from Contact where email <> null limit 10];
    }
    
    public static void ShowBlockMethod()
    {
        ShowpageBlockFlag = true;
    }
}