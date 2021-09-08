({
    insertContact : function(component, event, helper){
        
        //for log
        console.log('In create record function');
        
        var conlist =component.get("v.conlist");
     
        if($A.util.isEmpty(conlist.FirstName) || $A.util.isUndefined(conlist.FirstName))
        {
            alert('First Name is Required');
            return;
        }
        if($A.util.isEmpty(conlist.LastName) || $A.util.isUndefined(conlist.LastName))
        {
            alert('Last Name is required');
            return;
        }
        
         helper.CreateContact_helper(component, event, helper,conlist);
    },
    
    updateContact : function(component, event, helper)
    {
        console.log('In update record function');
        
        var conlist = component.get("v.conlist");
        
        var a,b,c;
        
         if($A.util.isEmpty(conlist.FirstName) || $A.util.isUndefined(conlist.FirstName))
        {
            a = true;
        }
        if($A.util.isEmpty(conlist.LastName) || $A.util.isUndefined(conlist.LastName))
        {
            b= true;
        }
        if($A.util.isEmpty(conlist.Phone) || $A.util.isUndefined(conlist.Phone))
        {
            c= true;
        }
        
		if(a == true && b == true && c == true)
        {
            alert ('Enter somthing to update !!');
            return;
        }
		        
        if($A.util.isEmpty(conlist.Email) || $A.util.isUndefined(conlist.Email)) 
        {
            alert('Email is required');
        }
        
        
        
        helper.UpdateContact_helper(component, event, helper,conlist);
    },
    
    deleteContact : function(component, event, helper)
    {
        console.log('In update record function');
        
        var conlist = component.get("v.conlist");
        
		        
        if($A.util.isEmpty(conlist.Email) || $A.util.isUndefined(conlist.Email)) 
        {
            alert('Email is required');
        }
        
        
        
        helper.deleteContact_helper(component, event, helper,conlist);
    }
    
  
    
    
    // This is for getContact Details 
	/*doInit : function(component, event, helper) {
		helper.getContactDetails(component);
	}*/
})