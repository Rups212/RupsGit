public class UserRegApex {

    
    public static void checkCardType(List<User_Registration__c> newlist){
        
              
        for(User_Registration__c varp : newlist)
        {
                               
            If(varp.Income_Range__c == 'Above 100000' && varp.Income_Monthly__c < 100000){
                    
                    varp.adderror('Monthly income should not be less than 1 lakh');
                }else If(varp.Income_Range__c == '50001 to 100000' && varp.Income_Monthly__c < 50001){
                    
                    varp.adderror('Monthly income should not be less than 50 thousand');
                }else If(varp.Income_Range__c == '30001 to 50000' && varp.Income_Monthly__c < 30001){
                    
                    varp.adderror('Monthly income should not be less than 30 thousand');
                }else If(varp.Income_Range__c == 'Less than 30000' && varp.Income_Monthly__c < 1000){
                    
                    varp.adderror('Monthly income should not be less than one thousand');
                }
        }
        
    }
    
    public static void checkcardTypeUpdate(List<User_Registration__c> newlist, map<Id,User_Registration__c> oldmapId){
        
        for(User_Registration__c varP : newlist){
            
            if(varp.Id == oldmapId.get(varp.Id).Id && varp.Types_of_Credit_Card__c == oldmapId.get(varp.Id).Types_of_Credit_Card__c){
               
                If(varp.Income_Range__c == 'Above 100000' && varp.Income_Monthly__c < 100000){
                    
                    varp.adderror('Monthly income should not be less than 1 lakh');
                }else If(varp.Income_Range__c == '50001 to 100000' && varp.Income_Monthly__c < 50001){
                    
                    varp.adderror('Monthly income should not be less than 50 thousand');
                }else If(varp.Income_Range__c == '30001 to 50000' && varp.Income_Monthly__c < 30001){
                    
                    varp.adderror('Monthly income should not be less than 30 thousand');
                }else If(varp.Income_Range__c == 'Less than 30000' && varp.Income_Monthly__c < 1000){
                    
                    varp.adderror('Monthly income should not be less than one thousand');
                }
       		 }
    	}
  	}
}