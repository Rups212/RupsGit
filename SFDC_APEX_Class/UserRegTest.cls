@isTest
public class UserRegTest {
    
    @isTest
    public static void TestFun1(){
        
        User_Registration__c user = new User_Registration__c();
        
        user.First_Name__c ='Rupesh';
        user.Middle_Name__c= 'BAC';
        user.Last_Name__c ='Bangar';
        user.Types_of_Credit_Card__c ='International';
        user.Passport_Number__c ='abc123';
        user.Income_Range__c ='Above 100000'; 
        user.Income_Monthly__c = 50000;
        
        
        insert user;
        
        User_Registration__c user1 = new User_Registration__c();
        user1 = [select Income_Monthly__c from User_Registration__c where Id  =: user.Id];
        
        system.assertEquals( 200000, user1.Income_Monthly__c);
        
    }
    
     @isTest
    public static void TestFun2(){
        
        User_Registration__c user = new User_Registration__c();
        
        user.First_Name__c ='Rupesh';
        user.Middle_Name__c= 'BAC';
        user.Last_Name__c ='Bangar';
        user.Types_of_Credit_Card__c ='International';
        user.Passport_Number__c ='abc123';
        user.Income_Range__c ='50001 to 100000';
        user.Income_Monthly__c = 35000;
        
        
        insert user;
        
        User_Registration__c user1 = new User_Registration__c();
        user1 = [select Income_Monthly__c from User_Registration__c where Id  =: user.Id];
        
        system.assertEquals( 60000, user1.Income_Monthly__c);
    }
    
         @isTest
    public static void TestFun3(){
        
        User_Registration__c user = new User_Registration__c();
        
        user.First_Name__c ='Rupesh';
        user.Middle_Name__c= 'BAC';
        user.Last_Name__c ='Bangar';
        user.Types_of_Credit_Card__c ='International';
        user.Passport_Number__c ='abc123';
        user.Income_Range__c ='30001 to 50000';
        user.Income_Monthly__c = 25000;
        
        
        insert user;
        
        User_Registration__c user1 = new User_Registration__c();
        user1 = [select Income_Monthly__c from User_Registration__c where Id  =: user.Id];
        
        system.assertEquals( 35000, user1.Income_Monthly__c);
    }
    
        @isTest
    public static void TestFun4(){
        
        User_Registration__c user = new User_Registration__c();
        
        user.First_Name__c ='Rupesh';
        user.Middle_Name__c= 'BAC';
        user.Last_Name__c ='Bangar';
        user.Types_of_Credit_Card__c ='International';
        user.Passport_Number__c ='abc123';
        user.Income_Range__c ='Less than 30000';
        user.Income_Monthly__c = 500;
        
        
        insert user;
        
        User_Registration__c user1 = new User_Registration__c();
        user1 = [select Income_Monthly__c from User_Registration__c where Id  =: user.Id];
        
        system.assertEquals( 500, user1.Income_Monthly__c);
    }
}