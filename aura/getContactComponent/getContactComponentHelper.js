({
    
    CreateContact_helper : function(component, event, helper,conlist)
    {
       var action = component.get("c.insertRecord");
        
        action.setParams({
        
            con : conlist
        });
        
        action.setCallback(this,function(resp){
           
            var state = resp.getState();
            
            if(state == "SUCCESS")
            {
                var emptyConList = {'sobjectType' : 'Contact',
                                   'FirstName':'',
                                	'LastName':'',
                                    'Phone' : '',
                                    'Email' : ''    
                                   };
			component.set("v.conlist",emptyConList);
             alert('Record Inserted Successfully');
            }
            else if(state == "ERROR")
            {
                alert('ohhh !! something is wrong');
            }
            
        });
        
        $A.enqueueAction(action);
    },
    
    UpdateContact_helper : function(component, event, helper,conlist)
    {
        var action = component.get("c.updateRecord");
        
        alert ('Contact list :'+conlist)
        action.setParams({
        
            con  : conlist
        });
        
        action.setCallback(this, function(resp){
           
            var state = resp.getState();
            
            if(state == "SUCCESS")
            {
             var emptyConList = {'sobjectType' : 'Contact',
                                   'FirstName':'',
                                	'LastName':'',
                                    'Phone' : '',
                                    'Email' : ''    
                                   };
			component.set("v.conlist",emptyConList);
             alert('Record Updated Successfully');
            }
            else if(state == "ERROR")
            {
                alert('ohhh !! something is wrong');
            }  
        });
        $A.enqueueAction(action);
    },
    
    deleteContact_helper : function(component, event, helper,conlist)
    {
        var action = component.get("c.deleteRecord");
        
        alert ('Contact list :'+conlist)
        action.setParams({
        
            con1  : conlist
        });
        
        action.setCallback(this, function(resp){
           
            var state = resp.getState();
            
            if(state == "SUCCESS")
            {
             var emptyConList = {'sobjectType' : 'Contact',
                                   'FirstName':'',
                                	'LastName':'',
                                    'Phone' : '',
                                    'Email' : ''    
                                   };
			component.set("v.conlist",emptyConList);
             alert('Record Deleted Successfully');
            }
            else if(state == "ERROR")
            {
                alert('ohhh !! something is wrong');
            }  
        });
        $A.enqueueAction(action);
    }
    
    //This is for get contact from server
	/*getContactDetails : function(component) {
		
        var action = component.get("c.getContact");
        
        action.setCallback(this,function(resp){
           
            var state = resp.getState();
            
            if(state = "SUCCESS" && component.isValid())
            {
                component.set("v.conlist", resp.getReturnValue());
            }
            
        });
        
        $A.enqueueAction(action);  
	}*/
})