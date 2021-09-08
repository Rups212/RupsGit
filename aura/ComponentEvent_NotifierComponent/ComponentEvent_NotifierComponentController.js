({
	fireComponentEvent : function(component, event, helper) {
		
        var varCmpEvent= component.getEvent("cmpEventName");
        varCmpEvent.setParams({
            "message" : "This message is passed by component event" 
        });
        varCmpEvent.fire();
	}
})