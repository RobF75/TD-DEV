connect live sysadm dani;
set timeout 1;

alter table
	hh_users
add
	job_watering CHAR(1);
commit;

connect live graham graham;
set timeout 1;

select
	*
from
	hh_users
order by
	id;


insert into
	hh_users
	(id, name, surname, access_level, job_loads, job_pickups, job_late_arrivals, job_growers, job_shortages, job_pots_counts, job_pots_locchange, last_ip, job_tickets, job_checker, job_loader, job_washer, job_watering, last_access,password, password_change_date, Job_Timesheet)
select
	10, 'DREW', 'Bunting', access_level, job_loads, job_pickups, job_late_arrivals, job_growers, job_shortages, job_pots_counts, job_pots_locchange, 0, job_tickets, job_checker, job_loader, job_washer, job_watering, '', 'APPLE', password_change_date, 'N'
from
	hh_users
where
	name = 'GRAHAM';
commit;

update
	hh_users
set
	name = 'Marc'
where
	id = 25;
commit;

update hh_users set password_change_date = 05/25/2010;

update hh_users set locked = '';
commit;
