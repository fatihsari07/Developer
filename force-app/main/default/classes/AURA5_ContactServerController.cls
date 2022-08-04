/**
 * @description       : AURA5 - Contact Creation with Lightning Design System and Salesforce Component Library
 * @author            : Fatih SARI
 * @group             : 
 * @last modified on  : 08-04-2022
 * @last modified by  : Fatih SARI
**/
public class AURA5_ContactServerController {
    

    @AuraEnabled
    public static string createContactServer(Contact singleContact){
        try {
            insert singleContact;

        } catch (DmlException e) {
            throw new AuraHandledException(e.getMessage());
           
            
        }

        return singleContact.id;
        
    }
}