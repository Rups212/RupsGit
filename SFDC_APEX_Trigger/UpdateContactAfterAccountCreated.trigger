trigger UpdateContactAfterAccountCreated on Account (after update) {
    

    List<Contact> conlist = new List<Contact>();
    MAp<Id,Account> accmap = new Map<Id,Account>();
    
    for(Account acc : Trigger.new)
    {
        if(acc.Id != null && acc.Phone != trigger.oldmap.get(acc.Id).phone)
        {
            accmap.put(acc.Id, acc);
        }
    }
    conlist = [select Id, lastname,AccountId from contact where AccountId IN : accmap.keySet()];
    
    List<Contact> updatedcon =new List<Contact>();
    
    for(Contact c1 : conlist)
    {
        Contact c = new Contact();
        if(accmap.containsKey(c1.AccountId))
        {
            c.AccountId = c1.Id;
            c.LastName = 'ABCPQR';
            updatedcon.add(c);
        }
        
    }
    update updatedcon;
}