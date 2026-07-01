connect live graham graham;

set timeout 1;


select
	*
from
	monthly_ar
where
	monthly_month in (11,12) and
	company = 'F' and
	monthly_year = 2013;

delete from monthly_ar where monthly_month  = 11 and
	company = 'F' and
	monthly_year = 2013;
commit;
insert into
	monthly_ar
values
	(@now,
	12,
	2013,
	40600.52,
	-144.66,
	-9765.19,
	8.78,
	50501.61,
	0,
	85959.06,
	0,
	0,
	493.49,
	.08,
	0,
	0,
	0,
	637.39,
	.82,
	0,
	0,
	0,
	0,
	0,
	21589.65,
	1898856.75,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	'Z');

commit;	

insert into
	monthly_ar
values
	(@now,
	12,
	2013,
	323691.23,
	-1446.43,
	-6388.32,
	1887.99,
	330558.15,
	0,
	62915.43,
	9178.90,
	0,
	7732.47,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	72343.95,
	1080703.46,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	'F');

commit;	


