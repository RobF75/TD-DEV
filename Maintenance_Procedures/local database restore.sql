set server local;


restore database from r:\live to stklocal;

rollforward stklocal to end;


restore logs from c:\stock to stklocal;

rollforward stklocal end;

connect stklocal graham graham;

connect live graham graham;
connect zeetest;






