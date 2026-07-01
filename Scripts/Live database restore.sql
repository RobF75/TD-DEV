set server p3server;


restore database from d:\backup\stock to stock;

rollforward stock to end;

restore logs from d:\backup\stock to stock;

rollforward stock end;



