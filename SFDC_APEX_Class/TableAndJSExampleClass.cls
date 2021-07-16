public class TableAndJSExampleClass {
    
    public String VarStudId{get;set;}
    public List<Student__c> VarStudent{get;set;}
    public List<Rating__c> VarRating {get;set;}
    
    public TableAndJSExampleClass()
    {
        VarStudent = [SELECT Id,Name,Student_Name__c from Student__c Limit 10];
        VarRating =null;
    }
    
    public void showRatings()
    {
        VarRating = [SELECT Id, Name from Rating__c where Rating_given_to_which_student__c =: VarStudId];
       // queryForRatings();
    }
    
   /* public String queryForRatings()
    {
        String varQuery = 'SELECT ';
        try{
            List<String> FinalQuery = new List<String>();
            
             String VarTableName = 'Rating__c';
            
            List<String> VarListOfTables = new List<String>();
            VarListOfTables.add(VarTableName);
            
            set<String> VarSetOfAllFields = Schema.describeSObjects(VarListOfTables)[0].fields.getMap().keyset();
            
            for(String VarOneFieldName : VarSetOfAllFields)
            {
                varQuery = varQuery + VarOneFieldName + ', ';
            }
            
            varQuery = varQuery.removeEnd(',');
            
            
            varQuery = varQuery + ' FROM '+ VarTableName + ' where Rating_given_to_which_student__c =:'+ VarRating;
            
            
            system.debug('Query: '+varQuery);
            
            
        }catch(Exception e)
        {
            system.debug('Exception:'+e.getMessage());
        }
        
        return varQuery;
    }
	*/
}