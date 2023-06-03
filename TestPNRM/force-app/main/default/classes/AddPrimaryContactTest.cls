@istest
public class AddPrimaryContactTest {
    @istest static void testmethod1(){
        List<Account> cont = new  List<Account>();
            for(Integer i=0; i<50 ;i++){
                cont.add(new Account(BillingState = 'NY', name = 'Test'+i));
            }
        for(Integer i=0; i<50 ;i++){
                cont.add(new Account(BillingState = 'CA', name = 'Test'+i));
            }
          insert cont;

         Contact co = new Contact();
         co.FirstName='demo';
         co.LastName ='demo';
         insert co;
         String state = 'CA';
      
          AddPrimaryContact apc = new AddPrimaryContact(co, state);
          Test.startTest();
            System.enqueueJob(apc);
          Test.stopTest();
      
    }
}