trigger JobApplication_Trigger on Job_Application__c (before update) {
    
    if(trigger.isBefore)
    {
    	if(trigger.isUpdate == true )
    	{
  			JobApplication_checkTrigger.updateSalaryField(Trigger.New);
    	}
    }
    
  /*  system.debug('Triger Size ='+Trigger.size);
    if(trigger.isBefore)
    {
       system.debug('inside the is before');
   		
          if(trigger.isinsert)
   		 {
       		 system.debug('inside the is insert');  
             
             for(Job_Application__c varp : trigger.New)
             {
                if( varp.Name__c !='Rupesh')
                {
        
                    varp.Age__c =25;
                }else
                {
                    varp.Salary_Excepted__c =varp.Salary_Excepted__c+ 2000;
                }
   		 	  }
         }else if(trigger.isDelete)
   			 {
       		 	system.debug('inside the is delete');
             
            	 for(Job_Application__c varp : trigger.old)
             	{
                	if( varp.Name__c !='Rupesh')
                	{
                 	system.debug('Cant Delete ');
                	}
             	}
             
  		 	 }
    	 system.debug('Before Event');
    	system.debug('Trigger New'+trigger.new);
   		system.debug('Trigger old'+trigger.old);
    	system.debug('Trigger Newmap'+trigger.newMap);
    	system.debug('Trigger oldmap'+trigger.oldMap);
    }else if(trigger.isAfter)
    {
        system.debug('inside the is After');
        
        List<Employee__c> deal = new List<Employee__c>();
        
        for (Job_Application__c var : trigger.new)
        {
            deal.add(new Employee__c(Name = var.Name__c));
            system.debug('Cam in for loop');
        }
        insert deal;
    }*/
}