public class CountryCodeHelper {
  public static String getCountryCode(String country) {
  
		Country_Code__mdt cd = Country_Code__mdt.getInstance('Canada');
      System.debug('cd--'+cd);
    return cd.Country_Code__c;
  }
}