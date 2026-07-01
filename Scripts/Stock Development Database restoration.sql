set server p3server;

restore database from d:\backup\stock to stockdev;

rollforward stockdev to end;

restore logs from d:\backup\stock to stockdev;

rollforward stockdev end;

connect stockdev pdunlop pdunlop;
disconnect all;

