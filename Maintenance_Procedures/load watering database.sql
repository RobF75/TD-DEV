set server server3/grahamf;
drop database watering;
create database watering;
set server off;
connect watering sysadm sysadm;
load sql s:\gfleming\watering1.sql on client;
load sql k:\temp\hoddles.sql on client;
commit;

