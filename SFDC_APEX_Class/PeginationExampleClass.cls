public class PeginationExampleClass {
    
    
     integer RecordLimit =5;
     integer OffsetLimit = 0;
    
    public List<Account> RecordList{
        
        get{
            RecordList = [select Id, Name, industry,phone from Account 
                           Limit : RecordLimit
                           OFFSET : OffsetLimit];
            return RecordList;
        }set;
    }
    
    
    public PageReference previous()
    {
        if(OffsetLimit > 0)
        {
        	OffsetLimit = OffsetLimit - 2;
        }
        return null;
    }
    public PageReference Next()
    {
        OffsetLimit = OffsetLimit + 2;
        return null;
    }

}