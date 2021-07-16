trigger Account_Trigger on Account (after insert,before update,after update) {
    
    if(Trigger.isInsert)
    {
        if(Trigger.isAfter)
        {
            Account_ApexTrigger.afterInsert(Trigger.new);
        }
    }
    else if(Trigger.isUpdate)
    {
        if(Trigger.isBefore)
        {
            Account_ApexTrigger.beforeUpdate(Trigger.new,Trigger.oldMap);
        }
         else if(Trigger.isAfter)
        {
            //old map used to check id of old version
            Account_ApexTrigger.afterUpdate(Trigger.new,Trigger.oldMap);
        }
    }
}