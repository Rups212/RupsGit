trigger FacultyClassTrigger on Faculty__c (before insert,after insert,before update,after update,before delete) {
    
    if(trigger.isbefore)
    {
        if(trigger.isinsert)
        {
            FacultyClassApex.insertFaculty(trigger.new);
        }else if(trigger.isupdate)
        {
            FacultyClassApex.updateFaculty(trigger.new, trigger.oldmap);
        }else if(trigger.isdelete)
        {
            FacultyClassApex.deleteFaculty(trigger.old);
        }
        
    }
    
    if(trigger.isAfter)
    {
        if(trigger.isinsert)
        {
       		 FacultyClassApex.AfterinsertFaculty(trigger.new);
            system.debug('After insert called');
        }else if(trigger.isupdate)
        {
            FacultyClassApex.AfterupdateFaculty(trigger.new, trigger.oldmap);
        }
    }

}