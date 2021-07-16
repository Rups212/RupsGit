@RestResource(URLMapping='/ShowLeads/*')
global class RestIntegrationOfCRUD {

  /* 
    // This is for get the records Details from SF 
    @HTTPGet
    global static List<Lead> GetLeadDetails()
    {
        List<Lead> VarGetLeadDetails;
        
        VarGetLeadDetails = [Select Name, Phone from Lead];
        
        return VarGetLeadDetails;
    }*/
   
    /*
    //This is for create the record in SF
    @HTTPPost
    global static String doPost(String LastName, String Phone, String Company)
    {
        Lead varLead = new Lead();
        
        varLead.LastName = LastName;
        varLead.Phone = Phone;
        VarLead.Company = Company;
        
        insert VarLead;
        
        return varlead.Id;
       
    }
    */
    
    //This is for Delete Record from SF
   @HTTPDelete
    global static void doDelete()
    {
        RestRequest req = RestContext.request;
        RestResponse res = RestContext.response; //optional 
        
        system.debug('Request :'+req);
        String LeadId = req.requestURI.substring(req.requestURI.lastindexof('/')+1);
        system.debug('Lead ID :'+LeadId);
        
        Lead result = [select Id, Name, Phone from Lead where Id =:LeadId limit 1];
        delete Result;
    }
    
}