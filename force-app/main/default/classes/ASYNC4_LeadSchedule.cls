/**
 * @description       : ASYNC4 Lead Schedule Class
 * @author            : Fatih SARI
 * @group             : 
 * @last modified on  : 08-04-2022
 * @last modified by  : Fatih SARI
**/
public with sharing class ASYNC4_LeadSchedule implements Schedulable {

    public void execute(SchedulableContext sc){
          List<Lead> multiLead = [SELECT Id, LeadSource FROM Lead];
        
        for (Lead single:multiLead){
            single.LeadSource='Web';
        }
        update multiLead;
    }
}


  // Comment out  ( VSCODE Short Code SHIFT+ALT+A or CTRL+K > CTRL+U ) with below codes and paste in anonymous window..


/* ASYNC4_LeadSchedule LS = New ASYNC4_LeadSchedule();

String CronStr='00 00 1 ? * SAT';
ID JobId=System.schedule('00 00 1 ? * SAT My Cron Text', CronStr, LS);


// Check Job Status
List<Sobject> CronJobs =[SELECT Id, TimesTriggered, CronJobDetailId, NextFireTime, PreviousFireTime FROM CronTrigger WHERE Id=:JobId];

System.debug('Jobs : '+ CronJobs); */