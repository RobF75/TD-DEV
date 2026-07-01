Connect live Sysadm Dani;
Select Distinct Sysdatetime from Customer_Master;

Unload Database f:\temp\live.UNL Overwrite on Server;
Disconnect ALL;

Set Server server3/grahamf;
Shutdown database stockdev on;
Drop Database stockDev;
Create Database stockdev;
Set Server Off;


Connect stockdev Sysadm Sysadm;
Set Recovery Off;
Set Errorlevel 3;
Set Bulk On;
Set Outmessage 32000;
Lock Database;
commit;
Load sql f:\temp\live.UNL On Server Log f:\Temp\Reload.LOG;
 update statistics on database;
check database;
unlock database;
Commit;
Disconnect ALL;

Connect stockdev Sysadm Dani;
Set Recovery On;
Set Logbackup On;

Select Distinct Sysdatetime from Customer_Master;
Disconnect ALL;
