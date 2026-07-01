connect watering graham graham;
set timeout 1;
connect hab graham graham;


select
	*
from
	systables;

select
	*
from
	program;

select
	prog_desc,
	prog_status,
	prog_next_dt
from
	program
order by
	prog_status,
	prog_next_dt;

select
	*
from
	prog_stations
where
	program_no = 47;

select
	*
from
	station;

select Program_no, station_desc, station_status, crnt_water_sec from prog_stations ps, station s where ps.station_no = s.station_no and program_no = 40 order by station_status, water_seq_no;


rollback;

select
	@now
from
	program;

update
	prog_stations
set
	station_status = 'READY'
where
	program_no = 47;
update 
	program
set
	prog_next_dt = @now,
	prog_status = 'READY'
where
	program_no = 47;
commit;
