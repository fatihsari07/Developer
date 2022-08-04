/**
 * @description       :AURA13 Application Event
 * @author            : Fatih SARI
 * @group             :
 * @last modified on  : 08-04-2022
 * @last modified by  : Fatih SARI
 **/
public with sharing class AURA13_ContactServerController {
  public AURA13_ContactServerController() {
  }

  @AuraEnabled
  public static string CreateServerController(Contact singleContact) {
    try {
      insert singleContact;
    } catch (DmlException e) {
      throw new AuraHandledException(e.getMessage());
    }

    return singleContact.id;
  }

  @AuraEnabled
  public static List<Contact> retrieveServerController() {
    List<Contact> multiContact = new List<Contact>();
    try {
      multiContact = [
        SELECT id, Name, FirstName, LastName, Phone, Email, CreatedDate
        FROM Contact
        ORDER BY CreatedDate DESC
        LIMIT 10
      ];
    } catch (QueryException e) {
      throw new AuraHandledException(e.getMessage());
    }

    return multiContact;
  }
}