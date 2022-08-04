/**
 * @description       : LWC05 simple Calc
 * @author            : Fatih SARI
 * @group             : 
 * @last modified on  : 08-04-2022
 * @last modified by  : Fatih SARI
**/
public with sharing class LWC05_SimpleCalc {
    public LWC05_SimpleCalc() {

    }

    @AuraEnabled
    public static Decimal sum(Decimal x,Decimal y){
       return x+y;
    }

    @AuraEnabled
    public static Decimal sub(Decimal x,Decimal y){
       return x-y;
    }
    @AuraEnabled
    public static Decimal mul(Decimal x,Decimal y){
       return x*y;
    }
    @AuraEnabled
    public static Decimal div(Decimal x,Decimal y){
       return x/y;
    }

}
