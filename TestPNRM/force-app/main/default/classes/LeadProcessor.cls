public class LeadProcessor  implements Database.Batchable<sObject>{
	public Database.QueryLocator start(Database.BatchableContext bc) {
        return Database.getQueryLocator(
            'select id,LeadSource from lead limit 200'
        );
    }
    Public void execute(Database.BatchableContext bc, List<lead> scope){
        list<lead> Llist =  new list<lead>();
        for(lead le : scope){
            le.LeadSource = 'Dreamforce';
            Llist.add(le);
        }
        update Llist;
    }
    public void finish(Database.BatchableContext bc){}
}