
set server server3/grahamf;
drop database greenhouse;

create database greenhouse;

connect greenhouse sysadm sysadm;

create table Area (
	Area_No INTEGER,
	Area_Desc CHAR(50),
	Area_Active CHAR(1)
	);
create unique index XIArea on Area (Area_No ASC);


create table sensor
	(
	Sensor_no INTEGER,
	Area_no INTEGER,
	Sensor_Desc CHAR(50),
	Sensor_Type CHAR(12),
	Sensor_Active CHAR(1),
	High_Value INTEGER,
	Low_Value INTEGER,
	Upper_Address CHAR(8),
	Lower_Address CHAR(8),
	Port_no CHAR(2)
	);
create unique index XISensor on Sensor (Sensor_No ASC);

create table Switch
	(
	Switch_no INTEGER,
	Switch_Desc CHAR(50),
	Switch_Active CHAR(1),
	Switch_State INTEGER,
	Upper_Address CHAR(8),
	Lower_Address CHAR(8),
	Port_no CHAR(2)
	);
create unique index XISwitch on Switch (Switch_No ASC);

create table Sensor_Action (
	Sensor_no INTEGER,
	High_Value_Switch INTEGER,
	Low_Value_Switch INTEGER,
	Switch_Action INTEGER
	);
create index NXISensor_Act_High on Sensor_Action (Sensor_No ASC, High_Value_Switch ASC);
create index NXISensor_Act_Low on Sensor_Action (Sensor_No ASC, Low_Value_Switch ASC);

commit;

SELECT 
  Sensor.Sensor_No, 
  Sensor.Area_No, 
  Sensor.Sensor_Desc,
  Sensor.Upper_Address,
  Sensor.High_Value, 
  Sensor.Low_Value, 
  Sensor.Sensor_Active 
FROM Sensor, Area
WHERE 
   Sensor.Area_No = :1 AND 
   Sensor.Area_No = Area.Area_No 
ORDER BY 
  Sensor.Sensor_Desc;

select * from sensor;
	
	

