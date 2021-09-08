({
	getEligibility : function(component) {
        
        var vAge = component.find("Age").get("v.value");
        if(vAge!=null)
        {
           component.set("v.checkTest",true); 
        }
        
        if(vAge >= 18)
        {
            component.set("v.EligibleOrNot",true);
        }else{
            component.set("v.EligibleOrNot",false);
        }
		
	},


    ClearAllData : function(component)    {
        
      component.find("Age").set("v.value",'');
		component.find("Fname").set("v.value",'');
        component.find("Lname").set("v.value",'');
        component.set("v.checkTest",false);
    }
})