connect stockdev sysadm dani;
set timeout 1;


drop table bay_master;
drop table bay_location;
drop table bay_contents;

CREATE TABLE Bay_Master
(      Bay_Name            CHAR(8) NOT NULL,
	BAy_Id		SMALLINT,
	Shops_Or_Growers CHAR (1) NOT NULL,
      Bay_Description     CHAR(60)
);

CREATE UNIQUE INDEX PKBay_Name
  ON Bay_Master
(
	Bay_Name            ASC
);
commit;


CREATE TABLE Bay_Location
      (Bay_Location_Id          INTEGER NOT NULL,
       Bay_Name            CHAR(8) NOT NULL,
       Row#                 SMALLINT NOT NULL,
       Seq#                 SMALLINT,
	Left_Or_Right	CHAR(1) NOT NULL,
       Loc_Added_By         CHAR(10),
       Loc_Added_Date       DATETIME,
	Bay_id	SMALLINT
);


CREATE UNIQUE INDEX PKBay_Loc_Id
  ON Bay_Location
(
	Bay_Location_Id          ASC
);

CREATE UNIQUE INDEX AKLoc_Bay_Row
  ON Bay_Location
(
	Bay_Name            ASC,
	Row#                 ASC,
	SEQ#		ASC,
	Left_Or_Right	ASC
);

CREATE TABLE Bay_Contents
      (Stock_Item_No        SMALLINT,
       Year_of_Sale         SMALLINT NOT NULL,
       Bay_Location_Id          INTEGER NOT NULL,
       Quantity            NUMBER,
       Length         NUMBER,
       Added_By              CHAR(8), 
       Added_Date           DATETIME
);

connect stockdev sysadm dani;

CREATE UNIQUE INDEX PKBay_Contents
  ON Bay_Contents
(
	Stock_Item_No         ASC,
	Bay_Location_Id          ASC,
	Year_of_sale	ASC
);
commit;
drop index PKBay_Contents;

CREATE PUBLIC SYNONYM Bay_Master FOR SYSADM.Bay_Master ;
CREATE PUBLIC SYNONYM Bay_Location FOR SYSADM.Bay_Location ;
CREATE PUBLIC SYNONYM Bay_Contents FOR SYSADM.Bay_Contents ;

CREATE PUBLIC SYNONYM Bay_Backup FOR GRAHAM.Bay_Backup ;
commit;

connect stock sysadm dani;
connect stock graham graham;
set timeout 1;

insert into
	bay_backup (Year_of_Sale,
       			Bay_Location_Id,
       			Length,
      			Added_By, 
       			Added_Date )
select
	2003,
	bay_location_id,
	length,
	'GRAHAM',
	SysDateTime
from
	bay_contents
where
	year_of_sale = 2003;
commit;

insert into
	bay_contents (Year_of_Sale,
       			Bay_Location_Id,
       			Length,
      			Added_By, 
       			Added_Date )
select
	2003,
	bay_location_id,
	length,
	'GRAHAM',
	SysDateTime
from
	bay_backup
where
	year_of_sale = 2003;
commit;

select
	*
from
	bay_backup 
where
	year_of_sale = 2003;
