set server local;

create database creddev;
connect creddev sysadm sysadm;


load sql k:\centura\creddev\creditor.uld;
commit;
deinstall database creddev;

set server dbntsrv;
install database creditor;
install database creddev;
