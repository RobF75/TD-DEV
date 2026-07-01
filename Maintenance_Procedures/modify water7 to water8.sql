connect water8 graham graham;

select
	*
from
	switch;

alter table
	station
add
	common_relay char (1);
alter table
	station
add
	tobe_tested char (1);
commit;

alter table
	switch
add
	testing_switch char (1);

update
	station
set	
	common_relay = 'N',
	tobe_tested = 'N';
commit;
update
	switch
set
	testing_switch = 'N';

