trigger TestObject_Trigger on Test_Object__c (before insert,after insert) {
    
    if(trigger.isinsert == true)
    {
        if(trigger.isBefore == true)
        {
            TestObject_ApexTrigger.beforeInsert(trigger.new);
        }else if(trigger.isafter == true){
            TestObject_ApexTrigger.afterInsert(trigger.new);
        }
        
    }
    if(trigger.isUpdate == true)
    { 
        if(trigger.isafter == true){
            TestObject_ApexTrigger.afterUpdate(trigger.new);
        }
    }
    
    
}