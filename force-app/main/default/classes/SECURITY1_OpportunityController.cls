/**
 * @description       : with sharing respecting sharing data. But its call another helper class. So Helper Class must be inherited sharing 
 * @author            : Fatih SARI
 * @group             : 
 * @last modified on  : 08-04-2022
 * @last modified by  : Fatih SARI
**/
public with sharing class SECURITY1_OpportunityController {
    public SECURITY1_OpportunityController() {
        // Constructor

    }

    @AuraEnabled(cacheable=true)   
    public static List<Opportunity> retrieve(){

        return SECURITY1_OpportunityHelper.retrieveOpportunity();

    }
}
