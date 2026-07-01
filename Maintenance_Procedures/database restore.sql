set server Server1/grahamf;

restore database from h:\databackup\live to stockdev;

rollforward stockdev to backup;


restore logs from h:\databackup\live to stockdev;

rollforward live end;
set server off;




