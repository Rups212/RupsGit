global class ScheduleClassExample_Contact implements Schedulable {

    global void execute(SchedulableContext sc){
        
        BatchClassExample_Contact b = new BatchClassExample_Contact();
        Database.executeBatch(b);
    }
    
}