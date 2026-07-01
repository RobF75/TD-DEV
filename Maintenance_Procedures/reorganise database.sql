Connect live sysadm dani;

set bulk on;
lock database;
reorganize;
set bulk off;
set recovery on;
lock database;
check database;
unlock database;
set logbackup on;

commit;
disconnect live;

select
	*
from
	customer_order;
