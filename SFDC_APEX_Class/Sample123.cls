public class Sample123 {
    
    public list<wrapperClass> listwrapper {get;set;}
    
    public sample123(){
        
        list<Account> listacc = [select Name,Industry from Account limit 100];
        
        if(listacc.size()> 0)
        {
            listwrapper =new List<wrapperClass>();
            
            for (Account a : listacc){
                listwrapper.add(new wrapperClass(a));
            }
        }
    }
    
    
    public class wrapperClass{
        public Boolean checkBool {get;set;}
        public Account acc{get;set;}
        public wrapperClass(Account acc)
        {
            this.acc=acc;
        }
    }

}