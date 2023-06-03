@RestResource(urlMapping='/Accounts/*/contacts')
//This is 1st class
global class AccountManager {
    @HttpGet
    global static Account getAccount(){
        RestRequest req = RestContext.request;
        String accId = req.requestURI.substringBetween('Accounts/', '/contacts');
        Account acc = [SELECT Id, Name, (SELECT Id, Name FROM Contacts) 
                       FROM Account WHERE Id = :accId];
        
        return acc;
    }
}