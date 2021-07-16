trigger RatingTrigger on Rating__c (after update) {
    
    if(Trigger.isAfter && Trigger.isUpdate)
    {
        RatingApex.afterRatingUpdate(Trigger.new, Trigger.oldmap);
    }

}