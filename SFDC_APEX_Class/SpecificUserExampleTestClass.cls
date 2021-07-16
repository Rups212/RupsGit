@isTest
public class SpecificUserExampleTestClass {

    @isTest
    public static void testFunction()
    {
        
        Profile profile = [select Id from Profile where name ='Branch Manager'];
        
        User user1 = new User();
        user1.FirstName ='James';
        user1.LastName ='adzc';
        user1.ProfileId =Profile.id;
        user1.Username ='bangarrupesh212@gmail.com';
        user1.Email ='bangarrupesh212@gmail.com';
        user1.EmailEncodingKey ='UTF-8';
        user1.LanguageLocaleKey ='en_US';
        user1.LocaleSidKey ='en_US';
        user1.TimeZoneSidKey ='America/New_York';
        user1.Alias ='asfcx';
        
        insert user1;
        
        System.runAs(user1){
            
            Lead l = new Lead();
            l.FirstName= 'k';
            l.LastName ='ws';
            l.Company ='adczx';
            
            insert l;
            
            system.assertNotEquals(l.Id, null);
            system.debug('L.Id ='+l.Id);
            
        }
        
    }
}