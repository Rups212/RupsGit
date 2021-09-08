({
	getAccountRecord : function(component) {
		
        //calling apex class controller 'getAccountRecord' method
        var action = component.get("c.getAccountRecord");
        
        action.setCallback(this,function(response){
           
            //checking response status
            var state = response.getState();
            
            if(component.isValid() && state == "SUCCESS")
            {
                component.set("v.accList", response.getReturnValue()); //adding value in aura attribute variable
            }
            
        });
        $A.enqueueAction(action);
	}
})