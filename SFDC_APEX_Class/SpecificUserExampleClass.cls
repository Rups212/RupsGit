public class SpecificUserExampleClass {

    
    public static void CheckLead(List<Lead> listofleads)
    {
        
        for(Lead varLead : listofleads)
        {
            if(UserInfo.getUserEmail() == 'bangarrupesh212@gmail.com')
            {
                varLead.Description ='Note: Lead are being created from Vender';
            }else{
                varLead.adderror('You are not allowed to create Lead !!');
            }
        }
    }
}