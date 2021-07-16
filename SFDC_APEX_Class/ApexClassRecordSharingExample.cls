public class ApexClassRecordSharingExample {

    
    public  void ShareRecord()
    {
        Product__share productRecordShare = new Product__share();
        
        Product__c record = [select Id from Product__c where Product_Name__c =:'Keeny_Pen'];
        
        //system.debug('ID ='+ record);
        productRecordShare.ParentId = record.id;
        
        User varU =[select Id from User where firstname ='Tom'];
        productRecordShare.UserOrGroupId =varU.id;
        
        productRecordShare.AccessLevel='Read';
        
        Database.insert(productRecordShare,true);
        
    }
}