/**
 * @description       : 
 * @author            : Fatih SARI
 * @group             : 
 * @last modified on  : 08-04-2022
 * @last modified by  : Fatih SARI
**/
public with sharing class wireDecoratorController {   //  with sharing = System MODE... 
    public wireDecoratorController() {

        //constructor
    }

    @AuraEnabled(cacheable=true)   // LWC javascript imperative  (cacheable=true) must be cancelled.
    public static List<Account> getAccountRecords(){
        list<Account> multiAccount=New List<Account>();
        try {
            multiAccount=[Select id,Name,CreatedDate FROM Account ORDER BY CreatedDate DESC LIMIT 10];
            
        } catch (QueryException e) {
            throw new AuraHandledException(e.getMessage());
        }

        return multiAccount;
    }


    
}
