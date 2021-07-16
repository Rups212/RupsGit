trigger CheckDuplicateRecordOfLead on Lead (before insert) {
    
    Set<String> varPhonecheck = new Set<String>();
    Set<String> varEmailcheck = new Set<String>();
    
    
    for(Lead l : Trigger.new)
    {
        varPhonecheck.add(l.Phone);
        varEmailcheck.add(l.Email);
    }
    
    List<Lead> varDupRec = new List<Lead>();
    vardupRec = [select Id,Name,Phone,Email from Lead where Phone IN :varPhonecheck or Email IN : varEmailcheck ];

    for(Lead l1 : Trigger.new)
    {
        if(varDupRec.size() > 0)
        {
            l1.adderror('Sorry !! cant add this record becoz its already present');
        }
        
    }
}