Connect stklocal sysadm dani;
set recovery off;
set bulk on;
lock database;
unload database e:\stklocal.uld overwrite;
disconnect stklocal;
set server local;
drop database stklocal;
create database stklocal;
connect stklocal sysadm sysadm;
set recovery off;
load sql e:\stklocal.uld;
commit;
set recovery on;
set bulk off;


lock database;
check database;
unlock database;
set logbackup on;

commit;
disconnect stklocal;

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
