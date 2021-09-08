({
	getMapValues : function(component, event, helper) {
		
        var action = component.get("c.getMap");
        action.setCallback(this,function(response){
           
            var state = response.getState();
            
            if(state === 'SUCCESS')
            {
                var result = response.getReturnValue();
                
                var arrayMapKeys =[];
                for(var key in result)
                {
                    arrayMapKeys.push({key :key, value : result[key]});
                }
                component.set("v.mapValues",arrayMapKeys);
            }
        });
        $A.enqueueAction(action);
	}
})