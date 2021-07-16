trigger AccountRecordUpdateByTrigger on Account (after update) {

    
    Map<Id, Account> mapList = new Map<Id, Account>();
    
    List<Contact> contactList = new List<Contact>();
    
    for(Account acc : Trigger.new)
    {
        if(acc.Phone != trigger.oldmap.get(acc.Id).Phone || acc.fax != trigger.oldmap.get(acc.Id).fax)
        {
            maplist.put(acc.Id, acc);
        }
    }
    
    if(mapList.size() > 0){
    
        contactList = [select AccountId,Name,Phone,Fax from Contact where Account.Id IN : mapList.keySet()];
    }
    
    if(contactList.size() > 0)
    {
        for(Contact con : contactList)
        {
            con.phone = maplist.get(con.AccountId).phone;
            con.Fax = maplist.get(con.AccountId).fax;
        }
        update contactList;
    }  
}