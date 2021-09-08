({
	getOppRecords : function(component) {
		
        var Action = component.get("c.getOppRecordsList");
        
        Action.setCallback(this,function(response){
           
            var state= response.getState();
            
            if(state == "SUCCESS" && component.isValid())
            {
                component.set("v.oppList",response.getReturnValue());
            }
        });
        
        $A.enqueueAction(Action);
        
	}
})