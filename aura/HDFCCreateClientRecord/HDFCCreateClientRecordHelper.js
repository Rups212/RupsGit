({
	helperMethod : function(component, event,helper,varClient) {
		
        //calling the Apex function
        var action = component.get("c.createRecord");
        
        //setting the Apex Parameter
        action.setParams({
            
            client : varClient
        });
        
        //setting the callback
        action.setCallback(this,function(response){
           
            var state = response.getState();
            
            if(state == "SUCCESS")
            {
                //Reset Form
                var newEmptyClientRec = {'sobjectType' : 'HDFC_Customer_Details__c',
                                         'First_Name__c' : '',
                            			 'Last_Name__c' :'',
                            			 'Email__c' : '',
                          			     'Monthly_Salary__c' : '' 		
                						};
                
                //Resetting values in the form
                component.set("v.client",newEmptyClientRec);
                alert('Record created successfully');
            }
            else if(state == "ERROR")
            {
                alert('Error is calling server side action');
            }
            
        });
        
        //add the server side action to the queue
        $A.enqueueAction(action);
	}
})