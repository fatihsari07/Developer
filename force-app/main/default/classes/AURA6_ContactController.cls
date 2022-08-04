/**
 * @description       : 
 * @author            : Fatih SARI
 * @group             : 
 * @last modified on  : 08-04-2022
 * @last modified by  : Fatih SARI
**/
public with sharing class AURA6_ContactController {
   
    @AuraEnabled
    public static string createContactServer(Contact singleContact){
        try {
            insert singleContact;

        } catch (DmlException e) {
            throw new AuraHandledException(e.getMessage());
           
            
        }

        return singleContact.id;
        
    }

    @AuraEnabled
    public static List<Contact> listofContact(){
        // system.debug('Listof Contact ....');
        List<Contact> multiCont = New List<Contact>();

        try {
            multiCont = [SELECT id,FirstName,LastName,Phone,Email,CreatedDate FROM Contact ORDER BY CreatedDate DESC LIMIT 10];
            
        } catch (QueryException e) {
            throw new AuraHandledException(e.getMessage());
        }
        // system.debug(multiCont);
        return multiCont;
    }

    
}