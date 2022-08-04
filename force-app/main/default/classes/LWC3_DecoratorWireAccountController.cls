/**
 * @description       : LWC03 - WIRE Decorator
 * @author            : Fatih SARI
 * @group             : 
 * @last modified on  : 08-04-2022
 * @last modified by  : Fatih SARI
**/
public with sharing class LWC3_DecoratorWireAccountController {
    public LWC3_DecoratorWireAccountController() {

    }

    @AuraEnabled(cacheable=true)
    public static List<Account> retrieveAccounts(){
        List<Account> multiAccount=New List<Account>();

        try {
            multiAccount=[SELECT id,Name,Type,Industry,CreatedDate FROM Account ORDER BY CreatedDate DESC LIMIT 10];
        } catch (QueryException e) {
            throw new AuraHandledException(e.getMessage());
        }
        return multiAccount;
    }
}
