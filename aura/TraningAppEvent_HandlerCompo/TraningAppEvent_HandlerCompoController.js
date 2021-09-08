({
	handleApplicationEvent : function(component, event, helper) {
		
        var varMessage = event.getParam("BusinessData");
        
        component.set("v.MessageFromEvent",varMessage);
        var numEventsHandled = parseInt(component.get("v.numEvents"))+1;
        component.set("v.numEvents",numEventsHandled);
	}
})