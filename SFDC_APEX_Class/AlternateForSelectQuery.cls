public class AlternateForSelectQuery {
    
    public static void testDemo()
    {
        String VarTableName = 'Pen__c';
        String VarQuery = 'SELECT ';
        
        List<String> VarListOfTables = new List<String>();
        VarListOfTables.add(VarTableName);
        
        set<String> VarSetOfAllFields =  Schema.describeSObjects(VarListOfTables)[0].fields.getmap().keyset();
        
        system.debug('VarSetOfAllFields :'+VarSetOfAllFields);
        
        for(String VarOneFieldName : VarSetOfAllFields)
        {
            VarQuery = VarQuery + VarOneFieldName + ', ';
        }
        
        VarQuery = VarQuery.removeEnd(',');
        
        VarQuery = VarQuery + ' From '+ VarTableName;
        
        system.debug('The Final Query is :'+VarQuery);
    }

}