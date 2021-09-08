({
	SaveMessageToEvent : function(component, event, helper) {
		
       var varMessage = component.getEvent("cmpEventName");
        
        
        
        varMessage.setParams({
           
            "TestData" : "Event message passed successfully !!!"
        });
        varMessage.fire();
	}
})