/**
 * @description       : AURA7 - Combobox Data Table
 * @author            : Fatih SARI
 * @group             : 
 * @last modified on  : 08-04-2022
 * @last modified by  : Fatih SARI
**/
public with sharing class AURA7_ComboBoxDataTableServerCont {
    public AURA7_ComboBoxDataTableServerCont() {

    }

    @AuraEnabled
    public static Map<String,String> retrieveContactsServerController(){
        Map<String,String> mapofContactName=New Map<String,String>();

        try {
            for(Contact con:[SELECT id,Name,CreatedDate FROM Contact ORDER BY CreatedDate DESC LIMIT 10]){
                mapofContactName.put(con.id,con.name);

            }
        } catch (QueryException e) {
            throw new AuraHandledException(e.getMessage());
        }

        system.debug('mapofContactName  :'+ mapofContactName);
        return mapofContactName;
    }
}