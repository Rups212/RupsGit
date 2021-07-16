public class RatingApex {
    
    
    public static void afterRatingUpdate(List<Rating__c> newlist, Map<Id,Rating__c> oldmapId)
    {
        List<Student__c> studentRecordtoBeUpdated = new List<Student__c>();
        map<Id,Rating__c> Map_RatingUpdatedRecordandID = new map<Id,Rating__c>();
        
        for(Rating__c updatedRatingNewRecord : newlist)
        {
        		if(updatedRatingNewRecord.Id == oldmapId.get(updatedRatingNewRecord.Id).Id)
                {
                    Map_RatingUpdatedRecordandID.put(updatedRatingNewRecord.Id,updatedRatingNewRecord);
                    
                    system.debug('oldmapId.get(updatedRatingNewRecord.Id) :'+oldmapId.get(updatedRatingNewRecord.Id) +'\n oldmapId.get(updatedRatingNewRecord.Id).Id :'+oldmapId.get(updatedRatingNewRecord.Id).Id);
                }
        }
        system.debug('Map List Record :'+Map_RatingUpdatedRecordandID);
        
        studentRecordtoBeUpdated = [select Id,Name,Student_Name__c from Student__c where Name =:Map_RatingUpdatedRecordandID.keyset()];
        
        system.debug('studentRecordtoBeUpdated :'+studentRecordtoBeUpdated);
    }

}