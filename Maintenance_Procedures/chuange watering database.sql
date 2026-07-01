connect watering sysadm graham;
set timeout 1;



unload database f:\newdatabase\yellingbo.sql on server;

disconnect all;

set server server3/grahamf;
drop database watering;
create database watering;
set server off;

connect watering sysadm sysadm;

load sql k:\unify\watering\watering.uld on client;
commit;

disconnect all;
