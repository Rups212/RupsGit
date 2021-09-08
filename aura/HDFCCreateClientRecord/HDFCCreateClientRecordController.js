({
	createClient : function(component, event, helper) {
		
        //for log
        console.log('In create record function');
        
        //getting the candidate info
        var varClient = component.get("v.client");
        
        //validation
        if($A.util.isEmpty(varClient.First_Name__c) || $A.util.isUndefined(varClient.First_Name__c))
        {
            alert ('First Name is required');
        	return;
        }
            
        
        if($A.util.isEmpty(varClient.Last_Name__c) || $A.util.isUndefined(varClient.Last_Name__c))
        {
            alert('Last Name is required');
        	return;
        }  
        
        //calling the helper 
        helper.helperMethod(component, event,helper,varClient);
        
	}
})