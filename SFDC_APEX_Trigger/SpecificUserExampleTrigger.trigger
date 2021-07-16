trigger SpecificUserExampleTrigger on Lead (before insert) {
    
    if(trigger.isInsert && trigger.isBefore)
    {
        SpecificUserExampleClass.CheckLead(Trigger.New);
    }

}