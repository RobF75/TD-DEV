connect watering sysadm graham;
set timeout 1;

select
	*
from 
	program;


create table sensor(
	Sensor_no integer not null,
	channel_no integer,
	sensor_desc char(35),
	sensor_type char(20));

CREATE UNIQUE CLUSTERED HASHED INDEX XPKSensor
  ON Sensor
(
Sensor_No
)
SIZE 100 ROWS;


create table sensor_data(
	channel_no integer not null,
	Reading_DT datetime not null,
	sensor_value number);

CREATE UNIQUE CLUSTERED HASHED INDEX XPKSensorData
  ON Sensor_data
(
Channel_No,
Reading_DT
)
SIZE 100 ROWS;


create table prog_sensors(
	program_no integer not null,
	sensor_no integer not null,
	sensor_type char(20));

CREATE UNIQUE CLUSTERED HASHED INDEX XPKProg_Sensor
  ON Prog_Sensors
(
Program_No, 
Sensor_No
)
SIZE 100 ROWS;

ALTER TABLE Prog_Sensors
       PRIMARY KEY (Program_No, Sensor_No)
;

ALTER TABLE Sensor
       PRIMARY KEY (Sensor_No)
;

ALTER TABLE Sensor_Data
       PRIMARY KEY (Channel_No, Reading_DT)
;

ALTER TABLE Prog_Sensors
       FOREIGN KEY PMHave (Program_No)
               REFERENCES Program
               ON DELETE CASCADE
;

ALTER TABLE Sensor
       FOREIGN KEY Outputs (Channel_No)
               REFERENCES Channels
               ON DELETE SET NULL
;

ALTER TABLE Sensor_Data
       FOREIGN KEY Outputs (Channel_No)
               REFERENCES Channels
               ON DELETE Cascade
;

CREATE PUBLIC SYNONYM PROG_Sensors FOR SYSADM.PROG_Sensors;
CREATE PUBLIC SYNONYM Sensor FOR SYSADM.Sensor;
CREATE PUBLIC SYNONYM Sensor_Data FOR SYSADM.Sensor_Data;

alter table
	pump
add
	sensor_no integer,
	min_pressure integer,
	max_pressure integer;

alter table
	station
add
	sensor_no integer,
	min_pressure integer,
	max_pressure integer;
grant all on sensor, sensor_data to graham;

commit;

disconnect all;
