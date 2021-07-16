trigger PenClass_Trigger on Pen__c (before insert, before update,before delete,after insert,after update) {
    
    if(trigger.isbefore)
    {
        if(trigger.isInsert)
        {
            PenClass_Apex.DiscountPenBeforeInsert(trigger.new);
        }
        if(trigger.isUpdate)
        {
            PenClass_Apex.DiscountPenBeforeUpdate(trigger.new,trigger.oldMap);
        }
        if(trigger.isDelete)
        {
            PenClass_Apex.DiscountPenBeforeDelete(trigger.old);
        }
    }

    if(trigger.isAfter)
    {
        if(trigger.isInsert)
        {
            PenClass_Apex.DiscountPenAfterInsert(trigger.new);
        }
        if(trigger.isUpdate)
        {
          // PenClass_Apex.DiscountPenAfterUpdate(trigger.new, trigger.oldMap);
        }
    }
}