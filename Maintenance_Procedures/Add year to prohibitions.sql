connect stock graham graham;
set timeout 1;


insert into
	prohibition 	
		(year_of_prohib, 
		prohib_date_time,
		PROHIB_ENTERED_BY,
		cult_id,
		root_id,
		state_prohib_in,
		prohib_who_by
		)
select
	2001,
	prohib_date_time,
	'GRAHAM',
	cult_id,
	root_id,
	state_prohib_in,
	prohib_who_by
from
	prohibition
where
	year_of_prohib = 2000;

commit;
rollback;

