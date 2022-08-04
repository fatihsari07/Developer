/**
 * @description       : AURA9 - Design Component and Pass Data into AURA
 * @author            : Fatih SARI
 * @group             : 
 * @last modified on  : 08-04-2022
 * @last modified by  : Fatih SARI
**/
public with sharing class AURA9_QueryController {
    public AURA9_QueryController() {

    }

    @AuraEnabled
    public static List<sObject> retrieveSC(String sobjName){
        List<sObject> sobjList=New List<sObject>();
        try {
            String q='SELECT id,Name FROM '+sobjName+' LIMIT 10';
            sobjList=database.query(q);
        } catch (QueryException e) {
            throw new AuraHandledException(e.getMessage());
        }

        return sobjList;
    }
}