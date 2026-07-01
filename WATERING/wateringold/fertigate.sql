connect watering sysadm graham;
set timeout 1;

Alter table 
	program
drop 
	fertigate;
commit;

ALTER table
	prog_stations
add
	fertigate CHAR(1);
commit;
drop table fertigator;

CREATE TABLE FERTIGATOR
      (Fert_Id           INTEGER NOT NULL, 
       Fert_Litres_Min              NUMBER NOT NULL,
       Channel_No            Integer, 
       Fert_Desc           CHAR(20)
);

CREATE UNIQUE CLUSTERED HASHED INDEX XPKFertigator
  ON Fertigator
(
Fert_Id
)
SIZE 20 ROWS;
ALTER TABLE FERTIGATOR
       PRIMARY KEY (Fert_Id)
;
ALTER TABLE FERTIGATOR
       FOREIGN KEY Outputs (Channel_No)
               REFERENCES Channels
               ON DELETE SET NULL
;
CREATE PUBLIC SYNONYM FERTIGATOR FOR SYSADM.FERTIGATOR;
drop table station_fertigation;
CREATE TABLE Station_Fertigation
      (Program_No           INTEGER NOT NULL, 
       Fert_Id              INTEGER NOT NULL,
       Station_No            integer NOT NULL, 
       Sequence_No            integer NOT NULL, 
      Channel_No           integer, 
       Run_Time   integer not null, 
       On_Delay   integer not null
);

CREATE UNIQUE CLUSTERED HASHED INDEX XPKstation_Fert
  ON Station_Fertigation
(
Fert_Id
)
SIZE 100 ROWS;
ALTER TABLE Station_Fertigation
       PRIMARY KEY (Fert_Id)
;
ALTER TABLE Station_Fertigation
       FOREIGN KEY FK_Program (Program_No)
               REFERENCES Program
               ON DELETE CASCADE
;
ALTER TABLE Station_Fertigation
       FOREIGN KEY FK_Station (Station_No)
               REFERENCES Station
               ON DELETE CASCADE
;
CREATE PUBLIC SYNONYM FERTIGATOR FOR SYSADM.FERTIGATOR;
CREATE PUBLIC SYNONYM Station_Fertigation FOR SYSADM.Station_Fertigation;
commit;


