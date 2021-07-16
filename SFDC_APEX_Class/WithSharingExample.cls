public with sharing class WithSharingExample {

    public Integer intCount {get;set;}
    
    public WithSharingExample() {
        intCount = [ SELECT COUNT() FROM Employee__c ];
    }
    
}