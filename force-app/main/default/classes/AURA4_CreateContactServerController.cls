/**
 * @description       : AURA4 - Create Contact via Aura Component without any Design System
 * @author            : Fatih SARI
 * @group             : 
 * @last modified on  : 08-04-2022
 * @last modified by  : Fatih SARI
**/
public with sharing class AURA4_CreateContactServerController {
   
    

    @AuraEnabled
    public static string CreateContact(Contact singleContact ){
        try {
            insert singleContact;
            
        } catch (DmlException e) {
            // system.System.debug('ERROR :'+e.getMessage());
            throw new AuraHandledException(e.getMessage());
            
        }


        

        return singleContact.id;

    }
}