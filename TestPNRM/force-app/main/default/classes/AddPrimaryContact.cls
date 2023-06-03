public class AddPrimaryContact implements Queueable{
     private Contact conatacts;
    private String state;
    public AddPrimaryContact(Contact records, String str) {
        this.conatacts = records;
        this.state = str;
    }
	 public void execute(QueueableContext context) {
          List<Contact> cont = new  List<Contact>();
         for(Account acc : [Select id,(Select id,Account.BillingState from contacts) from Account where BillingState =: state]){
             Contact con = conatacts.clone(false,false,false,false);
             con.AccountId = acc.id;
             cont.add(con);
         }
         if(cont.size() > 0){
             insert cont;
         }
    }
}