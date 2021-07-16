public class SchemaClassDemo {
    
    public static void SchemaClassExample()
    {
        String[] ListOfObjects = new String[]{'Account','Lead','Pen__c'};
            
        Schema.DescribeSObjectResult[] results  = Schema.DescribeSObjects(ListOfObjects);
        
        system.debug('Got information for '+results.size()+ 'Objects');
        
        for(Schema.DescribeSObjectResult res : results){
            
            system.debug('sObject Label :'+res.getLabel());
            system.debug('sObject PluralLabel :'+res.getLabelPlural());
            system.debug('sObject record Types :'+res.recordtypeinfos);
            system.debug('sObject Accesible :'+res.isAccessible());
            system.debug('sObject Custom :'+res.isCustom());
            system.debug('sObject No Of fields :'+res.fields.getMap().size());
            
            schema.ChildRelationship[] rels = res.getChildRelationships();
            if(rels.size() > 0)
            {
                system.debug(res.getName()+'has '+ rels.size()+ 'child Relationship');
            }
        }
    }

}