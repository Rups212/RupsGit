global class ScheduleClassExample implements Schedulable {

    global void execute(SchedulableContext sc){
        
        BatchClassExample b = new BatchClassExample();
        
        Database.executeBatch(b, 300);
    }
    
}