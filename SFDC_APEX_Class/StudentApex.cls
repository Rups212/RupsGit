public class StudentApex {
    
    
    public static void beforeInsertStudent(List<Student__c> newlist)
    {
        for(Student__c studlist : newlist)
        {
            if(studlist.Stream_Opted__c =='Cloud Computing')
            {
                studlist.Course_Opted__c ='Salesforce Admin';
            }else{
                studlist.Course_Opted__c ='Python';
            }                
        }
    }
     public static void afterInsertStudent(List<Student__c> newlist)
    {
        List<Rating__c> RatingsList = new List<Rating__c>();
        
        for(Student__c studlist : newlist)
        {
            Rating__c rating = new Rating__c();
            
            rating.Rating_given_to_which_student__c = studlist.Id;
            
            system.debug('ID= '+studlist.Id + 'Name ='+studlist.Name);
            rating.Rating_For_Experience_Student__c = 90;
            rating.Rating_For_Fresher_Student__c = 45;
            rating.Rating_For_Graduate_Student__c = 60;
            
            
            RatingsList.add(rating);
        }if(!RatingsList.isEmpty())
        {
            insert RatingsList;
        }
    }
    
    public static void beforeupdateStudent(List<Student__c> newlist, Map<Id,Student__c> oldlistId)
    {
        
        
        for(Student__c studlist : newlist)
        {
            if(studlist.Id !=null && oldlistId.get(studlist.Id).Id != null)
            {
                if(studlist.Id == oldlistId.get(studlist.Id).id)
                {
                    system.debug('studlist.Id ='+ studlist.Id+ 'oldlistId.get(studlist.Id) (get rerturns Value:):: ='+oldlistId.get(studlist.Id));
                    
                    if(studlist.Stream_Opted__c != Null){
                        
                    if(studlist.Stream_Opted__c =='Cloud Computing')
           			 {
               			 studlist.Course_Opted__c ='Salesforce Dev';
            		  }else{
               			 studlist.Course_Opted__c ='Python';
           				 } 
                    }
                    if(studlist.Birth_Date__c == null)
                    {
                        studlist.adderror('Birth Date cant be empty');
                    }
                }
            }
        }
    }
    
    public static void afterupdateStudent(List<Student__c> newlist, Map<Id,Student__c> oldlistId)
    {
        
        Map<Id,Student__c> mapliststud = new map<Id, Student__c>();
        List<Rating__c> rating = new List<Rating__c>();
       List<Rating__c> updatedrecordratingList = new List<Rating__c>(); 
        
        for(Student__c studlist : newlist)
        {
            if(studlist.Id != null && oldlistId.get(studlist.Id).id != null)
            {
                if(studlist.Id == oldlistId.get(studlist.Id).id)
                {
                    mapliststud.put(studlist.Id,studlist);
                }
            }
        }
        rating =[select Name,Rating_For_Experience_Student__c,Rating_given_to_which_student__c from Rating__c where 	Rating_given_to_which_student__c IN:mapliststud.keyset() ];
        
        system.debug('mapliststud.keyset()='+mapliststud.keyset() + 'Rating list ='+rating);
        
        for(Rating__c ratinglist : rating)
        {
             Rating__c ratingrr = new Rating__c();
          
            if(mapliststud.containskey(ratinglist.Rating_given_to_which_student__c)){
                
                ratingrr.Id =ratinglist.Id;
                ratingrr.Rating_For_Experience_Student__c = 50;
                updatedrecordratingList.add(ratingrr);
                
                system.debug('ratingrr='+ratingrr);
            }
            
            system.debug('ratingrr='+ratingrr);
            
        }if(!updatedrecordratingList.isEmpty())
        {
            update updatedrecordratingList;
        }
        
    }

}