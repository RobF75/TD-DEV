connect stock graham graham;
set timeout 1;

DISCONNECT ALL;

******************************************************************************;
       *** the following inserts into the cult_paint_used 
	table the same values as the prior year 
	- use each year but change the year figures;
	MUST UPDATE YEAR;


select 
	'insert into Cult_Paint_Used (Cult_year_Used, CV_Paint_Number, Cultivar_Id, Paint_id)
VALUES (1999,'||CV_paint_Number||', '||'''' ||cp.Cultivar_Id||''''||', '||'''' ||Paint_id||''''||');'
from
	Cult_paint_used cp,
	cultivar c
where
	cp.cultivar_id = c.cult_id and
	Cult_Year_Used = 1998 and
	(Paint_id = 0 and
	not cv_paint_number = 2)
order by
	cp.Cultivar_Id;
***********************************************************************************;
Now make sure all new cultivars are added into table;

select
	'insert into cult_paint_used values ('''|| cult_id ||''',1999,1,0);'
from
	cultivar
where
	variety_type = 'F' and
	cult_id  not in
(select
	cultivar_id
from
	cultivar c,
	cult_paint_used cp
where
	c.cult_id = cp.cultivar_id and
	CULT_YEAR_USED = 1999)
order by 
	variety,
	cult_id;

****************************************************************;
now just to check that no strange paint numbers;
select
	cultivar_id
from
	cult_paint_used
where
	cult_year_used = 1999 and
	cv_paint_number not in ('1','2');

*************************************;
now to make sure that if there were any above make sure the're not required;
select
	*
from
	cult_paint_used
where
	cult_year_used = 1999 and
	cultivar_id in(
select
	cultivar_id
from
	cult_paint_used
where
	cult_year_used = 1999 and
	cv_paint_number not in (1,2));
**********************************************************************;
If there are any use this to update them;
update
	cult_paint_used
set
	cv_paint_number = 2
where
	cult_year_used = 1999 and
	cultivar_id = 'RAINIER' and
	cv_paint_number = 3;

commit;


*****************************************************************************
A bug in the cultivar details program causes the paint used # to not
be freed up when a paint is deleted to be changed, so use this to 
update a cult_paint_used form 3 back to 1 etc.;

select
	*
from
	cult_paint_used
where
	cult_year_used = 1999 and
	cultivar_id in(
select
	cultivar_id
FROM
	cult_paint_used
where
	cv_paint_number not in ('1', '2') and
	cult_year_used = 1999)
order by
	cultivar_id;
select
	'update
		cult_paint_used
	set
		cv_paint_number = 1
	where
		cultivar_id =  '||''''||cultivar_id||''''||
		'  and cult_year_used = 1998
		and cv_paint_number = 3;'
from
	cult_paint_used
where
	cult_year_used = 1998 and
	cv_paint_number = 3;

update
	cult_paint_used
set
	cv_paint_number = '1'
where
	cultivar_id = 'PC7222' and
	cult_year_used = 1999 and
	cv_paint_number = '5';
commit;

delete from
	cult_paint_used
where
	cultivar_id = 'GOLDBA' and
	cv_paint_number = '1' and
	cult_year_used = 1999;


*****************************************************************************;
*** the following inserts into the rtstock_paint_used table the 
	same values as the prior year - 
	use each year but change the year figures;

select 
	'insert into Rtstck_Paint_Used  (Rt_year_Used, Rt_Paint_Number, Rootstock_Id, Paint_id)
 VALUES (1999, '||Rt_paint_Number||','||'''' ||Rootstock_Id||''''||', '||'''' ||Paint_id||''''||');'
from 
	Rtstck_paint_used rp,
	Rootstock r
where 
	rp.rootstock_id = r.root_id and
	Rt_Year_Used = 1998 and
	paint_id = 0;

!!! This next bit was added because some changes were made
to the table via stock items program before this was run, so this bit
ensures that this is not affected.;

 and
	 NOT rootstock_id in
		(select
			rootstock_id
		from
			rtstck_paint_used
		where
			rt_year_used = 1998);

commit;

********************************************************************************;
	Same bug as in cultivar above;

select
	*
from
	rtstck_paint_used
where
	rt_year_used = 1997 and
	 rootstock_id in
		(select
			rootstock_id
		from
			rtstck_paint_used
		where
			rt_year_used = 1998);




commit;
