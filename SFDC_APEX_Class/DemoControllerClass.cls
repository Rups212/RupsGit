public class DemoControllerClass {
    
    public List<Account> varaccList{get;set;}
    public List<Contact> varcontList{get;set;}
    public List<Opportunity> varoppList{get;set;}
    
    
    public string CustomLabel;
    public string TestLabel {set;get;}
    public string test{get;set;}
    public string searchStr{get;set;}
    
    public DemoControllerClass()
    {
		CustomLabel = System.Label.TestCustomInfo;     
        TestLabel = CustomLabel;
    }
    
    
    public void demo()
    {
        
        varaccList = new List<Account>();
        varcontList = new List<Contact>();
        varoppList = new List<Opportunity>();
          try{
        
        if(searchStr.length() >1)
        {
            
            string searchStr1 ='*'+searchStr+'*';
            string searchquery = 'Find \'' +searchStr+ '\'In all fields returning Account (Id,Name,type),Contact(name,email),Opportunity(name,StageName)';
            List<List<SObject>> SearchList = Search.query(searchQuery);
            
          
                varaccList = ((List<Account>)SearchList[0]);
                varcontList = ((List<Contact>)SearchList[1]);
                varoppList = ((List<Opportunity>)SearchList[2]);
            
            
            
            if(varaccList.size() == 0 )
            {
                 test=null;
                ApexPages.addMessage(new ApexPages.message(ApexPages.Severity.ERROR, 'Sorry !! No result found with matching string....'));
                
                test ='Wrong input';
                
            }else{
                test ='Hello !! Welcome';
            }
            
           	
        }
        else{
            test=null;
            ApexPages.addMessage(new ApexPages.message(ApexPages.Severity.ERROR,'Please enter at least two characters..'));
            
            test ='Something Wrong !!';
        }
        
        } catch(Exception e)
                {
                    ApexPages.addMessage(new ApexPages.message(ApexPages.Severity.INFO, 'Something went wrong !!'));
                }
    }
    
    

}