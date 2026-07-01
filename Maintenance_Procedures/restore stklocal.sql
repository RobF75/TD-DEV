connect stklocal graham graham;

set server grahampc/grahamf;

restore database from y:\live to stklocal;
rollforward stklocal to end;
restore logs from y:\live to stklocal;
rollforward stklocal end;
connect stklocal graham graham;
