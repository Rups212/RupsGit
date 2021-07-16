public class JobApplication_checkTrigger {

    
    public static void updateSalaryField(List<Job_Application__c> varList)
    {
        
        for (Job_Application__c varP : varList)
        {
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
     public static void jobAppSize(integer varS)
     {
         
     }
    
}