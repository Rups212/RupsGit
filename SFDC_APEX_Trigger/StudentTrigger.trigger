trigger StudentTrigger on Student__c (before insert,after insert,before update,after update) {

    if(trigger.isbefore)
    {
        if(trigger.isInsert)
        {
            StudentApex.beforeInsertStudent(trigger.new);
        }else if(trigger.isupdate)
        {
            StudentApex.beforeupdateStudent(trigger.new,trigger.oldmap);
        }
    }
    if(trigger.isafter)
    {
        if(trigger.isInsert)
        {
            StudentApex.afterInsertStudent(trigger.new);
        }else if(trigger.isupdate)
        {
            StudentApex.afterupdateStudent(trigger.new,trigger.oldmap);
        }
    }

}