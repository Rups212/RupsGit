({
	getInfo : function(component) {
		
        var FirstName = component.find("Fname").get("v.value");
        var LastName = component.find("Lname").get("v.value");
        var FullName = LastName+", "+FirstName;
        
        var DisaplyName= component.find("NameToDisplay");
        DisaplyName.set("v.value",'Outlook Name = '+ FullName);
        
        
	}  
 })