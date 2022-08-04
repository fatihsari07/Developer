/**
 * @description       : AURA3 - Simple Calculator with Client Controller (JS) and Server Controller  (APEX)
 * @author            : Fatih SARI
 * @group             : 
 * @last modified on  : 08-04-2022
 * @last modified by  : Fatih SARI
**/
public class AURA3_SimpleCalcServerController {
   
    @AuraEnabled
    public static decimal serversum(decimal n1,decimal n2){
        system.debug('Sum : '+n1+'+'+n2);
        
        return n1+n2;
    }

    @AuraEnabled
    public static decimal serversub(decimal n1,decimal n2){
        
        return n1-n2;
    }

    @AuraEnabled
    public static decimal servermul(decimal n1,decimal n2){
        
        return n1*n2;
    }

    @AuraEnabled
    public static decimal serverdiv(decimal n1,decimal n2){
        
        return n1/n2;
    }


}