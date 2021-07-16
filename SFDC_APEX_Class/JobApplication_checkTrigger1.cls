@isTest
public class JobApplication_checkTrigger1 {

    @isTest
    public static void updateSalaryField()
    {
        
       Job_Application__c varp =new Job_Application__c();
        
            if(varp.Name__c != null)
            {            
                if(!(varp.Name__c =='Rupesh' || varp.Name__c =='Mahesh') && (varp.Salary_Excepted__c >= 50000))
                {
                    //varp.Trigger_Called__c =Trigger.new.size();  
                    varp.Salary_Excepted__c = varp.Salary_Excepted__c + (varp.Salary_Excepted__c *10/100);
                }else
                {
                    varp.Salary_Excepted__c = varp.Salary_Excepted__c + (varp.Salary_Excepted__c *20/100);
                }               
            }
    }
}