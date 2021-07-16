public class RerenderControllerClass {

    public string UserName {get;set;}
    public string Message {get;set;}
    
    public void showMessage()
    {
        Message = 'WelCome' + UserName;
    }
}