@isTest
public class DailyLeadProcessorTest {
     public static String CRON_EXP = '0 0 0 15 3 ? 2042';
	 @testSetup
    static void setup() {
	list<lead> Llist =  new list<lead>();
    for (Integer i=0;i<200;i++) {
            Llist.add(new Lead(
                LastName='Test', Company='Dream',LeadSource = ''));
        }
        insert Llist;
        
    }
     @isTest static void test() {
         
        Test.startTest();
        DailyLeadProcessor uca = new DailyLeadProcessor();
          String jobId = System.schedule('ScheduledApexTest',
            CRON_EXP,
            new DailyLeadProcessor());
        System.assertEquals(200, [select count() from Lead where LastName = 'Test']);
    }
}