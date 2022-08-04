/**
 * @description       : AURA12 - Aura Method
 * @author            : Fatih SARI
 * @group             :
 * @last modified on  : 08-04-2022
 * @last modified by  : Fatih SARI
 **/
public with sharing class AURA12_AccountServerController {
  public AURA12_AccountServerController() {
  }

  @AuraEnabled
  public static List<Account> getAccountsServerController() {
    List<Account> multiAccount = new List<Account>();
    try {
      multiAccount = [
        SELECT id, Name, CreatedDate
        FROM Account
        ORDER BY CreatedDate DESC
        LIMIT 10
      ];
    } catch (QueryException e) {
      throw new AuraHandledException(e.getMessage());
    }

    return multiAccount;
  }
}