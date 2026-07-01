set server p3server;


restore database from d:\backup\serrc\ to SERRC;

rollforward SERRC to end;

restore logs from d:\backup\serrc to SERRC;

rollforward SERRC end;



