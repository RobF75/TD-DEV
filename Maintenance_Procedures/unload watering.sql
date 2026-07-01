Connect watering sysadm graham;
set recovery off;
set bulk on;
lock database;
unload database c:\temp\wateringsensor.uld overwrite on client;
set recovery on;
set bulk off;

set server server3/grahamf;
drop database watering;
create database watering;
connect watering sysadm sysadm;
load sql c:\temp\watering.uld on client;
commit;




