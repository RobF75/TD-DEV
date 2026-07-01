 ******************* UNLOAD, LOAD PROCEDURE FOR FLEMING'S NURSERIES **********;

set server dbntsrv;
deinstall database stock;
deinstall database stockdev;

******* TO BE DONE OUTSIDE THIS SCRIPT **********;
delete stockdev database;
copy stock database to stockdev;
******* END OF OUTSIDE SCRIPT **********************;

install database stock;

******* TO BE DONE OUTSIDE THIS SCRIPT **********;
erase all stored commands except sysadm created ones;
use k:\centura\flemdev\erasecommands.exe;
erase user at a time;
ie: JAN, DAWN, IAN, GUEST, TICKETS, AMANDA, GLENYS, 
CHRIS, ROBYN, CATE, DWAYNE, LYNN, BRENDAN, LIZ, 
CAROL, GRAHAM, WES, ZOE;
then erase all as final.
******* END OF OUTSIDE SCRIPT **********************;

connect stock sysadm dani;
set recovery off;
set bulk on;
lock database;
unload database stock.uld on server;
unlock database;
set bulk off;
disconnect stock;

$$$$$$  Graham's new bit $$$$$$$;

This section does the lot, no need to do any of the rest except to delete the stored commands;
*******************************************************************************************************;
Connect stock sysadm dani;
set recovery off;
set bulk on;
lock database;
reorganize;
set bulk off;
set recovery on;
lock database;
check database;
unlock database;
set logbackup on;
CREATE PUBLIC SYNONYM TRANSACTION FOR SYSADM.TRANSACTION;
commit;
disconnect stock;
*************************************************************;
When we have a problem with one table;
Connect stock sysadm dani;
set recovery off;
set bulk on;
lock database;
unload sql table.uld overwrite royalties_paid;
drop table royalties_paid;
load sql table.uld;


$$$$$$$$$$$$$$$$$;
SET SERVER DBNTSRV;
deinstall database stock;

******* TO BE DONE OUTSIDE THIS SCRIPT **********;
rename stock database to stkorg;
******* END OF OUTSIDE SCRIPT **********************;
$$$$$$$$$$;
SELECT * FROM TRANS_HISTORY;
CONNECT STOCK GRAHAM GRAHAM;
CREATE PUBLIC SYNONYM TRANSACTION FOR SYSADM.TRANSACTION;
create database stock;
connect stock sysadm DANI;

connect stock sysadm sysadm;
set recovery off;
lock database;
set bulk on;
load sql stock.uld on server log gdf.log;

commit;
set bulk off;
unlock database;
set recovery on;
lock database;
check database;
unlock database;
set logbackup on;
disconnect stock;

******* TO BE DONE OUTSIDE THIS SCRIPT **********;
open newstock.wts.sql;
redo the create synonyms just to make sure they are created, 
last time Trasaction table was not created;

redo all grant statements just to make sure;
******* END OF OUTSIDE SCRIPT **********************;

*********** END OF UNLOAD, LOAD PROCEDURE FOR FLEMING'S NURSERIES **********;







********** RESTORE PROCEDURE OF DATABASE SNAPSHOT ON TAPE **************;

set server server1;
deinstall database stock;

******* TO BE DONE OUTSIDE THIS SCRIPT **********;
rename stock database to stkorg;
create new folder as stock on db server ready for the restored database;

restore from tape or copy from k:\backup\stock\*.* to m:\sqldbs\stock      inc. all logs.
copy into m:\sqldbs\stock any hourly logs from log backup machine any logs after with numbers greater then snapshot Date.

rename stock.bkp to stock.dbs;
******* END OF OUTSIDE SCRIPT **********************;

install database stock;
rollforward stock to end;
rollforward stock to end;
rollforward stock end;
connect stock sysadm dani;
lock database;
check database;
unlock database;
disconnect stock;

********** END OF RESTORE PROCEDURE OF DATABASE SNAPSHOT ON TAPE ****;
