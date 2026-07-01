Connect live sysadm dani;
set recovery off;
set bulk on;
lock database;
unload database g:\liveunload.uld overwrite;
disconnect live;
set server dell1950;
drop database live;
create database live;
connect live sysadm sysadm;
set recovery off;
load sql g:\liveunload\live.unl on client;
commit;
connect live sysadm dani;
set recovery on;
set bulk off;


lock database;
check database;
unlock database;
set logbackup on;

commit;
disconnect stock;

alter table 
	royalties_paid
drop
	old_inv_no;
unload data sql f:\royalties_paid1.uld royalties_paid;
drop table royalties_paid;
commit;
delete from royalties_paid;
load sql f:\royalties_paid1.uld;
check table royalties_paid;
commit;

select
	distinct name 
from
	systables;
