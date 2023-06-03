@isTest
public class LeadProcessorTest {
    @testSetup
    static void setup() {
	list<lead> Llist =  new list<lead>();
    for (Integer i=0;i<200;i++) {
            Llist.add(new Lead(
                LastName='Test', Company='Dream',Status ='Working - Contacted'));
        }
        insert Llist;
    }
     @isTest static void test() {
        Test.startTest();
        LeadProcessor uca = new LeadProcessor();
        Id batchId = Database.executeBatch(uca);
        Test.stopTest();
        // after the testing stops, assert records were updated properly
        System.assertEquals(200, [select count() from Lead where LastName = 'Test']);
    }
}