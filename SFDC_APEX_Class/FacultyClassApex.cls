public class FacultyClassApex {
    
    //Before insert faculty object record
    public static void insertFaculty(List<Faculty__c> newfacultylist)
    {   
        for(Faculty__c varp : newfacultylist)
        {
            if(varp.Name <> null){
                
                varp.Name = varp.Name;
                system.debug('Trigger called ='+varp.Name);
            }
        }  
    }
    
    //After insert faculty object record
    public static void AfterinsertFaculty(List<Faculty__c> newfacultylist)
    {
        List<Course__c> courselist = new List<Course__c>();
        
        for(Faculty__c varp : newfacultylist )
        {
            Course__c course = new Course__c ();
            
            course.Name = 'Java';
            course.Faculty_of_this_course__c =varp.Id;
            
            courselist.add(course);
            system.debug('List  :'+courselist);
            
        }
        if(!courselist.isempty())
        {
            insert courselist;
        }     
    }
    
    //Before update faculty object record
    public static void updateFaculty(List<Faculty__c> newfacultylist, map<Id,Faculty__c> oldmapId)
    {

        for(Faculty__c varp : newfacultylist)
        {
            
            if(varp.Id == oldMapId.get(varp.Id).Id && varp.Name != oldmapId.get(varp.Id).Name)
            {
                varp.Name=varp.Name;
                system.debug('Id ='+oldMapId.get(varp.Id).Id + ' Old map Name ='+oldmapId.get(varp.Id).Name);
            }
        }
        
    }
    
    //After update faculty object record
    public static void AfterupdateFaculty(List<Faculty__c> newfacultylist, map<Id,Faculty__c> oldmapId)
    {
        List<Course__c> courselist =new List<Course__c>();
        List<Course__c> courseupdatedlist =new List<Course__c>();
        
        map<Id,Faculty__c> facultylist =new map<Id,Faculty__c>();
        
        for(Faculty__c varp : newfacultylist)
        {
            if(varp.Id== oldmapId.get(varp.Id).Id && varp.Name != oldmapId.get(varp.Id).Name)
            {
                facultylist.put(varp.Id,varp);
            }
        }
        
          courselist = [select Name, Faculty_of_this_course__c from Course__c where Faculty_of_this_course__c IN: facultylist.keyset()];
        
        for(Course__c varp : courselist)
        {
            Course__c course = new Course__c();
            
            if(facultylist.containskey(varp.Id))
            {
                course.Faculty_of_this_course__c = facultylist.get(varp.Id).Name;
            }
        }
        if(!courseupdatedlist.isEmpty())
        {
            update courseupdatedlist;
        }
    }
    
    //
    public static void deleteFaculty(List<Faculty__c> oldfacultylist)
    {
    	for(Faculty__c f : oldfacultylist)
        {
            if(f.Active__c == true)
            {
                f.adderror('Cant delete record becoz its active now');
            }
        }
    }
}