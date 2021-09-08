({
	callJSCode : function(component, event, helper) {
		
       var varButtonId = event.getSource().getLocalId();
       var varButtonName = event.getSource().get("v.name");
        
        alert('The Button ID :'+varButtonId);
        alert('The Button Name :'+varButtonName);
        
        component.set("v.whichButtonPressed_ID",varButtonId);

        component.set("v.whichButtonPressed_Name",varButtonName);
	}
})