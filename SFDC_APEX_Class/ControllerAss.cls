public class ControllerAss {
    
    public string Fname{set;get;}
    public string Lname{set;get;}
    public string MessageFname{set;get;}
    public string MessageFullName{set;get;}
    
    public void showFname()
    {
        MessageFname ='Welcome ' +Fname;
    }
    
    public void showFullName()
    {
        MessageFullName= 'Welcome ' + Fname + ' '+ Lname;
    }
    
    public void resetDetails()
    {
        MessageFname = '';
        MessageFullName ='';
        Fname =''; Lname='';
        
    }
}