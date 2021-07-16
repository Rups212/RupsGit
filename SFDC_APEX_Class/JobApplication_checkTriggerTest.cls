@isTest
public class JobApplication_checkTriggerTest {

    @isTest
    static void function1()
    {
        Job_Application__c j= new Job_Application__c();
        
        j.Name__c ='Rupesh';
        j.Salary_Excepted__c = 50000;
        
		System.Test.startTest();        
        update j;
        System.Test.stopTest();
        
        Job_Application__c j1= new Job_Application__c();
        j1 = [select Salary_Excepted__c from Job_Application__c where Name__c=: j.Name__c];
            
        system.assertEquals(60000, j1.Salary_Excepted__c);
        
    }
}