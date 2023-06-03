@istest
public class testclass {
    @isTest(SeeAllData = true)
    public static void testmethod1(){
         Account a = new account();
    a.name = 'test1';
    insert a;
        
        List<Account> lacc = [Select id,name from Account where name like 'test%'];
          System.debug('lacc--'+lacc);
    System.Assert(lacc.size() >0);
    delete lacc;
    lacc = [Select id,name from Account where name like 'test%'];
    System.debug('lacc--'+lacc);
    System.Assert(lacc.size() ==0);
    }
   
}