({
	handleComponentEvent : function(component, event, helper) {
		
       var Message = event.getParam("TestData");
        
       // debugger;
        console.log('Before Message Stored :'+Message)
        component.set("v.MessageFromEvent",Message);
        
       console.log('After Message Stored :'+Message)
        
        var HandleEvent = parseInt(component.get("v.NoOfEvents")) + 1;
        component.set("v.NoOfEvents",HandleEvent);
	}
})