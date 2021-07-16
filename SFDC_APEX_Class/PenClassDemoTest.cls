@isTest
public class PenClassDemoTest {
    
    @isTest
    static void demo1()
    {
     
        List<Pen__c> bulkrecordlist =new List<Pen__c>();
        
        Pen__c p = new Pen__c();
        
        p.Pen_Customer_Name__c ='Rupesh';
        p.Price__c = 200;
        bulkrecordlist.add(p);

        Pen__c p1 = new Pen__c();
        
        p1.Pen_Customer_Name__c ='Amar';
        p1.Price__c = 200;
        bulkrecordlist.add(p1);        
        
        insert bulkrecordlist;
        
        system.debug('Inserted List of Records :'+bulkrecordlist);
        
        Id recordId = bulkrecordlist[0].id;
        
        system.debug('Record ID='+recordId);
        
        Pen__c insrtedRecord = [select Pen_Customer_Name__c,Price__c from Pen__c where Id =: recordId];
        
        system.debug('Inserted Record on Database :'+insrtedRecord);
        
        system.assertEquals(160,insrtedRecord.Price__c );
    }
}