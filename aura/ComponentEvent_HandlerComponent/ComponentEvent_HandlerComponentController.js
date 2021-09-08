({
	handleComponentEvent : function(component, event, helper) {
		
      var varMessage = event.getParam("message");
        
        component.set("v.messageFromEvent", varMessage);
        
        var NumEventHandled = parseInt(component.get("v.numEvents"))+1;
        component.set("v.numEvents",NumEventHandled);
	}
})