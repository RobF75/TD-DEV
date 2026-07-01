deinstall database ponyclub;
drop database ponytest;
set server local;
commit;

create database ponyclub;
create database ponytest;
connect ponyclub sysadm sysadm;
connect ponytest sysadm sysadm;

CREATE TABLE Competitions
	( 	Comp_Id CHAR(40) NOT NULL,
		Comp_Desc CHAR (100) NOT NULL,
		Comp_Date DATE);

CREATE UNIQUE INDEX PKComp_id
  ON Competitions
(
Comp_Id              ASC
);
commit;



CREATE TABLE Events
      (Event_Id              INTEGER NOT NULL,
	Comp_Id		CHAR (40) NOT NULL,
       Event_Type              CHAR(40) NOT NULL,
       Event_Section            CHAR(60),
	Event_Class	CHAR(30) );

CREATE UNIQUE INDEX PKEvent_id
  ON Events
(
Event_Id              ASC,
Comp_Id		ASC
);
commit;
        
CREATE TABLE Competitor
      (Back_Number              INTEGER NOT NULL,
       Comp_Surname            CHAR(40) NOT NULL,
	Comp_First_Name 	CHAR(40),
	Club		CHAR(40),
	Team 	CHAR(40),
	Horse	CHAR(40),
	Age	INTEGER
      
);

CREATE UNIQUE INDEX PKBack_Number
  ON Competitor
(Back_Number             ASC
);


CREATE TABLE Showjumping
      (Back_Number     INTEGER NOT NULL,
      Event_Id        NUMBER NOT NULL,
       Event_Time  TIME,
       Place         INTEGER,
       Points          INTEGER,
       First_Time          TIME,
       First_Penalties      INTEGER,
       Jump_Off_Time       TIME,
       Jump_Off_Penalties    INTEGER,
	Eliminated 	CHAR(1),
	Adjusted_Points	NUMBER
);

CREATE UNIQUE INDEX PKComp_Event
  ON Showjumping
(
Back_Number     ASC,
Event_Id	ASC
);

CREATE TABLE Dressage
      (Back_Number     INTEGER NOT NULL,
      Event_Id        NUMBER NOT NULL,
       Event_Time  TIME,
       Place         INTEGER,
       Points          INTEGER,
       Final_Score   INTEGER,
      Penalties      INTEGER,
	Eliminated 	CHAR(1),
	Adjusted_Points	NUMBER
);


CREATE UNIQUE INDEX PKDress_Event
  ON Dressage
(
Back_Number     ASC,
Event_Id	ASC
);

CREATE TABLE Gymkhana
      (Back_Number     INTEGER NOT NULL,
      Event_Id        NUMBER NOT NULL,
       Event_Time  TIME,
       Place         INTEGER,
       Points          INTEGER,
	Eliminated 	CHAR(1),
	Adjusted_Points	NUMBER
);


CREATE UNIQUE INDEX PKGym_Event
  ON Gymkhana
(
Back_Number     ASC,
Event_Id	ASC
);

CREATE TABLE Team
      (Team    CHAR (40) NOT NULL,
      Points        INTEGER NOT NULL
);

CREATE UNIQUE INDEX PKTeam_Points
  ON Team
(
Team     ASC
);

GRANT CONNECT TO GRAHAM IDENTIFIED BY GRAHAM;
GRANT CONNECT TO GUEST IDENTIFIED BY GUEST;

GRANT
	DBA
TO
	Graham;
commit;

GRANT
	ALL
ON
	Competitions,
	Competitor,
	Showjumping,
	Dressage,
	Gymkhana,
	Team,
	Events
TO
	GRAHAM,
	GUEST;

CREATE PUBLIC SYNONYM Events FOR SYSADM.Events;
CREATE PUBLIC SYNONYM Competitions FOR SYSADM.Competitions;
CREATE PUBLIC SYNONYM Competitor FOR SYSADM.Competitor ;
CREATE PUBLIC SYNONYM Showjumping FOR SYSADM.Showjumping  ;
CREATE PUBLIC SYNONYM Dressage FOR SYSADM.Dressage ;
CREATE PUBLIC SYNONYM Gymkhana FOR SYSADM.Gymkhana ;
CREATE PUBLIC SYNONYM Team FOR SYSADM.Team ;


commit;

		
