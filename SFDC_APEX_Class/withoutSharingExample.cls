public without sharing class withoutSharingExample {

    public Integer intCount {get;set;}
    
    public withoutSharingExample() {
        intCount = [ SELECT COUNT() FROM Employee__c ];
    }
    
    
}