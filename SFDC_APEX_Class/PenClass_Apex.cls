public class PenClass_Apex {
    
    private static double checkDiscount =10;
    
    public static void DiscountPenBeforeInsert(List<Pen__c> newPenList)
    {
        
        for(Pen__c varP : newPenList)
        {      
            
            if(varp.Pen_Customer_Name__c != null && varp.Price__c >=100){
                
            	 	varp.Price__c = varp.Price__c - 40;
            }else if(varp.Price__c >=75 && varp.Price__c <=100)
            {
                varp.Price__c = varp.Price__c - 30;
                checkDiscount = checkDiscount + varp.Price__c ;
                system.debug('Checkdiscount Value :'+checkdiscount);
                
            }else if(varp.Price__c >=40 && varp.Price__c <=75)
            {
                varp.Price__c = varp.Price__c - 20;
            }else if(varp.Price__c >=20 && varp.Price__c <=40)
            {
                varp.Price__c = varp.Price__c - 10;
            }else if(varp.Price__c >=01 && varp.Price__c <=20)
            {
                varp.Price__c = varp.Price__c ;
            }
            
            
        }
    }
    public static void DiscountPenBeforeUpdate(List<Pen__c> newList, Map<Id,Pen__c> oldmapList)
    {
        
           
        for(Pen__c varp : newList)
        {
            if(oldmapList != null && varp.Price__c!= oldmapList.get(varp.Id).Price__c)
            {
           		 varp.Price__c = varp.Price__c -50;
            }
        }
    }
    
    public static void DiscountPenBeforeDelete(List<Pen__c> oldlist)
    {
        for(Pen__c varp : oldlist)
        {
            if(varp.Active__c == true)
            {
                varp.adderror('Record cant be deleted');
            }
        }
    }
    
    public static void DiscountPenAfterInsert(List<Pen__c> newList)
    {
        List<Job_Application__c> jobapplist = new List<Job_Application__c>();
        
        for(Pen__c penNewlist : newList)
        {
        	Job_Application__c  varjobApp =new Job_Application__c();
            
            varjobapp.Name__c            = penNewlist.Pen_Customer_Name__c;
            varjobapp.Salary_Excepted__c = penNewlist.Price__c;
            
            jobapplist.add(varjobapp);
        }
        system.debug('upaded list:'+jobapplist);
        
        if(!jobapplist.isEmpty())
        {
            insert jobapplist;
        }
    }
    
   /* public static void DiscountPenAfterUpdate(List<Pen__c> newlist, Map<Id,Pen__c> oldmapList)
    {
        Map<ID, Pen__c> penMapList = new Map<Id,Pen__c>();
        
        List<Job_Application__c> jobAppoldlist = new List<Job_Application__c>();
        
        for(Pen__c varPenlist : newlist)
        {
            
            system.debug('Pen Price:'+varPenlist.Price__c +' and jobApp ='+oldmaplist.get(varpenlist.Id).Price__c);
            
                         
            if(oldmaplist != null && varPenlist.Price__c != oldmaplist.get(varpenlist.Id).Price__c)
            {
                penMapList.put(varPenlist.Id,varPenlist);
            }
            
            
        }
        
        jobAppoldlist= [select 	Salary_Excepted__c,	Name__c, Id from Job_Application__c where Name__c IN :penMapList.keyset() ];
        
        system.debug('Old Jpb App List :'+jobAppoldlist);
        
        for(Job_Application__c jobapplist : jobAppoldlist)
        {
            
        }
        
    }*/
}