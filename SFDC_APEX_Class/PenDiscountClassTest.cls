@isTest
public class PenDiscountClassTest {

	@isTest
    Static void TestFunctionInsert1()
    {

        
        
        for (integer i=1; i<=152; i++){
        Pen__c pen= new Pen__c();
        pen.Pen_Customer_Name__c='Rupesh';
        pen.Price__c =500+i;
        
        insert pen;
        }
        Pen__c pen1= new Pen__c();
        //pen1=[select Price__c from Pen__c where Id =:pen.Id];
       
        system.assertEquals(460, pen1.Price__c);
    }
     @isTest
    Static void TestFunctionInsert2()
    {
     
        Pen__c pen= new Pen__c();
        
        pen.Pen_Customer_Name__c='Rupesh';
        pen.Price__c =80;
        
        insert pen;
        
        Pen__c pen1= new Pen__c();
        pen1=[select Price__c from Pen__c where Id =:pen.Id];
        
        system.assertEquals(50, pen1.Price__c);
    }
     @isTest
    Static void TestFunctionInsert3()
    {
     
        Pen__c pen= new Pen__c();
        
        pen.Pen_Customer_Name__c='Rupesh';
        pen.Price__c =50;
        
        insert pen;
        
        Pen__c pen1= new Pen__c();
        pen1=[select Price__c from Pen__c where Id =:pen.Id];
        
        system.assertEquals(30, pen1.Price__c);
    }
     @isTest
    Static void TestFunctionInsert4()
    {
     
        Pen__c pen= new Pen__c();
        
        pen.Pen_Customer_Name__c='Rupesh';
        pen.Price__c =30;
        
        insert pen;
        
        Pen__c pen1= new Pen__c();
        pen1=[select Price__c from Pen__c where Id =:pen.Id];
        
        system.assertEquals(20, pen1.Price__c);
    }
    @isTest
    Static void TestFunctionInsert5()
    {
     
        Pen__c pen= new Pen__c();
        
        pen.Pen_Customer_Name__c='Rupesh';
        pen.Price__c =15;
        
        insert pen;
        
        Pen__c pen1= new Pen__c();
        pen1=[select Price__c from Pen__c where Id =:pen.Id];
        
        system.assertEquals(15, pen1.Price__c);
    }
    @isTest
    Static void TestFunctionUpdate()
    {
     
        Pen__c pen= new Pen__c();
        
        pen.Pen_Customer_Name__c='Rupesh';
        pen.Price__c =150;
        
        insert pen;
        
        pen.Price__c = 100;
        update pen;
        
        Pen__c pen1= new Pen__c();
        pen1=[select Price__c from Pen__c where Id =:pen.Id];
        
        system.assertEquals(50, pen1.Price__c);
    }
    @isTest
    Static void TestFunctionDelete()
    {
     
        Pen__c pen= new Pen__c();
        
        pen.Pen_Customer_Name__c='Rupesh';
        pen.Price__c =150;
        
        insert pen;
               
        delete pen;
 
    }
}