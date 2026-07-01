SET LOADVERSION 11.6.2
/
GRANT CONNECT TO "SYSADM" IDENTIFIED BY ENCRYPTED 'rkoSigJHJ!+hdC1"T0V#!JGZDq.!!!!!' 
/
GRANT CONNECT TO "SYSSQL" IDENTIFIED BY ENCRYPTED 'rkgUs%P>[_4(Q:+e%O*I)JT''^7D!!!!!' 
/
GRANT CONNECT TO "JAN" IDENTIFIED BY ENCRYPTED 'rkTH*^=^N?*VA(8Y">pW5V*5^XR!!!!!' 
/
GRANT RESOURCE TO "JAN" 
/
GRANT DBA TO "JAN" 
/
GRANT CONNECT TO "GRAHAM" IDENTIFIED BY ENCRYPTED 'rk5G,Lk74GSADJ\o,'':3H-&%Hq=!!!!!' 
/
GRANT RESOURCE TO "GRAHAM" 
/
GRANT DBA TO "GRAHAM" 
/
CREATE TABLE SYSADM.CHANNELS (
  CHANNEL_NO INTEGER NOT NULL, 
  ACTIVE CHAR(4), 
  UPPER_ADDRESS CHAR(8), 
  LOWER_ADDRESS CHAR(8), 
  SIXTEEN_BIT_ADDRESS CHAR(4), 
  BANK_NO CHAR(2) NOT NULL, 
  BANK_PORT_NO CHAR(2) NOT NULL)
PCTFREE 10
/
CREATE UNIQUE CLUSTERED HASHED INDEX SYSADM.XPKE_12 ON SYSADM.CHANNELS(
  CHANNEL_NO)
PCTFREE 10 SIZE 100 ROWS
/
INSERT INTO SYSADM.CHANNELS VALUES(
  :1,
  :2,
  :3,
  :4,
  :5,
  :6,
  :7)
\
$DATATYPES NUMERIC,CHARACTER,CHARACTER,CHARACTER,CHARACTER,CHARACTER,CHARACTER
0,"OFF","0013A200","406A0149","","1","1",
1,"OFF","0013A200","403C1860","","1","1",
2,"OFF","0013A200","403C1860","","1","2",
3,"OFF","0013A200","406A009C","","1","1",
4,"OFF","0013A200","403CDB80","","1","1",
5,"OFF","0013A200","4055C53F","","1","1",
6,"OFF","0013A200","4055C53F","","1","2",
7,"OFF","0013A200","4055C53F","","1","3",
8,"OFF","0013A200","4092CB7B","","1","1",
9,"OFF","0013A200","4092CB7B","","1","2",
/
GRANT SELECT ON SYSADM.CHANNELS TO GRAHAM 
/
GRANT INSERT ON SYSADM.CHANNELS TO GRAHAM 
/
GRANT UPDATE ON SYSADM.CHANNELS TO GRAHAM 
/
GRANT DELETE ON SYSADM.CHANNELS TO GRAHAM 
/
GRANT ALTER ON SYSADM.CHANNELS TO GRAHAM 
/
GRANT INDEX ON SYSADM.CHANNELS TO GRAHAM 
/
GRANT SELECT ON SYSADM.CHANNELS TO JAN 
/
GRANT INSERT ON SYSADM.CHANNELS TO JAN 
/
GRANT UPDATE ON SYSADM.CHANNELS TO JAN 
/
GRANT DELETE ON SYSADM.CHANNELS TO JAN 
/
GRANT ALTER ON SYSADM.CHANNELS TO JAN 
/
GRANT INDEX ON SYSADM.CHANNELS TO JAN 
/
CREATE PUBLIC SYNONYM CHANNELS FOR SYSADM.CHANNELS
/
CREATE TABLE SYSADM.PROG_STATIONS (
  INSTANCE_NO INTEGER NOT NULL, 
  PROGRAM_NO INTEGER NOT NULL, 
  STATION_NO INTEGER NOT NULL, 
  CRNT_WATER_SEC DOUBLE PRECISION NOT NULL, 
  WATERED_SEC DOUBLE PRECISION NOT NULL, 
  STATION_STATUS CHAR(10) NOT NULL, 
  WATER_SEQ_NO INTEGER)
PCTFREE 10
/
CREATE UNIQUE CLUSTERED HASHED INDEX SYSADM.XPKPROG_PUMPS ON SYSADM.PROG_STATIONS(
  INSTANCE_NO)
PCTFREE 10 SIZE 478 ROWS
/
INSERT INTO SYSADM.PROG_STATIONS VALUES(
  :1,
  :2,
  :3,
  :4,
  :5,
  :6,
  :7)
\
$DATATYPES NUMERIC,NUMERIC,NUMERIC,NUMERIC,NUMERIC,CHARACTER,NUMERIC
1,1,1,600,0,"READY",0,
2,1,2,600,0,"READY",1,
3,1,3,1800,0,"READY",2,
4,1,4,1800,0,"READY",3,
5,1,7,1800,0,"READY",6,
6,1,5,1800,0,"READY",5,
7,1,6,1800,0,"READY",4,
8,2,2,600,600,"STOPPED",1,
9,2,1,600,600,"STOPPED",0,
10,2,3,1800,1800,"STOPPED",2,
11,2,4,1800,1800,"STOPPED",3,
12,2,7,1800,1800,"STOPPED",6,
13,2,5,1800,1800,"STOPPED",5,
14,2,6,1800,1800,"STOPPED",4,
15,2,8,1800,1800,"STOPPED",8,
16,2,9,600,600,"STOPPED",7,
17,1,8,1800,0,"READY",8,
18,1,9,600,0,"READY",7,
19,3,2,600,0,"READY",1,
20,3,1,600,0,"READY",0,
21,3,3,1800,0,"READY",2,
22,3,4,1800,0,"READY",3,
23,3,7,1800,0,"READY",4,
24,3,5,1800,0,"READY",5,
25,3,6,1800,0,"READY",6,
26,3,8,1800,0,"READY",7,
27,3,9,600,0,"READY",8,
/
GRANT SELECT ON SYSADM.PROG_STATIONS TO GRAHAM 
/
GRANT INSERT ON SYSADM.PROG_STATIONS TO GRAHAM 
/
GRANT UPDATE ON SYSADM.PROG_STATIONS TO GRAHAM 
/
GRANT DELETE ON SYSADM.PROG_STATIONS TO GRAHAM 
/
GRANT ALTER ON SYSADM.PROG_STATIONS TO GRAHAM 
/
GRANT INDEX ON SYSADM.PROG_STATIONS TO GRAHAM 
/
GRANT SELECT ON SYSADM.PROG_STATIONS TO JAN 
/
GRANT INSERT ON SYSADM.PROG_STATIONS TO JAN 
/
GRANT UPDATE ON SYSADM.PROG_STATIONS TO JAN 
/
GRANT DELETE ON SYSADM.PROG_STATIONS TO JAN 
/
GRANT ALTER ON SYSADM.PROG_STATIONS TO JAN 
/
GRANT INDEX ON SYSADM.PROG_STATIONS TO JAN 
/
CREATE PUBLIC SYNONYM PROG_STATIONS FOR SYSADM.PROG_STATIONS
/
CREATE TABLE SYSADM.PROGRAM (
  PROGRAM_NO INTEGER NOT NULL, 
  PROG_START_DT TIMESTAMP NOT NULL, 
  PROG_NEXT_DT TIMESTAMP NOT NULL, 
  PROG_DESC CHAR(30) NOT NULL, 
  RECURR_DAYS SMALLINT NOT NULL, 
  PROG_STATUS CHAR(10) NOT NULL)
PCTFREE 10
/
CREATE UNIQUE CLUSTERED HASHED INDEX SYSADM.XPKPROGRAM ON SYSADM.PROGRAM(
  PROGRAM_NO)
PCTFREE 10 SIZE 100 ROWS
/
INSERT INTO SYSADM.PROGRAM VALUES(
  :1,
  :2,
  :3,
  :4,
  :5,
  :6)
\
$DATATYPES NUMERIC,DATETIME,DATETIME,CHARACTER,NUMERIC,CHARACTER
1,2014-03-10-04.00.00.000000,2014-03-12-04.00.00.000000,"4AM",1,"READY",
2,2014-03-11-16.00.00.000000,2014-03-11-16.00.00.000000,"4PM ",1,"STOPPED",
3,2014-03-09-10.30.00.000000,2014-03-12-10.30.00.000000,"10.30 AM",1,"READY",
/
GRANT SELECT ON SYSADM.PROGRAM TO GRAHAM 
/
GRANT INSERT ON SYSADM.PROGRAM TO GRAHAM 
/
GRANT UPDATE ON SYSADM.PROGRAM TO GRAHAM 
/
GRANT DELETE ON SYSADM.PROGRAM TO GRAHAM 
/
GRANT ALTER ON SYSADM.PROGRAM TO GRAHAM 
/
GRANT INDEX ON SYSADM.PROGRAM TO GRAHAM 
/
GRANT SELECT ON SYSADM.PROGRAM TO JAN 
/
GRANT INSERT ON SYSADM.PROGRAM TO JAN 
/
GRANT UPDATE ON SYSADM.PROGRAM TO JAN 
/
GRANT DELETE ON SYSADM.PROGRAM TO JAN 
/
GRANT ALTER ON SYSADM.PROGRAM TO JAN 
/
GRANT INDEX ON SYSADM.PROGRAM TO JAN 
/
CREATE PUBLIC SYNONYM PROGRAM FOR SYSADM.PROGRAM
/
CREATE TABLE SYSADM.PUMP (
  PUMP_NO INTEGER NOT NULL, 
  CHANNEL_NO INTEGER, 
  PUMP_DESC CHAR(30) NOT NULL, 
  PUMP_LITRES_MIN DOUBLE PRECISION NOT NULL, 
  START_DELAY_SECS DOUBLE PRECISION NOT NULL, 
  PUMP_STATUS CHAR(10) NOT NULL, 
  DELAYED_SECS DOUBLE PRECISION)
PCTFREE 10
/
CREATE UNIQUE CLUSTERED HASHED INDEX SYSADM.XPKPUMP ON SYSADM.PUMP(
  PUMP_NO)
PCTFREE 10 SIZE 100 ROWS
/
INSERT INTO SYSADM.PUMP VALUES(
  :1,
  :2,
  :3,
  :4,
  :5,
  :6,
  :7)
\
$DATATYPES NUMERIC,NUMERIC,CHARACTER,NUMERIC,NUMERIC,CHARACTER,NUMERIC
1,0,"Pump 1",1000,0,"OFF",0,
/
GRANT SELECT ON SYSADM.PUMP TO GRAHAM 
/
GRANT INSERT ON SYSADM.PUMP TO GRAHAM 
/
GRANT UPDATE ON SYSADM.PUMP TO GRAHAM 
/
GRANT DELETE ON SYSADM.PUMP TO GRAHAM 
/
GRANT ALTER ON SYSADM.PUMP TO GRAHAM 
/
GRANT INDEX ON SYSADM.PUMP TO GRAHAM 
/
GRANT SELECT ON SYSADM.PUMP TO JAN 
/
GRANT INSERT ON SYSADM.PUMP TO JAN 
/
GRANT UPDATE ON SYSADM.PUMP TO JAN 
/
GRANT DELETE ON SYSADM.PUMP TO JAN 
/
GRANT ALTER ON SYSADM.PUMP TO JAN 
/
GRANT INDEX ON SYSADM.PUMP TO JAN 
/
CREATE PUBLIC SYNONYM PUMP FOR SYSADM.PUMP
/
CREATE TABLE SYSADM.STATION (
  STATION_NO INTEGER NOT NULL, 
  CHANNEL_NO INTEGER, 
  PUMP_NO INTEGER NOT NULL, 
  STATION_DESC CHAR(30) NOT NULL, 
  STATION_LITRES_MIN DOUBLE PRECISION NOT NULL, 
  DEF_WATER_SECS DOUBLE PRECISION NOT NULL, 
  COMMON_RELAY CHAR(1), 
  TOBE_TESTED CHAR(1))
PCTFREE 10
/
CREATE UNIQUE CLUSTERED HASHED INDEX SYSADM.XPKSTATION ON SYSADM.STATION(
  STATION_NO)
PCTFREE 10 SIZE 300 ROWS
/
INSERT INTO SYSADM.STATION VALUES(
  :1,
  :2,
  :3,
  :4,
  :5,
  :6,
  :7,
  :8)
\
$DATATYPES NUMERIC,NUMERIC,NUMERIC,CHARACTER,NUMERIC,NUMERIC,CHARACTER,CHARACTER
1,1,1,"Pinks 1a",1000,600,"","",
2,2,1,"Pinks 1b",1000,600,"","",
3,3,1,"Orch33",1000,1800,"","",
4,4,1,"MOdiTop 3",1000,1800,"","",
5,6,1,"AboveTrack2",1000,1800,"","",
6,5,1,"AboveTrack1",1000,1800,"","",
7,7,1,"AboveTrack3",1000,1800,"","",
8,9,1,"Above track 2 2",1000,1800,"","",
9,8,1,"Above track 2 1",1000,600,"","",
/
GRANT SELECT ON SYSADM.STATION TO GRAHAM 
/
GRANT INSERT ON SYSADM.STATION TO GRAHAM 
/
GRANT UPDATE ON SYSADM.STATION TO GRAHAM 
/
GRANT DELETE ON SYSADM.STATION TO GRAHAM 
/
GRANT ALTER ON SYSADM.STATION TO GRAHAM 
/
GRANT INDEX ON SYSADM.STATION TO GRAHAM 
/
GRANT SELECT ON SYSADM.STATION TO JAN 
/
GRANT INSERT ON SYSADM.STATION TO JAN 
/
GRANT UPDATE ON SYSADM.STATION TO JAN 
/
GRANT DELETE ON SYSADM.STATION TO JAN 
/
GRANT ALTER ON SYSADM.STATION TO JAN 
/
GRANT INDEX ON SYSADM.STATION TO JAN 
/
CREATE PUBLIC SYNONYM STATION FOR SYSADM.STATION
/
CREATE TABLE SYSADM.PROG_SWITCHES (
  PROGRAM_NO INTEGER NOT NULL, 
  SWITCH_NO INTEGER NOT NULL, 
  VALID_STATE CHAR(3) NOT NULL, 
  PROG_ACTION CHAR(10), 
  PROGIN_PROGRESS CHAR(10))
PCTFREE 10
/
CREATE UNIQUE CLUSTERED HASHED INDEX SYSADM.XPKPROG_SWITCH ON SYSADM.PROG_SWITCHES(
  PROGRAM_NO, 
  SWITCH_NO)
PCTFREE 10 SIZE 100 ROWS
/
INSERT INTO SYSADM.PROG_SWITCHES VALUES(
  :1,
  :2,
  :3,
  :4,
  :5)
\
$DATATYPES NUMERIC,NUMERIC,CHARACTER,CHARACTER,CHARACTER
/
GRANT SELECT ON SYSADM.PROG_SWITCHES TO GRAHAM 
/
GRANT INSERT ON SYSADM.PROG_SWITCHES TO GRAHAM 
/
GRANT UPDATE ON SYSADM.PROG_SWITCHES TO GRAHAM 
/
GRANT DELETE ON SYSADM.PROG_SWITCHES TO GRAHAM 
/
GRANT ALTER ON SYSADM.PROG_SWITCHES TO GRAHAM 
/
GRANT INDEX ON SYSADM.PROG_SWITCHES TO GRAHAM 
/
GRANT SELECT ON SYSADM.PROG_SWITCHES TO JAN 
/
GRANT INSERT ON SYSADM.PROG_SWITCHES TO JAN 
/
GRANT UPDATE ON SYSADM.PROG_SWITCHES TO JAN 
/
GRANT DELETE ON SYSADM.PROG_SWITCHES TO JAN 
/
GRANT ALTER ON SYSADM.PROG_SWITCHES TO JAN 
/
GRANT INDEX ON SYSADM.PROG_SWITCHES TO JAN 
/
CREATE PUBLIC SYNONYM PROG_SWITCHES FOR SYSADM.PROG_SWITCHES
/
CREATE TABLE SYSADM.SWITCH (
  SWITCH_NO INTEGER NOT NULL, 
  CHANNEL_NO INTEGER, 
  SWITCH_DESC CHAR(30) NOT NULL, 
  SWITCH_STATUS CHAR(3) NOT NULL, 
  TESTING_SWITCH CHAR(1))
PCTFREE 10
/
CREATE UNIQUE CLUSTERED HASHED INDEX SYSADM.XPKSWITCH ON SYSADM.SWITCH(
  SWITCH_NO)
PCTFREE 10 SIZE 100 ROWS
/
INSERT INTO SYSADM.SWITCH VALUES(
  :1,
  :2,
  :3,
  :4,
  :5)
\
$DATATYPES NUMERIC,NUMERIC,CHARACTER,CHARACTER,CHARACTER
1,,"Rain Switch","ON","N",
/
GRANT SELECT ON SYSADM.SWITCH TO GRAHAM 
/
GRANT INSERT ON SYSADM.SWITCH TO GRAHAM 
/
GRANT UPDATE ON SYSADM.SWITCH TO GRAHAM 
/
GRANT DELETE ON SYSADM.SWITCH TO GRAHAM 
/
GRANT ALTER ON SYSADM.SWITCH TO GRAHAM 
/
GRANT INDEX ON SYSADM.SWITCH TO GRAHAM 
/
GRANT SELECT ON SYSADM.SWITCH TO JAN 
/
GRANT INSERT ON SYSADM.SWITCH TO JAN 
/
GRANT UPDATE ON SYSADM.SWITCH TO JAN 
/
GRANT DELETE ON SYSADM.SWITCH TO JAN 
/
GRANT ALTER ON SYSADM.SWITCH TO JAN 
/
GRANT INDEX ON SYSADM.SWITCH TO JAN 
/
CREATE PUBLIC SYNONYM SWITCH FOR SYSADM.SWITCH
/
SET REFINTCHECK OFF
/
ALTER TABLE SYSADM.CHANNELS PRIMARY KEY (
  CHANNEL_NO)
/
ALTER TABLE SYSADM.PROGRAM PRIMARY KEY (
  PROGRAM_NO)
/
ALTER TABLE SYSADM.PROG_STATIONS PRIMARY KEY (
  INSTANCE_NO)
/
ALTER TABLE SYSADM.PROG_SWITCHES PRIMARY KEY (
  PROGRAM_NO,
  SWITCH_NO)
/
ALTER TABLE SYSADM.PUMP PRIMARY KEY (
  PUMP_NO)
/
ALTER TABLE SYSADM.STATION PRIMARY KEY (
  STATION_NO)
/
ALTER TABLE SYSADM.SWITCH PRIMARY KEY (
  SWITCH_NO)
/
SET REFINTCHECK ON
/
SET REFINTCHECK OFF
/
ALTER TABLE SYSADM.PROG_STATIONS FOREIGN KEY PSTARTED (
  STATION_NO) REFERENCES SYSADM.STATION ON DELETE CASCADE
/
ALTER TABLE SYSADM.PROG_STATIONS FOREIGN KEY PSTARTS (
  PROGRAM_NO) REFERENCES SYSADM.PROGRAM ON DELETE CASCADE
/
ALTER TABLE SYSADM.PROG_SWITCHES FOREIGN KEY PMHAVE (
  PROGRAM_NO) REFERENCES SYSADM.PROGRAM ON DELETE CASCADE
/
ALTER TABLE SYSADM.PUMP FOREIGN KEY OUTPUTS (
  CHANNEL_NO) REFERENCES SYSADM.CHANNELS ON DELETE SET NULL
/
ALTER TABLE SYSADM.STATION FOREIGN KEY OUTPUTS (
  CHANNEL_NO) REFERENCES SYSADM.CHANNELS ON DELETE SET NULL
/
ALTER TABLE SYSADM.SWITCH FOREIGN KEY OUTPUTS (
  CHANNEL_NO) REFERENCES SYSADM.CHANNELS ON DELETE SET NULL
/
SET REFINTCHECK ON
/
GRANT SELECT ON SYSSQL.SYSTABLES TO PUBLIC 
/
GRANT SELECT ON SYSSQL.SYSTABLES TO SYSSQL 
/
GRANT SELECT ON SYSSQL.SYSCOLUMNS TO PUBLIC 
/
GRANT SELECT ON SYSSQL.SYSCOLUMNS TO SYSSQL 
/
GRANT SELECT ON SYSSQL.SYSINDEXES TO PUBLIC 
/
GRANT SELECT ON SYSSQL.SYSINDEXES TO SYSSQL 
/
GRANT SELECT ON SYSSQL.SYSKEYS TO PUBLIC 
/
GRANT SELECT ON SYSSQL.SYSKEYS TO SYSSQL 
/
GRANT SELECT ON SYSSQL.SYSCOLAUTH TO PUBLIC 
/
GRANT SELECT ON SYSSQL.SYSCOLAUTH TO SYSSQL 
/
GRANT SELECT ON SYSSQL.SYSTABAUTH TO PUBLIC 
/
GRANT SELECT ON SYSSQL.SYSTABAUTH TO SYSSQL 
/
GRANT SELECT ON SYSSQL.SYSSYNONYMS TO PUBLIC 
/
GRANT SELECT ON SYSSQL.SYSSYNONYMS TO SYSSQL 
/
GRANT SELECT ON SYSSQL.SYSCOMMANDS TO PUBLIC 
/
GRANT SELECT ON SYSSQL.SYSCOMMANDS TO SYSSQL 
/
GRANT SELECT ON SYSSQL.SYSEXECUTEAUTH TO PUBLIC 
/
GRANT SELECT ON SYSSQL.SYSEXECUTEAUTH TO SYSSQL 
/
GRANT SELECT ON SYSSQL.SYSTRIGGERS TO PUBLIC 
/
GRANT SELECT ON SYSSQL.SYSTRIGGERS TO SYSSQL 
/
GRANT SELECT ON SYSSQL.SYSTRGCOLS TO PUBLIC 
/
GRANT SELECT ON SYSSQL.SYSTRGCOLS TO SYSSQL 
/
GRANT SELECT ON SYSSQL.SYSEVENTS TO PUBLIC 
/
GRANT SELECT ON SYSSQL.SYSEVENTS TO SYSSQL 
/
GRANT SELECT ON SYSSQL.SYSPARTTRANS TO PUBLIC 
/
GRANT SELECT ON SYSSQL.SYSPARTTRANS TO SYSSQL 
/
GRANT SELECT ON SYSSQL.SYSEXTFUN TO PUBLIC 
/
GRANT SELECT ON SYSSQL.SYSEXTFUN TO SYSSQL 
/
GRANT SELECT ON SYSSQL.SYSEXTPARAM TO PUBLIC 
/
GRANT SELECT ON SYSSQL.SYSEXTPARAM TO SYSSQL 
/
GRANT SELECT ON SYSSQL.SYSDEPENDENCIES TO PUBLIC 
/
GRANT SELECT ON SYSSQL.SYSDEPENDENCIES TO SYSSQL 
/
GRANT SELECT ON SYSSQL.SYSOBJSYN TO PUBLIC 
/
GRANT SELECT ON SYSSQL.SYSOBJSYN TO SYSSQL 
/
GRANT SELECT ON SYSSQL.SYSOBJAUTH TO PUBLIC 
/
GRANT SELECT ON SYSSQL.SYSOBJAUTH TO SYSSQL 
/
STORE GRAHAM.CLSPMPDELAYED UPDATE Pump   
SET  
  Delayed_Secs = 0 
WHERE Pump_No = :1 
/
STORE GRAHAM.GONPUMPTSTP SELECT DISTINCT  
  Pump_No,  
  Pump_Status,  
  Channel_No  
FROM  
  Pump  
WHERE  
  Pump_Status = 'ON' 
/
STORE GRAHAM.POPPROGS SELECT  
  Program_No,  
  Prog_Start_DT,  
  Prog_Start_DT,  
  Prog_Next_DT,  
  Prog_Desc,  
  Recurr_Days,  
  Prog_Status 
FROM Program  
ORDER BY Prog_Status, Prog_Next_DT 
/
STORE GRAHAM.REFPROGS SELECT  
  Program_No,  
  Prog_Start_DT,  
  Prog_Start_DT,  
  Prog_Next_DT,  
  Prog_Desc,  
  Recurr_Days,  
  Prog_Status 
FROM Program  
WHERE Program_No = :1 
/
STORE GRAHAM.POPPRGSTATS SELECT  
  Prog_Stations.Instance_No,  
  Prog_Stations.Program_No,  
  Prog_Stations.Station_No,  
  Station.Pump_No,  
  Pump.Pump_Desc,  
  Station.Channel_No,  
  Prog_Stations.Water_Seq_No,  
  Prog_Stations.Water_Seq_No,  
  Station.Station_Desc,  
  Station.Station_Litres_Min,  
  Station.Def_Water_Secs,  
  Prog_Stations.Crnt_Water_Sec,  
  Prog_Stations.Watered_Sec,  
  Prog_Stations.Station_Status,  
  Pump.Channel_No,  
  Pump.Pump_Litres_Min,  
  Pump.Start_Delay_Secs,  
  Pump.Pump_Status  
FROM Prog_Stations, Station, Pump  
WHERE  
   Prog_Stations.Program_No = :1 AND  
   Prog_Stations.Station_No = Station.Station_No AND  
   Station.Pump_No = Pump.Pump_No  
ORDER BY  
  Prog_Stations.Station_Status,  
  Prog_Stations.Water_Seq_No,  
  Station.Station_Litres_Min DESC 
/
STORE GRAHAM.REFPRGSTATS SELECT  
  Prog_Stations.Instance_No,  
  Prog_Stations.Program_No,  
  Prog_Stations.Station_No,  
  Station.Pump_No,  
  Pump.Pump_Desc,  
  Station.Channel_No,  
  Prog_Stations.Water_Seq_No,  
  Prog_Stations.Water_Seq_No,  
  Station.Station_Desc,  
  Station.Station_Litres_Min,  
  Station.Def_Water_Secs,  
  Prog_Stations.Crnt_Water_Sec,  
  Prog_Stations.Watered_Sec,  
  Prog_Stations.Station_Status,  
  Pump.Channel_No,  
  Pump.Pump_Litres_Min,  
  Pump.Start_Delay_Secs,  
  Pump.Pump_Status  
FROM Prog_Stations, Station, Pump  
WHERE  
   Prog_Stations.Program_No = :1 AND  
   Prog_Stations.Instance_No = :2 AND  
   Prog_Stations.Station_No = Station.Station_No AND  
   Station.Pump_No = Pump.Pump_No  
/
STORE GRAHAM.INSPROGS INSERT INTO Program   
( Program_No,  
  Prog_Start_DT,  
  Prog_Next_DT,  
  Prog_Desc,  
  Recurr_Days,  
  Prog_Status ) VALUES ( :1, :2, :3, :4, :5, :6 ) 
/
STORE GRAHAM.UPDTPROGS UPDATE Program  
SET  
  Prog_Start_DT = :2,  
  Prog_Next_DT = :3,  
  Prog_Desc = :4,  
  Recurr_Days = :5,  
  Prog_Status = :6 
WHERE  
  Program_No = :1
/
STORE GRAHAM.DELPROGS DELETE FROM Program WHERE Program_No = :1
/
STORE GRAHAM.INSPRGSTATS INSERT INTO Prog_Stations   
( Instance_No,  
  Program_No,  
  Station_No,   
  Water_Seq_No,  
  Crnt_Water_Sec,  
  Watered_Sec,  
  Station_Status ) VALUES ( :1, :2, :3, :4, :5, :6, :7 ) 
/
STORE GRAHAM.UPDTPRGSTATS UPDATE Prog_Stations 
SET  
  Program_No = :2,  
  Station_No = :3,   
  Water_Seq_No = :4,  
  Crnt_Water_Sec = :5,  
  Watered_Sec = :6,  
  Station_Status = :7 
WHERE  
  Instance_No = :1
/
STORE GRAHAM.DELPRGSTATS DELETE FROM Prog_Stations WHERE Instance_No = :1
/
STORE GRAHAM.POPSTATIONS SELECT  
  Station.Station_No,  
  Station.Channel_No,  
  Station.Pump_No,  
  Pump.Pump_Desc,  
  Station.Station_Desc,  
  Station.Station_Litres_Min,  
  Station.Def_Water_Secs 
FROM Station, Pump  
WHERE  
   Station.Pump_No = Pump.Pump_No  
ORDER BY Station.Pump_No, Station.Station_Desc
/
STORE GRAHAM.REFSTATIONS SELECT  
  Station.Station_No,  
  Station.Channel_No,  
  Station.Pump_No,  
  Pump.Pump_Desc,  
  Station.Station_Desc,  
  Station.Station_Litres_Min,  
  Station.Def_Water_Secs 
FROM Station, Pump 
WHERE  
  Station.Station_No = :1 AND  
  Station.Pump_No = Pump.Pump_No 
/
STORE GRAHAM.INSSTATIONS INSERT INTO Station   
( Station_No,  
  Pump_No,  
  Channel_No,  
  Station_Desc,  
  Station_Litres_Min,  
  Def_Water_Secs ) VALUES ( :1, :2, :3, :4, :5, :6 ) 
/
STORE GRAHAM.UPDTSTATIONS UPDATE Station 
SET  
  Pump_No = :2,  
  Channel_No = :3,  
  Station_Desc = :4,  
  Station_Litres_Min = :5,  
  Def_Water_Secs = :6 
WHERE  
  Station_No = :1
/
STORE GRAHAM.DELSTATIONS DELETE FROM Station WHERE Station_No = :1
/
STORE GRAHAM.POPPUMPS SELECT  
  Pump_No,  
  Channel_No,  
  Pump_Desc,  
  Pump_Litres_Min,  
  Start_Delay_Secs,  
  Delayed_Secs,  
  Pump_Status 
FROM Pump  
ORDER BY Pump_Desc 
/
STORE GRAHAM.REFPUMPS SELECT  
  Pump_No,  
  Channel_No,  
  Pump_Desc,  
  Pump_Litres_Min,  
  Start_Delay_Secs,  
  Delayed_Secs,  
  Pump_Status 
FROM Pump  
WHERE Pump_No = :1 
/
STORE GRAHAM.INSPUMPS INSERT INTO Pump   
( Pump_No,  
  Channel_No,  
  Pump_Desc,  
  Pump_Litres_Min,  
  Start_Delay_Secs,  
  Delayed_Secs,  
  Pump_Status ) VALUES ( :1, :2, :3, :4, :5, :6, :7 ) 
/
STORE GRAHAM.UPDTPUMPS UPDATE Pump 
SET  
  Channel_No = :2,  
  Pump_Desc = :3,  
  Pump_Litres_Min = :4,  
  Start_Delay_Secs = :5,  
  Delayed_Secs = :6,  
  Pump_Status = :7 
WHERE  
  Pump_No = :1
/
STORE GRAHAM.DELPUMPS DELETE FROM Pump WHERE Pump_No = :1
/
STORE GRAHAM.GTCHNLALLOCST SELECT Station_Desc  
FROM Station   
WHERE Channel_No = :1
/
STORE GRAHAM.GTCHNLALLOCPMP SELECT Pump_Desc  
FROM Pump   
WHERE Channel_No = :1
/
STORE GRAHAM.GTCHNLALLOCSWT SELECT Switch_Desc  
FROM Switch   
WHERE Channel_No = :1
/
STORE GRAHAM.POPPRGSWTCH SELECT  
  Prog_Switches.Switch_No,  
  Switch.Channel_No,  
  Switch.Switch_Desc,  
  Prog_Switches.Valid_State,  
  Prog_Switches.Prog_Action,  
  Prog_Switches.ProgIn_Progress,  
  Switch.Switch_Status 
FROM Prog_Switches, Switch  
WHERE  
   Prog_Switches.Program_No = :1 AND  
   Prog_Switches.Switch_No = Switch.Switch_No  
ORDER BY Switch.Switch_Desc 
/
STORE GRAHAM.REFPRGSWTCH SELECT  
  Prog_Switches.Switch_No,  
  Switch.Channel_No,  
  Switch.Switch_Desc,  
  Prog_Switches.Valid_State,  
  Prog_Switches.Prog_Action,  
  Prog_Switches.ProgIn_Progress,  
  Switch.Switch_Status 
FROM Prog_Switches, Switch  
WHERE  
   Prog_Switches.Program_No = :1 AND  
   Prog_Switches.Switch_No = :2 AND  
   Prog_Switches.Switch_No = Switch.Switch_No 
/
STORE GRAHAM.INSPRGSWTCH INSERT INTO Prog_Switches   
( Program_No,  
  Switch_No,   
  Prog_Action,  
  ProgIn_Progress,  
  Valid_State ) VALUES ( :1, :2, :3, :4, :5 ) 
/
STORE GRAHAM.UPDTPRGSWTCH UPDATE Prog_Switches 
SET  
  Prog_Action = :3,  
  ProgIn_Progress = :4,  
  Valid_State = :5  
WHERE  
  Program_No = :1 AND  
  Switch_No = :2
/
STORE GRAHAM.DELPRGSWTCH DELETE FROM Prog_Switches  
WHERE  
  Program_No = :1 AND  
  Switch_No = :2
/
STORE GRAHAM.POPSWITCHS SELECT  
  Switch_No,  
  Channel_No,  
  Switch_Desc,  
  Switch_Status  
FROM Switch  
ORDER BY Switch_Desc 
/
STORE GRAHAM.REFSWITCHS SELECT  
  Switch_No,  
  Channel_No,  
  Switch_Desc,  
  Switch_Status 
FROM Switch  
WHERE Switch_No = :1 
/
STORE GRAHAM.INSSWITCHS INSERT INTO Switch   
( Switch_No,  
  Channel_No,  
  Switch_Desc,  
  Switch_Status ) VALUES ( :1, :2, :3, :4 ) 
/
STORE GRAHAM.UPDTSWITCHS UPDATE Switch 
SET  
  Channel_No = :2,  
  Switch_Desc = :3,  
  Switch_Status = :4 
WHERE  
  Switch_No = :1
/
STORE GRAHAM.DELSWITCHS DELETE FROM Switch WHERE Switch_No = :1
/
STORE GRAHAM.POPCOMMRELAY SELECT  
  Station.Station_No,  
  Station.Channel_No,  
  Station.Station_Desc  
FROM Station  
WHERE  
   Station.Common_Relay = 'Y'  
ORDER BY Station.Pump_No, Station.Station_Desc
/
STORE GRAHAM.REFCOMMRELAY SELECT  
  Station.Station_No,  
  Station.Channel_No,  
  Station.Station_Desc  
FROM Station  
WHERE  
  Station.Station_No = :1 AND  
  Station.Common_Relay = 'Y' 
/
STORE GRAHAM.SETCOMMRELAY UPDATE Station 
SET  
  Common_Relay = 'Y'  
WHERE  
  Station_No = :1 
/
STORE GRAHAM.DELCOMMRELAY UPDATE Station 
SET  
  Common_Relay = 'N'  
WHERE  
  Station_No = :1 
/
STORE GRAHAM.POPTSTSWT SELECT  
  Switch_No,  
  Channel_No,  
  Switch_Desc,  
  Switch_Status  
FROM Switch  
WHERE  
  Testing_Switch = 'Y'  
ORDER BY Switch_Desc 
/
STORE GRAHAM.REFTSTSWT SELECT  
  Switch_No,  
  Channel_No,  
  Switch_Desc,  
  Switch_Status 
FROM  
  Switch  
WHERE  
  Switch_No = :1 AND  
  Testing_Switch = 'Y' 
/
STORE GRAHAM.SETTSTSWT UPDATE Switch 
SET  
  Testing_Switch = 'Y'  
WHERE  
  Switch_No = :1 
/
STORE GRAHAM.DELTSTSWT UPDATE Switch 
SET  
  Testing_Switch = 'N'  
WHERE  
  Switch_No = :1 
/
STORE GRAHAM.POPSTATTOSTS SELECT  
  Station.Station_No,  
  Station.Channel_No,  
  Station.Station_Desc,  
  Station.Station_Litres_Min,  
  Station.Def_Water_Secs 
FROM Station  
WHERE  
   Station.ToBe_Tested = 'Y'  
ORDER BY Station.Pump_No, Station.Station_Desc
/
STORE GRAHAM.REFSTATTOTST SELECT  
  Station.Station_No,  
  Station.Channel_No,  
  Station.Station_Desc,  
  Station.Station_Litres_Min,  
  Station.Def_Water_Secs 
FROM Station  
WHERE  
  Station.Station_No = :1 AND  
  Station.ToBe_Tested = 'Y' 
/
STORE GRAHAM.SETTBTSTSTAT UPDATE Station 
SET  
  ToBe_Tested = 'Y'  
WHERE  
  Station_No = :1 
/
STORE GRAHAM.DELTBTSTSTAT UPDATE Station 
SET  
  ToBe_Tested = 'N'  
WHERE  
  Station_No = :1 
/
STORE GRAHAM.PROGCHECK SELECT  
  Program_No,  
  Prog_Start_DT,  
  Prog_Next_DT,  
  Prog_Desc,  
  Recurr_Days,  
  Prog_Status 
FROM  
  Program 
WHERE 
  NOT EXISTS  
  ( 
    SELECT  
      Prog_Switches.Program_No  
    FROM  
      Prog_Switches  
    WHERE  
      Prog_Switches.Program_No = Program.Program_No AND  
      Prog_Action = 'ACTIVATE' 
  ) 
ORDER BY  
  Prog_Status, Prog_Next_DT 
/
STORE GRAHAM.PROGACTCHECK SELECT  
  Program_No,  
  Prog_Start_DT,  
  Prog_Next_DT,  
  Prog_Desc,  
  Recurr_Days,  
  Prog_Status 
FROM  
  Program 
WHERE 
  EXISTS  
  ( 
    SELECT  
      Prog_Switches.Program_No  
    FROM  
      Prog_Switches  
    WHERE  
      Prog_Switches.Program_No = Program.Program_No AND  
      Prog_Action = 'ACTIVATE' 
  ) 
ORDER BY  
  Prog_Status, Prog_Next_DT 
/
STORE GRAHAM.PROGPUMPCHECK SELECT DISTINCT 
  Station.Pump_No,  
  Pump.Channel_No,   
  Pump.Start_Delay_Secs,  
  Pump.Delayed_Secs,  
  Pump.Pump_Status  
FROM  
  Prog_Stations, Station, Pump  
WHERE  
  Prog_Stations.Program_No = :1 AND  
  Prog_Stations.Station_No = Station.Station_No AND  
  Station.Pump_No = Pump.Pump_No  
ORDER BY  
  Pump.Pump_Status DESC, Pump.Pump_Litres_Min DESC 
/
STORE GRAHAM.PROGSTATCHECK SELECT  
  Prog_Stations.Instance_No,  
  Prog_Stations.Station_No,  
  Prog_Stations.Water_Seq_No,  
  Station.Channel_No,  
  Prog_Stations.Crnt_Water_Sec,  
  Prog_Stations.Watered_Sec,  
  Prog_Stations.Station_Status 
FROM  
  Prog_Stations, Station 
WHERE  
  Prog_Stations.Program_No = :1 AND  
  Prog_Stations.Station_No = Station.Station_No AND  
  Station.Pump_No = :2 
ORDER BY  
  Prog_Stations.Station_Status,  
  Prog_Stations.Water_Seq_No,  
  Prog_Stations.Crnt_Water_Sec DESC,  
  Station.Station_Litres_Min DESC 
/
STORE GRAHAM.SETPMPDELAYED UPDATE Pump   
SET  
  Delayed_Secs = :2,  
  Pump_Status = :3  
WHERE Pump_No = :1 
/
STORE GRAHAM.GTPUMPLGDTS SELECT 
  Pump_Desc,  
  Channel_No  
FROM  
  Pump  
WHERE  
  Pump_No = :1 
/
STORE GRAHAM.SETPROGSTATUS UPDATE Program   
SET  
  Prog_Status = :2 
WHERE Program_No = :1 
/
STORE GRAHAM.GTPROGLGDTS SELECT  
  Prog_Start_DT,  
  Prog_Desc,  
  Recurr_Days 
FROM  
  Program   
WHERE  
  Program_No = :1 
/
STORE GRAHAM.STPSTSTOP UPDATE Prog_Stations   
SET  
  Station_Status = 'STOPPED' 
WHERE Program_No = :1 
/
STORE GRAHAM.STPSTREADY UPDATE Prog_Stations   
SET  
  Station_Status = 'READY',  
  Watered_Sec = 0 
WHERE Program_No = :1 
/
STORE GRAHAM.SETPROGNXTDT UPDATE Program   
SET  
  Prog_Next_DT = :2 
WHERE Program_No = :1 
/
STORE GRAHAM.GSTPPRGPUMP SELECT DISTINCT  
  Station.Pump_No,  
  Pump.Pump_Status,  
  Pump.Channel_No  
FROM  
  Prog_Stations,  
  Station,  
  Pump  
WHERE  
  Prog_Stations.Program_No = :1 AND  
  Prog_Stations.Station_No = Station.Station_No AND  
  Station.Pump_No = Pump.Pump_No 
/
STORE GRAHAM.GTPRACTNSW SELECT  
  Prog_Switches.Switch_No,  
  Prog_Switches.Valid_State,  
  Switch.Switch_Status,  
  Switch.Channel_No   
FROM  
  Prog_Switches, Switch 
WHERE  
  Prog_Switches.Program_No = :1 AND  
  Prog_Switches.Prog_Action = :2 AND  
  Prog_Switches.Switch_No = Switch.Switch_No 
/
STORE GRAHAM.SETPROGACTIVE UPDATE Program   
SET  
  Prog_Start_DT = :2,  
  Prog_Next_DT = :3,  
  Prog_Status = 'ACTIVE'  
WHERE  
  Program_No = :1 
/
STORE GRAHAM.SETPRGSTSTATUS UPDATE Prog_Stations   
SET  
  Station_Status = :2 
WHERE Instance_No = :1 
/
STORE GRAHAM.GTSTATIONLGDTS SELECT  
  Station_Desc,  
  Channel_No  
FROM  
  Station   
WHERE  
  Station_No = :1 
/
STORE GRAHAM.SETPUMPSTATUS UPDATE Pump   
SET  
  Pump_Status = :2 
WHERE Pump_No = :1 
/
STORE GRAHAM.SETSTATWTERED UPDATE Prog_Stations   
SET  
  Watered_Sec = :2,  
  Station_Status = :3  
WHERE Instance_No = :1 
/
STORE GRAHAM.GTPROGSTRTDT SELECT  
  Prog_Start_DT,  
  Recurr_Days  
FROM  
  Program 
WHERE Program_No = :1 
/
STORE GRAHAM.INSMANPRG INSERT INTO Program   
( Program_No, Prog_Start_DT, Prog_Next_DT, Prog_Desc, Recurr_Days, Prog_Status )  
VALUES ( :1, :2, :3, :4, :5, :6 ) 
/
STORE GRAHAM.NXTPROGNO SELECT Max( Program_No ) + 1 
FROM Program 
/
STORE GRAHAM.INSMANPRGSTS INSERT INTO Prog_Stations   
( Instance_No, Program_No, Station_No, Crnt_Water_Sec, Watered_Sec, Station_Status )  
VALUES ( :1, :2, :3, :4, :5, :6 ) 
/
STORE GRAHAM.NXTINSTNO SELECT Max( Instance_No ) + 1 
FROM Prog_Stations 
/
STORE GRAHAM.EXISTSPROGSTS SELECT Station_No  
FROM Prog_Stations 
WHERE Program_No = :1 
/
STORE GRAHAM.DELMANPRGSWS DELETE FROM Prog_Switches 
WHERE Program_No = :1 
/
STORE GRAHAM.GTCOMRELCHAN SELECT Channel_No  
FROM Station  
WHERE  
  Common_Relay = 'Y' 
/
STORE GRAHAM.GTTSTSWTCHAN SELECT  
  Channel_No  
FROM  
  Switch  
WHERE  
  Testing_Switch = 'Y' 
/
STORE GRAHAM.GTTOBETSTCHAN SELECT Channel_No  
FROM Station  
WHERE  
  ToBe_Tested = 'Y' 
/
STORE SYSADM.CLSPMPDELAYED UPDATE Pump   
SET  
  Delayed_Secs = 0 
WHERE Pump_No = :1 
/
STORE SYSADM.GONPUMPTSTP SELECT DISTINCT  
  Pump_No,  
  Pump_Status,  
  Channel_No  
FROM  
  Pump  
WHERE  
  Pump_Status = 'ON' 
/
STORE GRAHAM.GTADJSTTOORIG SELECT Station_No, Def_Water_Secs FROM Station 
/
STORE GRAHAM.SETPRSTCWSEC UPDATE Prog_Stations  
SET  
  Crnt_Water_Sec = :2 
WHERE  
  Station_No = :1 
/
STORE GRAHAM.PROGCHECK1 SELECT  
  Program_No,  
  Prog_Start_DT,  
  Prog_Next_DT,  
  Prog_Desc,  
  Recurr_Days,  
  Prog_Status 
FROM  
  Program 
WHERE 
  NOT EXISTS  
  ( 
    SELECT  
      Prog_Switches.Program_No  
    FROM  
      Prog_Switches  
    WHERE  
      Prog_Switches.Program_No = Program.Program_No AND  
      Prog_Action = 'ACTIVATE' 
  ) 
ORDER BY  
  Prog_Status, Prog_Next_DT 
/
STORE GRAHAM.PROGCHECK2 SELECT  
  Program_No,  
  Prog_Start_DT,  
  Prog_Next_DT,  
  Prog_Desc,  
  Recurr_Days,  
  Prog_Status 
FROM  
  Program 
WHERE 
  NOT EXISTS  
  ( 
    SELECT  
      Prog_Switches.Program_No  
    FROM  
      Prog_Switches  
    WHERE  
      Prog_Action = 'ACTIVATE' 
  ) 
ORDER BY  
  Prog_Status, Prog_Next_DT 
/
STORE GRAHAM.PROGACTCHECK1 SELECT  
  Program_No,  
  Prog_Start_DT,  
  Prog_Next_DT,  
  Prog_Desc,  
  Recurr_Days,  
  Prog_Status 
FROM  
  Program 
WHERE 
  EXISTS  
  ( 
    SELECT  
      Prog_Switches.Program_No  
    FROM  
      Prog_Switches  
    WHERE  
      Prog_Action = 'ACTIVATE' 
  ) 
ORDER BY  
  Prog_Status, Prog_Next_DT 
/
STORE GRAHAM.POPPROGS1 SELECT  
  Program_No,  
  Prog_Start_DT,  
  Prog_Start_DT,  
  Prog_Next_DT,  
  Prog_Desc,  
  Recurr_Days,  
  Prog_Status 
FROM Program  
ORDER BY Prog_Next_DT 
/
STORE GRAHAM.POPPROGS2 SELECT  
  Program_No,  
  Prog_Start_DT,  
  Prog_Start_DT,  
  Prog_Next_DT,  
  Prog_Desc,  
  Recurr_Days,  
  Prog_Status 
FROM Program  
ORDER BY Prog_Status, Prog_Next_DT 
/
STORE GRAHAM.GTPRGSTATPUMPS SELECT DISTINCT  
  Station.Pump_No,  
  Pump.Pump_Litres_Min  
FROM  
  Prog_Stations,  
  Station,  
  Pump  
WHERE  
  Prog_Stations.Program_No = :1 AND  
  Prog_Stations.Station_No = Station.Station_No AND  
  Station.Pump_No = Pump.Pump_No 
/
STORE GRAHAM.GPGUASTAT SELECT  
  Prog_Stations.Instance_No,  
  Prog_Stations.Station_No,  
  Station.Station_Litres_Min  
FROM  
  Prog_Stations,  
  Station  
WHERE  
  Prog_Stations.Program_No = :1 AND  
  Prog_Stations.Station_No = Station.Station_No AND  
  Prog_Stations.Water_Seq_No = 0 AND  
  Station.Station_Litres_Min <= :2 AND  
  Station.Pump_No = :3  
ORDER BY  
  Prog_Stations.Crnt_Water_Sec DESC,  
  Station.Station_Litres_Min DESC
/
STORE GRAHAM.GPGTBSTATFP SELECT  
  Prog_Stations.Instance_No,  
  Prog_Stations.Station_No,  
  Station.Station_Litres_Min  
FROM  
  Prog_Stations,  
  Station  
WHERE  
  Prog_Stations.Program_No = :1 AND  
  Prog_Stations.Station_No = Station.Station_No AND  
  Prog_Stations.Water_Seq_No = 0 AND  
  Station.Station_Litres_Min > :2 AND  
  Station.Pump_No = :3  
ORDER BY  
  Prog_Stations.Crnt_Water_Sec DESC,  
  Station.Station_Litres_Min DESC
/
STORE GRAHAM.GPGASTAT SELECT  
  Prog_Stations.Instance_No,  
  Prog_Stations.Station_No,  
  Station.Station_Litres_Min,  
  Prog_Stations.Crnt_Water_Sec,  
  Prog_Stations.Watered_Sec,  
  Prog_Stations.Station_Status   
FROM  
  Prog_Stations,  
  Station  
WHERE  
  Prog_Stations.Program_No = :1 AND  
  Prog_Stations.Station_No = Station.Station_No AND  
  NOT Prog_Stations.Water_Seq_No = :2 AND  
  Station.Station_Litres_Min <= :3 AND  
  Station.Pump_No = :4  
ORDER BY  
  Prog_Stations.Crnt_Water_Sec DESC,  
  Station.Station_Litres_Min DESC
/
STORE GRAHAM.GPGGTPSTAT SELECT  
  Prog_Stations.Instance_No,  
  Prog_Stations.Station_No,  
  Station.Station_Litres_Min  
FROM  
  Prog_Stations,  
  Station  
WHERE  
  Prog_Stations.Program_No = :1 AND  
  Prog_Stations.Station_No = Station.Station_No AND  
  Station.Station_Litres_Min > :2 AND  
  Station.Station_Litres_Min <= :3 AND  
  Station.Pump_No = :4  
ORDER BY  
  Prog_Stations.Crnt_Water_Sec DESC,  
  Station.Station_Litres_Min DESC
/
STORE GRAHAM.GPRGSTATTRST SELECT  
  Instance_No,  
  Station_No  
FROM  
  Prog_Stations  
WHERE  
  Program_No = :1  
ORDER BY  
  Station_No,  
  Instance_No 
/
STORE GRAHAM.RSTPRGSEQNO UPDATE Prog_Stations  
SET  
  Water_Seq_No = :2  
WHERE  
  Instance_No = :1 
/
STORE GRAHAM.DLPRGSTATTRST DELETE FROM Prog_Stations  
WHERE  
  Instance_No = :1 
/
STORE GRAHAM.STPRGSTSEQNO UPDATE Prog_Stations  
SET  
  Water_Seq_No = :4 
WHERE  
  Program_No = :1 AND  
  Station_No = :2 AND  
  Instance_No = :3 
/
STORE GRAHAM.ADJSTWTRING UPDATE Prog_Stations  
SET  
  Crnt_Water_Sec = Crnt_Water_Sec + ( ( Crnt_Water_Sec / 100 ) * :1 ) 
/
STORE GRAHAM.DELMANPRG DELETE FROM Program   
WHERE Program_No = :1 
/
STORE GRAHAM.DELMANPRGSTS DELETE FROM Prog_Stations   
WHERE Program_No = :1 
/
STORE GRAHAM.EXISTSSTSPROG SELECT Program_No  
FROM Prog_Stations 
WHERE Station_No = :1 
/
STORE GRAHAM.NXTSTATIONNO SELECT Max( Station_No ) + 1 
FROM Station 
/
STORE GRAHAM.POPSTATIONS1 SELECT  
  Station.Station_No,  
  Station.Channel_No,  
  Station.Pump_No,  
  Pump.Pump_Desc,  
  Station.Station_Desc,  
  Station.Station_Litres_Min,  
  Station.Def_Water_Secs 
FROM Station, Pump  
WHERE  
   Station.Pump_No = Pump.Pump_No  
ORDER BY Station.Pump_No, Station.Station_Desc
/
STORE GRAHAM.REFSTATIONS1 SELECT  
  Station.Station_No,  
  Station.Channel_No,  
  Station.Pump_No,  
  Pump.Pump_Desc,  
  Station.Station_Desc,  
  Station.Station_Litres_Min,  
  Station.Def_Water_Secs 
FROM Station, Pump 
WHERE  
  Station.Station_No = :1 AND  
  Station.Pump_No = Pump.Pump_No 
/
STORE GRAHAM.INSSTATIONS1 INSERT INTO Station   
( Station_No,  
  Pump_No,  
  Channel_No,  
  Station_Desc,  
  Station_Litres_Min,  
  Def_Water_Secs ) VALUES ( :1, :2, :3, :4, :5, :6 ) 
/
STORE GRAHAM.UPDTSTATIONS1 UPDATE Station 
SET  
  Pump_No = :2,  
  Channel_No = :3,  
  Station_Desc = :4,  
  Station_Litres_Min = :5,  
  Def_Water_Secs = :6 
WHERE  
  Station_No = :1
/
STORE GRAHAM.INITCHNLSTATS1 SELECT  
  	Prog_Stations.Station_Status,  
  	Channels.Channel_No, 
	Channels.Upper_Address, 
	Channels.Lower_Address, 
	Channels.Sixteen_Bit_Address,  
  	Channels.Bank_No,  
  	Channels.Bank_Port_No  
FROM  
  	Prog_Stations,  
  	Station,  
  	Channels 
WHERE  
  	Prog_Stations.Station_No = Station.Station_No AND  
  	Station.Channel_No = Channels.Channel_No
/
STORE GRAHAM.INITCHNLPUMPS1 SELECT  
  	Channels.Channel_No,  
	Channels.Upper_Address, 
	Channels.Lower_Address, 
	Channels.Sixteen_Bit_Address,  
  	Channels.Bank_No,  
  	Channels.Bank_Port_No,  
  	Pump.Pump_No,  
  	Pump.Pump_Status 
FROM  
  	Channels,  
  	Pump  
WHERE  
  	Channels.Channel_No = Pump.Channel_No 
/
STORE GRAHAM.SETCHNNELSTATUS1 SELECT  
	Upper_Address, 
	Lower_Address, 
	Sixteen_Bit_Address, 
  	Bank_No,  
  	Bank_Port_No 
FROM  
  Channels  
WHERE Channel_No = :1 
/
STORE GRAHAM.SETCHNNELSTATUS2 SELECT  
	Upper_Address, 
	Lower_Address, 
	Sixteen_Bit_Address, 
  	Bank_No,  
  	Bank_Port_No, 
	Active 
FROM  
  Channels  
WHERE Channel_No = :1 
/
STORE GRAHAM.POPCHNL1 SELECT  
  	Channel_No,  
  	Upper_Address,  
  	Lower_Address, 
  	Sixteen_Bit_Address, 
  	Bank_No,  
  	Bank_Port_No  
 FROM  
  	Channels  
ORDER BY  
  	Channel_No
/
STORE GRAHAM.REFCHNL1 SELECT  
  Channel_No,  
  	Upper_Address,  
  	Lower_Address, 
  	Sixteen_Bit_Address, 
  	Bank_No,  
  	Bank_Port_No  
FROM  
  Channels  
WHERE Channel_No = :1 
/
STORE GRAHAM.INSCHNL1 INSERT INTO Channels (  
  	Channel_No,  
  	Upper_Address,  
  	Lower_Address, 
  	Sixteen_Bit_Address, 
  	Bank_No,  
  	Bank_Port_No  )  
VALUES ( :1, :2, :3, :4, :5, :6 ) 
/
STORE GRAHAM.UPDTCHNL1 UPDATE Channels  
SET  
  Upper_Address = :2,  
  Lower_Address = :3, 
  Sixteen_Bit_Address = :4, 
  Bank_No = :5,  
  Bank_Port_No = :6 
WHERE Channel_No = :1
/
STORE GRAHAM.DELCHNL DELETE FROM Channels WHERE Channel_No = :1 
/
STORE GRAHAM.SETCHANDBSWITCH UPDATE CHANNELS  
SET ACTIVE = :4  
WHERE UPPER_ADDRESS = :1  
AND LOWER_ADDRESS = :2  
AND BANK_PORT_NO = :3
/
STORE GRAHAM.NXTPUMPNO  SELECT Max( Pump_No ) + 1 
FROM Pump 
/
STORE GRAHAM.INSPRGSTSXND  INSERT INTO Prog_Stations   
( Instance_No, Program_No, Station_No, Crnt_Water_Sec, Watered_Sec, Station_Status, Water_Seq_No )  
VALUES ( :1, :2, :3, :4, :5, :6, :7 ) 
/
STORE GRAHAM.INITCHNLSTATS2  SELECT distinct 
  	Prog_Stations.Station_Status,  
  	Channels.Channel_No, 
	Channels.Upper_Address, 
	Channels.Lower_Address, 
	Channels.Sixteen_Bit_Address,  
  	Channels.Bank_No,  
  	Channels.Bank_Port_No  
FROM  
  	Prog_Stations,  
  	Station,  
  	Channels 
WHERE  
  	Prog_Stations.Station_No = Station.Station_No AND  
  	Station.Channel_No = Channels.Channel_No
/
STORE GRAHAM.INITCHNLSTATS3  SELECT distinct 
  	Prog_Stations.Station_Status,  
  	Channels.Channel_No, 
	Channels.Upper_Address, 
	Channels.Lower_Address, 
	Channels.Sixteen_Bit_Address,  
  	Channels.Bank_No,  
  	Channels.Bank_Port_No, 
	Station.Station_Desc 
FROM  
  	Prog_Stations,  
  	Station,  
  	Channels 
WHERE  
  	Prog_Stations.Station_No = Station.Station_No AND  
  	Station.Channel_No = Channels.Channel_No
/
STORE GRAHAM.INITCHNLPUMPS4  SELECT distinct 
  	Channels.Channel_No,  
	Channels.Upper_Address, 
	Channels.Lower_Address, 
	Channels.Sixteen_Bit_Address,  
  	Channels.Bank_No,  
  	Channels.Bank_Port_No,  
  	Pump.Pump_No,  
  	Pump.Pump_Status, 
	station.station_desc 
FROM  
  	Channels,  
  	Pump, 
	station 
WHERE  
  	Channels.Channel_No = Pump.Channel_No AND 
	channels.channel_No = station.channel_no
/
STORE GRAHAM.SETCHNNELSTATUS4  SELECT  
	Upper_Address, 
	Lower_Address, 
	Sixteen_Bit_Address, 
  	Bank_No,  
  	Bank_Port_No, 
	Active, 
	STATION_DESC 
 FROM  
  Channels, 
Station 
WHERE channels.Channel_No = :1 and station.channel_no = :1 
/
STORE GRAHAM.SETCHNNELSTATUS3  SELECT  
	Upper_Address, 
	Lower_Address, 
	Sixteen_Bit_Address, 
  	Bank_No,  
  	Bank_Port_No, 
	Active, 
	STATION_DESC 
 FROM  
  Channels, 
Station 
WHERE channels.Channel_No = :1 and 
station.channel_no = :1
/
STORE GRAHAM.INITCHNLSTATS4  SELECT distinct 
  	Prog_Stations.Station_Status,  
  	Channels.Channel_No, 
	Channels.Upper_Address, 
	Channels.Lower_Address, 
	Channels.Sixteen_Bit_Address,  
  	Channels.Bank_No,  
  	Channels.Bank_Port_No, 
	Station.Station_Desc 
FROM  
  	Prog_Stations,  
  	Station,  
  	Channels 
WHERE  
  	Prog_Stations.Station_No = Station.Station_No AND  
  	Station.Channel_No = Channels.Channel_No
/
STORE GRAHAM.POPPRGSTATSGF  SELECT  
  Prog_Stations.Instance_No,  
  Prog_Stations.Program_No,  
  Prog_Stations.Station_No,  
  Station.Pump_No,  
  Pump.Pump_Desc,  
  Station.Channel_No,  
  Prog_Stations.Water_Seq_No,  
  Prog_Stations.Water_Seq_No,  
  Station.Station_Desc,  
  Station.Station_Litres_Min,  
  Station.Def_Water_Secs,  
  Prog_Stations.Crnt_Water_Sec,  
  Prog_Stations.Watered_Sec,  
  Prog_Stations.Station_Status,  
  Pump.Channel_No,  
  Pump.Pump_Litres_Min,  
  Pump.Start_Delay_Secs,  
  Pump.Pump_Status  
FROM Prog_Stations, Station, Pump  
WHERE  
   Prog_Stations.Program_No = :1 AND  
   Prog_Stations.Station_No = Station.Station_No AND  
   Station.Pump_No = Pump.Pump_No  
ORDER BY  
  Prog_Stations.Station_Status,  
  Prog_Stations.Water_Seq_No,  
  Station.Station_Litres_Min DESC 
/
STORE GRAHAM.REFPRGSTATSGF  SELECT  
  Prog_Stations.Instance_No,  
  Prog_Stations.Program_No,  
  Prog_Stations.Station_No,  
  Station.Pump_No,  
  Pump.Pump_Desc,  
  Station.Channel_No,  
  Prog_Stations.Water_Seq_No,  
  Prog_Stations.Water_Seq_No,  
  Station.Station_Desc,  
  Station.Station_Litres_Min,  
  Station.Def_Water_Secs, 
  Prog_Stations.Crnt_Water_Sec,  
  Prog_Stations.Watered_Sec,  
  Prog_Stations.Station_Status,  
  Pump.Channel_No,  
  Pump.Pump_Litres_Min,  
  Pump.Start_Delay_Secs,  
  Pump.Pump_Status  
FROM Prog_Stations, Station, Pump  
WHERE  
   Prog_Stations.Program_No = :1 AND  
   Prog_Stations.Instance_No = :2 AND  
   Prog_Stations.Station_No = Station.Station_No AND  
   Station.Pump_No = Pump.Pump_No  
/
STORE GRAHAM.GETCHNLBRDPRT2  SELECT  
  	Upper_Address, 
	Lower_Address, 
	Sixteen_Bit_Address, 
	Bank_No,  
  	Bank_Port_No, 
	Active 
FROM  
  	Channels  
WHERE  
  	Channel_No = :1 
/
STORE GRAHAM.SETCHNNELSTATUS5  SELECT  
	Upper_Address, 
	Lower_Address, 
	Sixteen_Bit_Address, 
  	Bank_No,  
  	Bank_Port_No, 
	Active, 
	STATION_DESC 
 FROM  
  	Channels, 
	Station 
WHERE  
	channels.channel_no = station.channel_no and 
	channels.Channel_No = :1 
/
STORE GRAHAM.SETCHNLSTATPUMP6  SELECT  
	Upper_Address, 
	Lower_Address, 
	Sixteen_Bit_Address, 
  	Bank_No,  
  	Bank_Port_No, 
	Active, 
	pump_DESC 
 FROM  
  	Channels, 
	pump 
WHERE  
	channels.channel_no = pump.channel_no and 
	channels.Channel_No = :1 
/
STORE GRAHAM.REFPRGSTATSGF2  SELECT  
  Prog_Stations.Instance_No,  
  Prog_Stations.Program_No,  
  Prog_Stations.Station_No,  
  Station.Pump_No,  
  Pump.Pump_Desc,  
  Station.Channel_No,  
  Prog_Stations.Water_Seq_No,  
  Prog_Stations.Water_Seq_No,  
  Station.Station_Desc,  
  Station.Station_Litres_Min,  
  Station.Def_Water_Secs,  
  Prog_Stations.Crnt_Water_Sec,  
  Prog_Stations.Watered_Sec,  
  Prog_Stations.Station_Status,  
  Pump.Channel_No,  
  Pump.Pump_Litres_Min,  
  Pump.Start_Delay_Secs,  
  Pump.Pump_Status  
FROM Prog_Stations, Station, Pump  
WHERE  
   Prog_Stations.Program_No = :1 AND  
   Prog_Stations.Instance_No = :2 AND  
   Prog_Stations.Station_No = Station.Station_No AND  
   Station.Pump_No = Pump.Pump_No  
/
CREATE INDEX SYSADM.SYS$INDEXA ON SYSADM.SYSTABLES(
  CREATOR, 
  NAME)
PCTFREE 10
/
GRANT SELECT ON SYSADM.SYSTABLES TO PUBLIC 
/
CREATE INDEX SYSADM.SYS$INDEXB ON SYSADM.SYSCOLUMNS(
  TBCREATOR, 
  TBNAME, 
  NAME)
PCTFREE 10
/
GRANT SELECT ON SYSADM.SYSCOLUMNS TO PUBLIC 
/
CREATE INDEX SYSADM.SYS$INDEXC ON SYSADM.SYSINDEXES(
  CREATOR, 
  NAME)
/
CREATE INDEX SYSADM.SYS$INDEXD ON SYSADM.SYSINDEXES(
  CREATOR, 
  TBNAME)
PCTFREE 10
/
GRANT SELECT ON SYSADM.SYSINDEXES TO PUBLIC 
/
CREATE INDEX SYSADM.SYS$INDEXE ON SYSADM.SYSKEYS(
  IXCREATOR, 
  IXNAME, 
  COLNAME)
/
CREATE INDEX SYSADM.SYS$INDEXF ON SYSADM.SYSKEYS(
  IXNAME, 
  COLSEQ)
PCTFREE 10
/
GRANT SELECT ON SYSADM.SYSKEYS TO PUBLIC 
/
CREATE INDEX SYSADM.SYS$INDEXG ON SYSADM.SYSCOLAUTH(
  CREATOR, 
  TNAME, 
  GRANTEE)
/
CREATE INDEX SYSADM.SYS$INDEXH ON SYSADM.SYSCOLAUTH(
  CREATOR, 
  TNAME, 
  COLNAME)
PCTFREE 10
/
CREATE INDEX SYSADM.SYS$INDEXI ON SYSADM.SYSTABAUTH(
  TCREATOR, 
  TTNAME, 
  GRANTEE)
PCTFREE 10
/
CREATE INDEX SYSADM.SYS$INDEXJ ON SYSADM.SYSUSERAUTH(
  NAME)
PCTFREE 10
/
CREATE INDEX SYSADM.SYS$INDEXK ON SYSADM.SYSSYNONYMS(
  NAME, 
  CREATOR)
/
CREATE INDEX SYSADM.SYS$INDEXL ON SYSADM.SYSSYNONYMS(
  TBCREATOR, 
  TBNAME)
PCTFREE 10
/
GRANT SELECT ON SYSADM.SYSSYNONYMS TO PUBLIC 
/
CREATE INDEX SYSADM.SYS$INDEXM ON SYSADM.SYSVIEWS(
  CREATOR, 
  NAME)
PCTFREE 10
/
GRANT SELECT ON SYSADM.SYSVIEWS TO PUBLIC 
/
CREATE INDEX SYSADM.SYS$INDEXN ON SYSADM.SYSROWIDLISTS(
  NAME, 
  CREATOR)
PCTFREE 10
/
GRANT SELECT ON SYSADM.SYSROWIDLISTS TO PUBLIC 
/
CREATE INDEX SYSADM.SYS$INDEXO ON SYSADM.SYSCOMMANDS(
  NAME, 
  CREATOR)
PCTFREE 10
/
GRANT SELECT ON SYSADM.SYSCOMMANDS TO PUBLIC 
/
CREATE INDEX SYSADM.SYS$INDEXP ON SYSADM.SYSTABCONSTRAINTS(
  CREATOR, 
  NAME, 
  CONSTRAINT)
PCTFREE 10
/
GRANT SELECT ON SYSADM.SYSTABCONSTRAINTS TO PUBLIC 
/
CREATE INDEX SYSADM.SYS$INDEXQ ON SYSADM.SYSFKCONSTRAINTS(
  CREATOR, 
  NAME, 
  CONSTRAINT, 
  FKCOLSEQNUM)
/
CREATE INDEX SYSADM.SYS$INDEXR ON SYSADM.SYSFKCONSTRAINTS(
  CREATOR, 
  NAME, 
  REFSCOLUMN)
/
CREATE INDEX SYSADM.SYS$INDEXS ON SYSADM.SYSFKCONSTRAINTS(
  CREATOR, 
  NAME, 
  REFDCOLUMN)
PCTFREE 10
/
GRANT SELECT ON SYSADM.SYSFKCONSTRAINTS TO PUBLIC 
/
CREATE INDEX SYSADM.SYS$INDEXT ON SYSADM.SYSPKCONSTRAINTS(
  CREATOR, 
  NAME, 
  PKCOLSEQNUM)
/
CREATE INDEX SYSADM.SYS$INDEXU ON SYSADM.SYSPKCONSTRAINTS(
  CREATOR, 
  NAME, 
  COLNAME)
PCTFREE 10
/
GRANT SELECT ON SYSADM.SYSPKCONSTRAINTS TO PUBLIC 
/
GRANT SELECT ON SYSADM.SYSPARTTRANS TO PUBLIC 
/
INSERT INTO SYSADM.SYSCOMMITORDER VALUES(
  :1,
  :2)
\
$DATATYPES NUMERIC,NUMERIC
/
GRANT SELECT ON SYSADM.SYSOBJSYN TO PUBLIC 
/
DBATTRIBUTE (
  SYSDBSEQUENCE 370406,
  SYSDBTRANSID 189975097
)
/
