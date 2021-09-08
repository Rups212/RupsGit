({
	fireApplicationEvent : function(component, event, helper) {
		
        var varAppEvent = $A.get("e.c:MyApplicationEvent");
        
        varAppEvent.setParams({
           
            "BusinessData" : "An Application Event Fired."
        });
        varAppEvent.fire();
	}
})