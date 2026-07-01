
connect live SYSADM/DANI;

set timeout 1;

connect stockdev sysadm/dani;
disconnect stockdev;
connect stklocal sysadm dani;
disconnect stock;
set timeout 5;
commit;


set timeout 5;

********************************;
RFID Stuff;

CREATE TABLE Budwood
      (Tag_Id			CHAR(25) NOT NULL,
	Cultivar_Id              CHAR(8) NOT NULL,
	Cut_By              CHAR(15) NOT NULL,
	Cut_Date			DATE NOT NULL,
	Source_Tag_Id		CHAR(25) NOT NULL
);
CREATE INDEX IE1Budwood
  ON Budwood
(
Tag_Id             ASC,
Cultivar_Id		ASC
);

alter table 
	stock_item
add 
		
***************************************************************************************************;
Timekeeper;
***************************************************************************************************;
connect stklocal sysadm dani;
connect stockdev sysadm dani;

set timeout 1;

CREATE TABLE Employee
      (Employee_Id			INTEGER NOT NULL,
	Firstname              CHAR(40) NOT NULL,
	Surname             	CHAR(40) NOT NULL,
	Section_Id              	INTEGER NOT NULL,
	Terminated		CHAR(1)
);	
CREATE PUBLIC SYNONYM Employee FOR sysadm.Employee;
CREATE UNIQUE INDEX UEEmployee
  ON Employee
(
	Employee_Id             ASC
);
commit;
CREATE TABLE Section
      (Section_Id			INTEGER NOT NULL,
	Description              CHAR(40) NOT NULL,
	Supervisor_Id		 INTEGER NOT NULL
);
CREATE PUBLIC SYNONYM Section FOR sysadm.Section;
CREATE UNIQUE INDEX UESection
  ON Section
(
	Section_Id             ASC
);
CREATE TABLE Supervisor
      (Supervisor_Id		 INTEGER NOT NULL,
	Supervisor_Firstname	CHAR(40) NOT NULL,
	Supervisor_Surname	CHAR(40) NOT NULL
);
CREATE PUBLIC SYNONYM Supervisor FOR sysadm.Supervisor;
CREATE UNIQUE INDEX UESupervisor
  ON Supervisor
(
	Supervisor_Id             ASC
);

CREATE TABLE Times
      (Times_Id		INTEGER NOT NULL,
	Employee_Id	INTEGER NOT NULL,
	Date		DATETIME NOT NULL,
	Hours_Worked	NUMBER,
	Week		INTEGER,
	Year		INTEGER,
	time_type	CHAR(2),
	comments	VARCHAR
);
connect live graham graham;
set timeout 1;

alter table times add comments VARCHAR(40);	
commit;
drop table times;	
CREATE PUBLIC SYNONYM Times FOR sysadm.Times;
CREATE UNIQUE INDEX UETimes
  ON Times
(
	Times_Id             ASC
);
CREATE INDEX IETimes
  ON Times
(
	Times_Id        ASC,
	Employee_Id	ASC,
	Date		ASC
);

CREATE INDEX IETimesWeek
  ON Times
(
	Week        Desc
);
commit;

************************************************************************

***************************************************************************************************;
CHEMICAL SPRAYING RECORDS;
***************************************************************************************************;
USE 3;
ROLLBACK;
connect live graham graham;
connect live sysadm dani;
set timeout 1;

CREATE TABLE Calibration_Record
      (	Calibration_Id		INTEGER NOT NULL,
	Calibration_Date        DATETIME NOT NULL,
	Equipment_Id		INTEGER NOT NULL,
	Rate	 		NUMBER,
       	Operator_Id          	INTEGER,
	Farm            	VARCHAR(25)
);
CREATE UNIQUE INDEX IE1Calibration
  ON Calibration_Record
(
Calibration_Id             ASC
);
CREATE PUBLIC SYNONYM CALIBRATION_RECORD FOR SYSADM.CALIBRATION_RECORD;
COMMIT;
select * from calibration_record;
delete from calibration_record;
commit;
select calibration_Date, Equipment_Desc, Operator_name, Farm from calibration_record cr, Spray_Equipment se, Operator Op where cr.Equipment_id = se.equipment_id and cr.operator_id = Op.Operator_id order by calibration_date desc;
alter table
	calibration_record
add
	Nozzle_Space NUMBER;
commit;




CREATE TABLE Chemical
      (	Chemical_Id		INTEGER NOT NULL,
	Chemical_Name           CHAR(40) NOT NULL,
	Chemical_Type		CHAR(25),
	Active			CHAR(35),
       	Withholding             INTEGER,
	Re_entry             	INTEGER,
	measure			CHAR(5)
);

alter table chemical add Active CHAR(35);
commit;
select
* from chemical;
CREATE UNIQUE INDEX IE1Chemical
  ON Chemical
(
Chemical_Id             ASC
);

CREATE TABLE Chemical_Stored
      (	Chemical_Id		INTEGER NOT NULL,
	storage_Id		INTEGER not null,
       	In_storage             INTEGER
);
drop index IE1ChemicalStored;
CREATE UNIQUE INDEX IE1ChemicalStored
  ON Chemical_Stored
(
Chemical_Id             ASC,
storage_id	ASC
);
alter table
	chemical_stored
add
	storage_id INteger not null;
commit;

CREATE TABLE Chemical_Purchase
      ( Purchase_Id		INTEGER NOT NULL,
	Chemical_Id		INTEGER NOT NULL,
	Supplier_Id		INTEGER NOT NULL,
	Purchase_Date		DATE NOT NULL,
	Chem_Batch_No           CHAR(10),
	Chem_Expiry_Date        DATE,
	Volume			NUMBER,
	storage_id		INTEGER NOT NULL);
CONNECT LIVE SYSADM DANI;
set timeout 1;
ALTER TABLE
	chemicals_used
add
	Amount_Used		Number;
drop table chemicals_used;
commit;
CREATE UNIQUE INDEX IE1ChemPurch
  ON Chemical_Purchase
(
Purchase_Id             ASC
);

CREATE TABLE Chemicals_Used
      (	Application_Id		INTEGER NOT NULL,
	Chemical_Id			INTEGER NOT NULL,
	Application_Rate		Number NOT NULL,
	Amount_Used		Number
);
CREATE UNIQUE INDEX IE1ChemUsed
  ON Chemicals_Used
(
Chemical_Id             ASC,
Application_Id		ASC
);

CREATE TABLE Chemical_Supplier
      (Supplier_Id			CHAR(6) NOT NULL,
	Supplier_Name              CHAR(35) NOT NULL,
	Address_1              CHAR(30),
	Address_2			CHAR(30),
	State		CHAR(3),
	Postcode            CHAR(4),
	BH_Phone              CHAR(10), 
       AH_Phone              CHAR(10),
	Contact	Char(20)
);
CREATE UNIQUE INDEX IE1ChemicalSupp
  ON Chemical_Supplier
(
Supplier_Id             ASC
);

CREATE TABLE Storage
      (Storage_Id			CHAR(6) NOT NULL,
	Storage_Name              CHAR(35) NOT NULL,
	Address_1              CHAR(30),
	Address_2			CHAR(30),
	State		CHAR(3),
	Suburb		CHAR(30),
	Postcode            CHAR(4)
);
CREATE UNIQUE INDEX IE1Storage
  ON Storage
(
Storage_Id             ASC
);
commit;

commit;
drop table spray_records;

CREATE TABLE Spray_Records
      (	Application_Id              INTEGER NOT NULL,
	Application_Date		DATE NOT NULL,
	Equipment_Id              INTEGER NOT NULL,
	Day_Temp		INTEGER,
	Wind_Speed	INTEGER,
	Wind_Direction	CHAR(10),
	User_Id	INTEGER NOT NULL,
	Supervisor_Id INTEGER,
	Additional_Info	CHAR(254),
	Property CHAR (30),
	Operator_Id              INTEGER
);
CREATE UNIQUE  INDEX IE1Spray_Record
  ON Spray_RecordS
(
Application_Id            ASC
);

CONNECT LIVE SYSADM DANI;
set timeout 1;
alter table spray_records add Operator_Id INTEGER;
alter table spray_records add Concentration_Factor CHAR(2);
commit;
alter table spray_records drop Concentration_Factor;
select * from spray_records;

CREATE TABLE Spray_Record_Farm
      (	Application_Id              INTEGER NOT NULL,
 	Farm_Name	CHAR(8) NOT NULL,
	Additional_Info	CHAR(254)
);
CREATE UNIQUE  INDEX IE1Spray_Record_Farm
  ON Spray_Record_Farm
(
Application_Id            ASC,
Farm_name	asc
);

drop table farm_crop;
CREATE TABLE Farm_Crop
      (	Farm_name        CHAR(8) NOT NULL,
 	Crop	CHAR(25) NOT NULL,
	Use	CHAR(10),
	Area     NUMBER,
	Row_Spacing    NUMBER,
	Tree_Spacing     NUMBER,
	Tree_Count	INTEGER
);
CREATE UNIQUE  INDEX IE1Farm_Crop
  ON Farm_Crop
(
	Farm_name	asc,
 	Crop	asc
);

CREATE TABLE Spray_Record_Pest
      (	Application_Id              INTEGER NOT NULL,
 	Pest_ID	Integer not null,
	comment	CHAR(254)
);
CREATE UNIQUE  INDEX IE1Spray_Record_Pest
  ON Spray_Record_Pest
(
Application_Id            ASC,
Pest_id	asc
);

CREATE TABLE Spray_Supervisor
      (Supervisor_Id              CHAR(6) NOT NULL,
	Supervisor_Name              CHAR(30) NOT NULL,
	ACUP_Id              CHAR(10), 
       User_Course_Date              DATE,
	ACUP_Date            DATE
);
CREATE UNIQUE  INDEX IE1Spray_Super
  ON Spray_Supervisor
(
Supervisor_Id           ASC
);
CREATE TABLE Operator
      (Operator_Id              INTEGER NOT NULL,
	Operator_Name              CHAR(30) NOT NULL
);
CREATE UNIQUE  INDEX IE1Operator
  ON Operator
(
operator_Id           ASC
);
CREATE TABLE Spray_Equipment
      (Equipment_Id              INTEGER NOT NULL,
	Equipment_Desc              CHAR(35), 
	Equipment_Type              CHAR(35), 
       Tank_Capacity              INTEGER
);
connect live sysadm dani;
set timeout 1;
alter table spray_Equipment add Equipment_Type CHAR(35);
commit;
CREATE UNIQUE INDEX IE1Spray_Equip
  ON Spray_Equipment
(
Equipment_Id            ASC
);

CREATE TABLE Pest
      (Pest_Id              Integer NOT NULL,
	Pest_Name              CHAR(20) NOT NULL
);
CREATE UNIQUE INDEX IE1Pest
  ON Pest
(
Pest_Id            ASC
);
CREATE TABLE Spray_User
      (User_Id              CHAR(6) NOT NULL,
	User_Name       CHAR(30) NOT NULL
);
CREATE UNIQUE INDEX IE1User
  ON Spray_User
(
User_Id            ASC
);


connect live sysadm dani;
set timeout 1;


ALTER TABLE Chemical
       PRIMARY KEY (Chemical_Id);
ALTER TABLE Chemical_Stored
       PRIMARY KEY (Chemical_Id, storage_id);
commit;
alter table chemical_stored
drop
	primary key;
ALTER TABLE Chemical_Purchase
       PRIMARY KEY (Purchase_Id);
ALTER TABLE Storage
	PRIMARY KEY (Storage_Id);
ALTER TABLE Chemicals_Used
       PRIMARY KEY (Chemical_Id, Chem_Batch_No, Reference_No);
ALTER TABLE Spray_Supervisor
       PRIMARY KEY (Supervisor_Id);
ALTER TABLE Spray_Records
       PRIMARY KEY (Reference_No);
ALTER TABLE Pest
       PRIMARY KEY (Pest_Id);
ALTER TABLE Spray_Equipment
       PRIMARY KEY (Equipment_Id);
ALTER TABLE Spray_User
       PRIMARY KEY (User_Id);
ALTER TABLE Chemical_Supplier
       PRIMARY KEY (Supplier_Id);

ALTER TABLE Chemical_Purchase
       FOREIGN KEY FKCHSUP (Formulation_Id)
               REFERENCES Formulation
               ON DELETE SET NULL;
ALTER TABLE Chemical_Purchase
       FOREIGN KEY FKCHSUP (Storage_Id)
               REFERENCES Storage
               ON DELETE SET NULL;
ALTER TABLE Chemical
       FOREIGN KEY FKCHSUPP (Supplier_Id)
               REFERENCES Chemical_Supplier
               ON DELETE SET NULL;
ALTER TABLE Chemicals_Used
       FOREIGN KEY FKSRCHUD (Chemical_Id, Chem_Batch_no)
               REFERENCES Chemical
               ON DELETE SET NULL;
ALTER TABLE Chemicals_Used
       FOREIGN KEY FKSRCHREF (Reference_No)
               REFERENCES Spray_Records
               ON DELETE SET NULL;
ALTER TABLE Spray_Records
       FOREIGN KEY FKSRFARM (Farm_Name)
               REFERENCES Farm_Master
               ON DELETE SET NULL;
ALTER TABLE Spray_Records
       FOREIGN KEY FKSRPEST (Pest_Id)
               REFERENCES Pest
               ON DELETE SET NULL;
ALTER TABLE Spray_Records
       FOREIGN KEY FKSREQIP (Equipment_Id)
               REFERENCES Spray_Equipment
               ON DELETE SET NULL;
ALTER TABLE Spray_Records
       FOREIGN KEY FKSRSPVS (Supervisor_Id)
               REFERENCES Spray_Supervisor
               ON DELETE SET NULL;
ALTER TABLE Spray_Records
       FOREIGN KEY FKSRUSER (User_Id)
               REFERENCES Spray_User
               ON DELETE SET NULL;
commit;
CREATE PUBLIC SYNONYM CHEMICAL FOR SYSADM.CHEMICAL;
CREATE PUBLIC SYNONYM CHEMICAL_Stored FOR SYSADM.CHEMICAL_Stored;
CREATE PUBLIC SYNONYM CHEMICAL_PURCHASE FOR SYSADM.CHEMICAL_PURCHASE;
CREATE PUBLIC SYNONYM CHEMICALS_Used FOR SYSADM.CHEMICALS_Used;
CREATE PUBLIC SYNONYM Spray_User FOR SYSADM.Spray_User;
CREATE PUBLIC SYNONYM Spray_Supervisor FOR SYSADM.Spray_Supervisor;
CREATE PUBLIC SYNONYM Spray_Equipment FOR SYSADM.Spray_Equipment;
CREATE PUBLIC SYNONYM Pest FOR SYSADM.Pest;
CREATE PUBLIC SYNONYM Formulation FOR SYSADM.Formulation;
CREATE PUBLIC SYNONYM Spray_Records FOR SYSADM.Spray_Records;
CREATE PUBLIC SYNONYM Chemical_Supplier FOR SYSADM.Chemical_Supplier;
CREATE PUBLIC SYNONYM Storage FOR SYSADM.Storage;
CREATE PUBLIC SYNONYM spray_record_pest FOR SYSADM.spray_record_pest;
CREATE PUBLIC SYNONYM Farm_Crop FOR SYSADM.Farm_Crop;
CREATE PUBLIC SYNONYM Operator FOR SYSADM.Operator;

hold it here;
commit;

DROP TABLE CHEMICAL;
DROP TABLE Spray_User;
DROP TABLE Spray_Supervisor ;
DROP TABLE Spray_Equipment ;
DROP TABLE Pest;
DROP TABLE Formulation ;
DROP TABLE Spray_Records ;
COMMIT;
ROLLBACK;

;******************************************************************************************************;
; Evaluation

;******************************************************************************************************
;

create table
	eval_item (
		item_id CHAR (8) not null,
		item_desc CHAR (60) not null,
		Owner_Id CHAR (20),
		Year_of_Intro NUMBER,
		Year_Of_Release NUMBER,
		Cult_Or_Rootstock CHAR (1),
		Variety CHAR (40),
		Commercialised CHAR (1),
		Edit_Or_New_Flag CHAR (1)
		);

alter table
	eval_item
add
	Edit_Or_New_Flag CHAR (1);
commit;
create unique index eval_index ON
	eval_item (item_id);

create table
	Item_Evaluation (
		Eval_Id NUMBER not null,
		item_id CHAR (8) not null,
		Evaluator CHAR (30),
		Year NUMBER not null,
		Skin_Colour_Type CHAR (20),
		Skin_Over_Colour CHAR (20),
		Backgnd_Colour CHAR (20),
		Colour_Intensity CHAR (20),
		Skin_Lustre CHAR(30),
		Lenticels CHAR(20),
		Russet CHAR(20),
		Russet_Position CHAR(20),
		Stalk_Length CHAR (20),
		Sunburn CHAR (20),
		Crop_Yield CHAR(20),
		Limb_Rub CHAR (20),
		Fruit_Size NUMBER,
		Fruit_Shape CHAR(20),
		Uniform_Ripening CHAR (10),
		Preharvest_Drop CHAR (20),
		Cracking CHAR (10),
		Tree_Vigour CHAR (20),
		Tree_Habit CHAR (20),
		Fruiting_Habit CHAR (30),
		Brix CHAR (30),
		Pressure NUMBER,
		Skin_Thickness CHAR (20),
		Juiciness CHAR (20),
		Flavour CHAR(20),
		Acid_Sugar_Ratio CHAR (30),
		Flesh_Colour CHAR (20),
		Flesh_Texture CHAR (20),
		Bruising CHAR (20),
		Overall_Rating CHAR (20),
		Bacterial_Spot CHAR (20),
		Blossom_Type CHAR (20),
		Blossom_Timing CHAR (20),
		Comments CHAR (200),
		item_eval_pic LONG VARCHAR,
		Maturity_Date DATE
		);
create unique index item_eval_index ON
	Item_Evaluation (Eval_Id);
connect stock sysadm dani;
set timeout 1;

alter table
	item_evaluation
modify
	acid_sugar_ratio char(40);
commit;

CREATE TABLE Bay_Master
(      Bay_Name            CHAR(8) NOT NULL,
	Bay_Id		SMALLINT NOT NULL,
	Shops_Or_Growers CHAR (1) NOT NULL,
      Bay_Description     CHAR(60)
);

CREATE UNIQUE INDEX PKBay_Name
  ON Bay_Master
(
	Bay_Name            ASC
);


CREATE TABLE Bay_Location
      (Bay_Location_Id          INTEGER NOT NULL,
       Bay_Name            CHAR(8) NOT NULL,
       Row#                 SMALLINT NOT NULL,
       Seq#                 SMALLINT,
	Left_Or_Right	CHAR(1) NOT NULL,
       Loc_Added_By         CHAR(10),
       Loc_Added_Date       DATETIME
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



CREATE UNIQUE INDEX PKBay_Contents
  ON Bay_Contents
(
	Stock_Item_No         ASC,
	Bay_Location_Id          ASC
);



CREATE TABLE Customer_Item
      (Cust_No NUMBER NOT NULL,
	Stock_Item_No        NUMBER NOT NULL,
       Fine_Line        NUMBER ,
       Retail_Price          NUMBER,
       Barcode              CHAR(13), 
       Supplier_Id           CHAR(10),
	Markup		NUMBER,
	Rounded		NUMBER,
	Last_Update	DATETIME
);

connect stock sysadm dani;	
set timeout 1;

alter table
	customer_item
add
	Last_Update  DATETIME;
commit;


ALTER TABLE Customer_Item
       FOREIGN KEY FKCISI (Stock_Item_No)
               REFERENCES Stock_Item
               ON DELETE CASCADE;

ALTER TABLE Customer_Item
       FOREIGN KEY FKCICN (Cust_No)
               REFERENCES Customer_Master
               ON DELETE CASCADE;
commit;


CREATE TABLE Action_Req
      (Date_Time_Stamp      DATETIME NOT NULL,
       Action_Date          DATE NOT NULL,
       User_Id              CHAR(8),
       Cust_No              INTEGER,
       Comments             CHAR(254)
);


CREATE UNIQUE INDEX QST403512
  ON Action_Req
(
Date_Time_Stamp   ASC
);



CREATE TABLE Audit_Trail
      (Audit_User_Id        CHAR(8) NOT NULL, 
       Audit_Date_Time      DATETIME NOT NULL, 
       Cust_No              INTEGER, 
       Audit_Type           CHAR(8) NOT NULL, 
       Audit_Comments       LONG VARCHAR
);



CREATE UNIQUE INDEX PKAudit_Trail
  ON Audit_Trail
(
Audit_User_Id         ASC,
Audit_Date_Time       ASC
);



CREATE TABLE Cash_Application
      (Applic_User_Id       CHAR(8) NOT NULL,
       Applic_Sysdatetime   DATETIME NOT NULL,
       Trans_User_Id        CHAR(8),
       Trans_Sysdatetime    DATETIME,
       Receipt_User_Id      CHAR(8),
       Receipt_Sysdatetim   DATETIME,
       Trans_Hist_User_Id   CHAR(8),
       Trans_Hist_Sysdate   DATETIME,
       Date_Applied         DATE,
       Applied_By           CHAR(8),
       Trans_User_Id_Cred   CHAR(8),
       Trans_Sysdate_Cred   DATETIME,
       Trans_H_UserCred     CHAR(8),
       Trans_H_dateCred     DATETIME,
       Applied_Amount       DECIMAL(10,2),
       Cust_No              INTEGER  
);
 

CREATE UNIQUE INDEX PKCash_Application
  ON Cash_Application
(
Applic_User_Id       ASC,
Applic_Sysdatetime   ASC
);

CREATE INDEX IE1Cash_App_Trans
  ON Cash_Application
(
Trans_Sysdatetime    ASC,
Trans_User_Id        ASC
);

CREATE INDEX IE2Cash_App_Recpt
  ON Cash_Application
(
Receipt_Sysdatetim   ASC,
Receipt_User_Id      ASC
);


create index IECash_App_Cust_No 
  ON Cash_Application
( Cust_No ASC );




CREATE TABLE Cash_Receipt
      (Receipt_User_Id      CHAR(8) NOT NULL,
       Rcpt_Sysdatetime     DATETIME NOT NULL,
       Cust_No              INTEGER,
       Receipt_Type         CHAR(8),
       Receipt_Amount       DECIMAL(10,2),
       Cheque_Drawer        CHAR(60),
       Cheque_Bank          CHAR(60),
       Cheque_Branch        CHAR(60),
       Cheque_Dishonoured   CHAR(1),
       Chq_Dishonour_Date   DATE,
       Receipt_Comments     CHAR(254),
       Fully_Applied_Flag   CHAR(1),
       Amount_Unapplied     DECIMAL(10,2),
       Sundry_Catagory      CHAR(12),
       Receipt_Date         DATE,
       Cheque_No            INTEGER;
);



CREATE UNIQUE INDEX PKCash_Receipt
  ON Cash_Receipt
(
Receipt_User_Id      ASC,
Rcpt_Sysdatetime     ASC
);

CREATE INDEX IE1Receipt_CustNo
  ON Cash_Receipt
(
Cust_No              ASC
);



Create Table CULTIVAR
	( 
	CULT_ID CHAR (8)  NOT NULL, 
	GENUS CHAR (30)  , 
	SPECIES CHAR (30)  , 
	VARIETY CHAR (40)  NOT NULL, 
	CULT_DESC CHAR (60)  NOT NULL, 
	FULL_CULT_DESC VARCHAR (254), 
	PVR_NO CHAR (10)  , 
	CV_NOT_SALE_FLAG CHAR (1)  , 
	CV_VFREE_FLAG CHAR (1)  , 
	CV_NON_PROP_FLAG CHAR (1)  , 
	CV_MATURITY_FROM CHAR (5)  , 
	CV_MATURITY_TO CHAR (5)  , 
	CV_VIGOUR CHAR (30)  , 
	CV_SYNONYMS CHAR (254)  , 
	CV_ORIGIN CHAR (254)  , 
	CV_PARENTAGE CHAR (254)  , 
	FIRST_SALE_DATE DATE , 
	CV_SHAPE CHAR (254)  , 
	CV_TRADE_MARK_NAME CHAR (60)  , 
	CV_ON_TRIAL_FLAG CHAR (1)  , 
	LBL_COLOUR CHAR (8)  , 
	CV_CHILL_UNITS CHAR (100)  , 
	CV_FOLIAGE LONG , 
	CV_DISEASES CHAR (254)  , 
	CV_FLOWERS LONG , 
	CV_RUSSET CHAR (60)  , 
	CV_STORAGE CHAR (60)  , 
	CV_BLOSSOM CHAR (254)  , 
	CV_STEM_LENGTH CHAR (50)  , 
	CV_CALYX CHAR (30)  , 
	CV_TYPE CHAR (50)  , 
	CV_STONE CHAR (100)  , 
	CV_DRYING CHAR (60)  , 
	CV_UNIV_POLLEN CHAR (1)  , 
	CV_SELF_FERTILE CHAR (1)  , 
	CV_CARE LONG , 
	CV_LANDSCAPE_VALUE LONG , 
	CV_NAME CHAR (100)  , 
	CV_BREEDER_CODE CHAR (60)  , 
	CV_SPRAYING CHAR (254)  , 
	CV_FRAGRANCE CHAR (30)  , 
	CV_STOCK_SHELTER CHAR (60)  , 
	CV_PRUNING CHAR (254)  , 
	CV_FRUIT_SIZE CHAR (254)  , 
	CV_ADDED_BY CHAR (8)  , 
	CV_ADDED_DATE DATE ,
 	CV_SEARCH_CRITERIA CHAR (60)  ,
	CV_LABEL_LINE_1 CHAR (80)  ,
	CV_LABEL_LINE_2 CHAR (80)  , 
	CV_LABEL_LINE_3 CHAR (80)  , 
	CV_LABEL_LINE_4 CHAR (80)  , 
	CV_LABEL_LINE_5 CHAR (80)  , 
	CV_FAMILY CHAR (20)  , 
	CV_COMMONNAME CHAR (20)  , 
	CV_FLAVOUR CHAR (254)  , 
	CV_FILENAME CHAR (50)  , 
	CV_TREE_SIZE CHAR (254)  , 
	CV_CLIMATE CHAR (254)  , 
	CV_ORN_FRUIT CHAR (254)  , 
	CV_BARK CHAR (254)  , 
	CV_SOIL CHAR (254)  , 
	CV_HEIGHT CHAR (254)  , 
	CV_REJUV CHAR (254)  , 	
	CV_ROOTS CHAR (254)  , 
	CV_NUT CHAR (254)  , 
	CV_KERNEL CHAR (254)  , 
	CV_SHELL CHAR (254)  , 
	CV_LL1_OFFSET FLOAT , 
	CV_LL2_OFFSET FLOAT , 	
	CV_LL3_OFFSET FLOAT , 
	CV_LL4_OFFSET FLOAT , 
	CV_LL5_OFFSET FLOAT , 
	VARIETY_TYPE CHAR (1)  , 
	CV_WIDTH CHAR (20)  , 
	CV_LABEL_LINE_6 CHAR (80)  , 
	CV_LL6_OFFSET FLOAT , 
	CV_LBL_COUNT INTEGER , 
	CV_LBL_COUNT_DATE DATE , 
	CV_LBL_NORW INTEGER , 
	CV_LBL_MB INTEGER , 
	CV_LBL_COMP INTEGER , 
	CV_LBL_TAG INTEGER , 
	CV_LBL_INFO CHAR (8)  , 
	CV_LBL_USA INTEGER , 
	CV_LBL_WES_EST INTEGER , 
	PROD_ROYALTY CHAR (1)  , 
	MINIMUM_REQ CHAR (1)  , 
	CV_MATURITY_REF INTEGER , 
	QUAR_ENTRY_DATE DATE , 
	QUAR_RELEASE_DATE DATE , 
	QUAR_RELEASED CHAR (1)  , 
	IN_BILLS_BIBLE CHAR (1)  , 
	CV_COMMENTS LONG , 
	CV_SKIN LONG , 
	CV_FLESH LONG , 
	CV_CROPPING LONG , 
	CV_DISORDER LONG , 
	CV_TREE_HABIT LONG , 
	CV_IMAGE CHAR (32)  , 
	CV_SHAPEIMAGE INTEGER , 
	CV_DISCLAIMER CHAR (50)  , 
	CV_UPLOAD CHAR (1)  , 
	CV_NEW CHAR (1)  , 
	LASTCHANGE_NAME CHAR (8)  , 
	LASTCHANGE_DATE DATE , 
	CV_POLLINATION LONG , 
	CV_MATURITY LONG , 
	CV_LTDOBSERVE CHAR (1)  , 
	CV_EXCLUSIVE CHAR (1)  , 
	CV_OVERSEAS CHAR (1)  , 
	CV_LTDEVAL CHAR (1)  , 
	SORT_ALPHA CHAR (1)  , 
	LICENSOR CHAR (60) ,  
	Corflute_Id CHAR(8),
	AUSTEP_LISTING CHAR(1),
	OS_MATURITY_DATE DATE,
	IMG_DIGITAL CHAR(1),
	IMG_SLIDE CHAR(1),
	IMG_TRANSPARENCY CHAR(1),
	IMG_REFLECTIVE CHAR(1),
	CV_FleshColour CHAR (1),
	CV_SubAcid CHAR(1),
	CV_WebTrial CHAR(1)
);

connect stockdev sysadm dani;
set timeout 1;

alter table
	cultivar
rename
	CV_FleshCoulour CV_FleshColour;
use 3;
alter table
	cultivar
add
	CV_WebTrial CHAR (1);
commit;

rollback;

CREATE UNIQUE INDEX PKCult_id
  ON Cultivar
(
Cult_Id              ASC
);
commit;

select
	cult_id,
	cv_street_trees
from
	cultivar
where
	cv_street_trees  is not null;


*********THE FOLLOWING INDEXES HAVE BEEN DROPPED ******

CREATE INDEX IECultVariety
  ON Cultivar
(
@UPPER(Variety)            ASC
);

CREATE INDEX IECultDesc
  ON Cultivar
(
@UPPER(Cult_desc)            ASC
);
commit;

CREATE INDEX IECVPVRNo
  ON Cultivar
(
PVR_No               ASC
);

CREATE INDEX IECVNonProp
  ON Cultivar
(
CV_Non_Prop_Flag     ASC
);
CREATE INDEX IECVOthName
  ON Cultivar
(
@UPPER(CV_Other_Names)       ASC
);

CREATE INDEX IESearchCriteria
  ON Cultivar
(
CV_Search_Criteria     ASC
);

CREATE INDEX IEVarietyType
  ON Cultivar
(
  Variety_Type     ASC
);

CREATE INDEX IEVARTYPE
   ON CULTIVAR
(VARIETY_TYPE    ASC,
@UPPER (VARIETY) ASC
);
CREATE INDEX IEFirst_sale_date
  ON Cultivar
(
  First_Sale_Date     ASC
);
*********************

CREATE INDEX TONY_CULT
   ON CULTIVAR
(
CULT_ID    ASC
);
CREATE INDEX TONY_CULT_1
   ON CULTIVAR
(
CULT_DESC    ASC
);
CREATE INDEX TONY_CULT_2
   ON CULTIVAR
(
CULT_DESC    ASC
);

CREATE INDEX TONY_CULT_3
   ON CULTIVAR
(
CULT_DESC    ASC,
VARIETY      ASC,
CV_NON_PROP_FLAG   ASC
);
CREATE INDEX TONY_CULT_4
   ON CULTIVAR
(
CULT_ID    ASC,
CULT_DESC   ASC,
VARIETY     ASC,
CV_NON_PROP_FLAG  ASC
);
CREATE INDEX TONY_CULT_5
   ON CULTIVAR
(
CULT_ID    ASC
);

CREATE INDEX TONY_CULT_6
   ON CULTIVAR
(
CULT_ID    ASC,
CULT_DESC  ASC,
VARIETY    ASC,
CV_VFREE_FLAG   ASC,
CV_NON_PROP_FLAG  ASC
);
CREATE INDEX TONY_CULT_7
   ON CULTIVAR
(
CV_VFREE_FLAG    ASC,
VARIETY          ASC 
);
CREATE INDEX TONY_CULT_8
   ON CULTIVAR
(
VARIETY    ASC
);
CREATE INDEX TONY_CULT_9
   ON CULTIVAR
(
VARIETY_TYPE    ASC,
VARIETY         ASC
);

CREATE TABLE Cult_Maturity_Ref
	(Variety	CHAR(40) NOT NULL,
	Cult_ID	CHAR(8) NOT NULL,
	Location	CHAR(40) NOT NULL,
	Maturity_Date	DATETIME NOT NULL
	);

CREATE UNIQUE INDEX PKCult_Mat
  ON Cult_Maturity_Ref
(
	Variety		ASC,
	Cult_Id		ASC
);

CREATE TABLE Customer_Address
      (Cust_No              INTEGER NOT NULL,
       Add_Added_DT         DATETIME NOT NULL,
       Address_Type         CHAR(8) NOT NULL,
       Address_1            CHAR(30),
       Address_2            CHAR(30),
       Suburb               CHAR(24),
       Postcode             CHAR(4),
       State                CHAR(3),
       Country              CHAR(30),
       Area_Code            CHAR(4),
       Phone_No             CHAR(8),
       Fax_No               CHAR(8),
       Comments             CHAR(254),
       Added_By             CHAR(8),
       Area_Code_Fax        CHAR(4),
       Address_Meet_Id      CHAR(8),
       Main_Address_Flag    CHAR(1), 
       Email                        CHAR(50),
	Default_Shipping  CHAR(1),
	Temp_Ship_Date		DATETIME
);

CREATE UNIQUE INDEX PKCACustno_DT
  ON Customer_Address
(
Cust_No              ASC,
Add_Added_DT         ASC
);

CREATE INDEX IE5Address_Type
  ON Customer_Address
(
Address_Type         ASC
);                            

CREATE INDEX IECA_Suburb
  ON Customer_Address
(
Suburb               ASC);

CREATE INDEX IECA_PCode
  ON Customer_Address
(
Postcode             ASC
);




CREATE TABLE Cust_Cancellation
      (Canc_DT              DATETIME NOT NULL,
       Cust_No              INTEGER,
       Canc_Reason          CHAR(254),
       Canc_By              CHAR(8),
       Cultivar_Desc        CHAR(60),
       Root_Id              CHAR(8),
       Ord_Amt              INTEGER,
       Conf_Amt             INTEGER,
       Order_Date           DATE,
       Contract_Price       DECIMAL(8,2),
       Year_Of_Sale         SMALLINT,
       Sale_Cat             CHAR(2),
	Orig_Order_Book_No 	CHAR(30),
	Del_Order_Book_No	CHAR(30),
	Tree_Type	CHAR(8),
	Tree_Type_Desc	CHAR(40),
	Cult_Id		CHAR(8),
	Root_Desc	CHAR(40),
	Stock_Type	CHAR(1)
);

CREATE UNIQUE INDEX PKCust_Canc_Date
  ON Cust_Cancellation
(
Canc_DT              ASC
);

CREATE INDEX IE1Cust_No_Order
  ON Cust_Cancellation
(
Cust_No              ASC
);


CREATE TABLE Customer_Contacts
      (Cust_No              INTEGER NOT NULL,
       CC_Added_DT          DATETIME NOT NULL,
       Contact_Title        CHAR(6),
       Contact_Given_Name   CHAR(30),
       Contact_Surname      CHAR(30),
       Contact_Mail_Flag    CHAR(1),
       Wrk_Phone_Code       CHAR(4),
       Contact_Work_Phone   CHAR(8),
       AH_Phone_Code        CHAR(4),
       Contact_AH_Phone     CHAR(8),
       Contact_Position     CHAR(30),
       Contact_Added_By     CHAR(8),
       Notification_Type    CHAR(8),
       Main_Contact_Flag    CHAR(1), 
       Mob_Phone_Code    CHAR(4), 
       Contact_Mob_Phone    CHAR(12), 
       Email                       CHAR(50)
);

CREATE UNIQUE INDEX PKCCCustno_DT
  ON Customer_Contacts
(
Cust_No              ASC,
CC_Added_DT          ASC
);

CREATE INDEX IECC_Surname
  ON Customer_Contacts
(
Contact_Surname      ASC
);


********************************************************************** NOT DONE LIVE YET ************;
connect stockdev sysadm dani;
connect stklocal sysadm dani;
set timeout 1;

CREATE TABLE Cust_Labels
      (User_Id              CHAR(8) NOT NULL,
       Sys_Date_Time   DATETIME NOT NULL, 
       Cust_No             INTEGER, 
       Stock_Item_No   SMALLINT, 
       Year_Of_Sale     SMALLINT, 
       StorePrice          DECIMAL(8,2), 
       StoreBCode        CHAR(13), 
       StoreBCDesc      CHAR(60), 
       CostPerUnit        DECIMAL(4,2) 
);

CREATE UNIQUE INDEX PKCustLables
  ON Cust_Labels
(
User_Id              ASC,
Sys_Date_Time        ASC
);

CREATE INDEX IECustLabelsMain
  ON Cust_Labels
(
Cust_No              ASC,
Stock_Item_No        ASC,
Year_Of_Sale         ASC
);

CREATE INDEX IECustLabelsSec
  ON Cust_Labels
(
Stock_Item_No        ASC, 
Year_Of_Sale         ASC,
Cust_No              ASC
);


ALTER TABLE Cust_Labels
       PRIMARY KEY (User_Id, Sys_Date_Time);

CREATE PUBLIC SYNONYM CUST_LABELS FOR SYSADM.CUST_LABELS;

GRANT ALL ON CUST_LABELS TO CAROL,DANI,JAN,WES,LIZ,DAWN,ROBYN,JEAN,GUEST,CHRIS,LYNN,GRAHAM,CHRISTIN, AMANDA,   GUESTVGA, MEAGHAN,CATHY,BRENDAN,LEANNE,REBECCA,DWAYNE,ZOEE,IAN,GLENYS;

commit;
disconnect all;
************************************************************************************************************************;



CREATE TABLE Customer_Master
      (Cust_No              INTEGER NOT NULL,
       Customer_Type        CHAR(3),
       Region_Id            CHAR(8),
       Cust_Name            CHAR(60) NOT NULL,
       Bus_Name             CHAR(60),
       Cust_Comments        CHAR(254),
       FNA_Flag             CHAR(1),
       Cont_Price_Flag      CHAR(1),
       Dep_Reqd_Flag        CHAR(1),
       COD_Flag             CHAR(1),
       Dont_Sell_Flag       CHAR(1),
       Mailing_List_Flag    CHAR(1),
       Ass_Cust_No          INTEGER,
       ACN_No               CHAR(10), 
       Prev_93YearOrdAmt    INTEGER,
       Prev_92YearOrdAmt    INTEGER,
       Prev_91YearOrdAmt    INTEGER,
       Prev_90YearOrdAmt    INTEGER,
       NPA_Refusal_Flag     CHAR(1),
       Bar_Code_Lbls_Reqd   CHAR(1),
       Cust_Credit_Limit    DECIMAL(10,2),
       Credit_Term          SMALLINT,
       Cust_AR_Balance      DECIMAL(10,2),
       Bad_Debt_Flag        CHAR(1),
       Perc_Cod             DECIMAL(4,2),
       COD_Requested_Flag   CHAR(1),
       Sv_Chrg_From_Date    DATE,
       Override_FrCode      CHAR(8),
       Service_Charge       DECIMAL(4,2),
       Royalty_Owner_code   CHAR(8),
       Def_Deliv_Instruct   char(254),
       Def_Deliv_type       CHAR(8),  
       Init_Credit_Term     SMALLINT,
       Order_Notes          char(254),
       Label_Notes          char(254),
       Load_Notes           char(254),
       Closed_Account       CHAR(1),
       Credit_Stop          CHAR(1),
       Purch_Ord_No_Reqd    CHAR(1), 
       Invoice_Notes        CHAR(254), 
       Send_Org_Inv         CHAR(1), 
       Pay_Bef_Despatch     CHAR(1),
       With_Debt_Collect    CHAR(1),
       Accnt_Open_Date      DATE,
       Accnt_Close_Date     DATE,
       Added_By             CHAR(8), 
       Days_Of_Credit       INTEGER,
       Comb_Statement    CHAR(1),
	Supplier_Id   CHAR(10),
	e_inv_required CHAR(1),
	danks_file_id_seq INTEGER,
	store_id CHAR(10),
	Prefer_Email CHAR(1),
	FMN_PRC_Contract CHAR(1),
	ATR_Contract CHAR(1),
	Discount_Percent	REAL,
	Discount_User_Id	CHAR(12),
	Discount_Date	DATE,
	ZS_Packer  CHAR (1),
	ZS_Restrict_Agent CHAR (1),
	ZS_Agent	CHAR(1),
	ZS_Exporter  	CHAR (1),
	ZS_Restr_Exporter CHAR (1),
	Cust_Or_Supplier	CHAR(1),
	In_Store_Markup		NUMBER,
	In_Store_Stk_Cust	NUMBER,
	In_Store_Parent		NUMBER,
	In_Store_Take		NUMBER,
	HH_LABELLING	CHAR(1),
	HH_CHECKING 	CHAR(1),
	HH_LOADED 	CHAR(1),
	HH_WASHED 	CHAR(1),
	HH_LOADING 	CHAR(1),
	CUST_ABN 	NUMBER,
	ADV_DISC_PERCENT NUMBER
);

connect stockdev sysadm dani;
set timeout 1;
alter table
	customer_master
add
	ATR_Contract CHAR(1);
commit;
;
use 2;
connect live sysadm dani;		
set timeout 1;


select
	*
from
	customer_master;
commit;
connect stock sysadm dani;
connect stockdev sysadm dani;
set timeout 1;



CREATE TABLE Cust_ARNotes
      (Cust_No         INTEGER NOT NULL, 
       AR_Comments LONG VARCHAR
);

CREATE UNIQUE INDEX PKCustARNotes
  ON Cust_ARNotes
(
Cust_No              ASC
);

CREATE UNIQUE INDEX PKCustItem
  ON Customer_Item
(
Cust_No              ASC,
Stock_Item_No	ASC,
Supplier_Id		ASC
);
commit;
connect stock sysadm dani;
drop index PKCustItem;



CREATE TABLE Cust_Comments
      (Cust_No       INTEGER NOT NULL, 
       Customer_Comments LONG VARCHAR
);

CREATE UNIQUE INDEX PKCustComm
  ON Cust_Comments
(
Cust_No              ASC
);


CREATE INDEX IECM_AssocNo
  ON Customer_Master
(
Ass_Cust_No          ASC
);

create index ie1cstpbefdesp on customer_master
(
  pay_bef_despatch asc,
  cust_no asc
);

CREATE UNIQUE INDEX PKCust_No
  ON Customer_Master
(
Cust_No              ASC
);
CREATE INDEX IECust_Cont_Surn
  ON Customer_Master
(
Cust_Name            ASC
);

create index ieuppcuston customer_master
(@UPPER(cust_name));

CREATE INDEX IECust_Bus_Name
  ON Customer_Master(
Bus_Name             ASC
);

CREATE INDEX IECust_Type
  ON Customer_Master
(
Customer_Type        ASC
);


CREATE INDEX IECust_Region
  ON Customer_Master
(
Region_Id            ASC
);



CREATE INDEX TONY_CUST_3
   ON CUSTOMER_MASTER
(
CUST_NAME            ASC,
CUST_NO              ASC
);

CREATE INDEX TONY_CUST_MAST
 ON CUSTOMER_MASTER
(
CUST_NO              ASC
);

CREATE INDEX TONY_CUST_MAST_1
    ON CUSTOMER_MASTER
(
CUST_NO              ASC,
CUST_NAME            ASC
);
CREATE INDEX TONY_CUST_MAST_2
    ON CUSTOMER_MASTER
(
CUST_NO              ASC,
CUST_NAME            ASC,
BUS_NAME             ASC 
);     
CREATE INDEX TONY_CUST_MAST_3
    ON CUSTOMER_MASTER
(
CUST_NO              ASC,
CUST_TYPE            ASC
);
CREATE INDEX TONY_CUST_MAST_4
    ON CUSTOMER_MASTER
(
CUST_NO              ASC,
NPA_REFUSAL_FLAG     ASC
);


CREATE TABLE Customer_Order
      (Cust_No              INTEGER NOT NULL,
       Order_Date_Time      DATETIME NOT NULL,
       Stock_Item_No        SMALLINT,
       Year_of_Sale         SMALLINT,
       Load_Id              CHAR(8),
       Subs_Ok_Flag         CHAR(1) NOT NULL,
       Ordered_Amount       INTEGER,
       Ord_Date             DATE,
       Purch_Order_No       INTEGER,
       Sale_Cat             CHAR(2),
       Invoiced_Flag        CHAR(1),
       Invoice_No           INTEGER,
       Invoiced_Date        DATE,
       Invoiced_By          CHAR(8),
       Alloc_Flag           CHAR(1) NOT NULL,
       Conf_Flag            CHAR(1) NOT NULL,
       Conf_Amt             NUMBER,
       User_Id              CHAR(8),
       Pull_Sheet_Issued    CHAR(1),
       Pull_Sheet_Date      DATE,
       Pull_Sheet_By        CHAR(8),
       NPA_Sent_Flag        CHAR(1) NOT NULL,
       NPA_Sent_Date        DATE,
       NPA_Recd_Flag        CHAR(1),
       NPA_Recd_Date        DATE,
       Ack_Flag             CHAR(1),
       Spec_Requirement     CHAR(254),
       Order_Comments       CHAR(254),
       Lbl_PullSh_Printed   CHAR(1),
       Ass_Cust_No          INTEGER,
       Associated_Date      DATETIME,
       Subs_Item_No         SMALLINT,
       Cont_Price_Flag      CHAR(1),
       Custom_Bud_Flag      CHAR(1),
       CB_Deposit_Reqd      CHAR(1),
       CB_Full_Pay_Flag     CHAR(1),
       CB_Own_Buds_Supp     CHAR(1),
       CB_Comments          CHAR(60),
       Contract_Price       DECIMAL(8,2),
       Contract_Exists      CHAR(1),
       Contract_Comments    CHAR(60),
       Contract_Terms       CHAR(254),
       Contract_Dep_Reqd    CHAR(1),
       Trialpack_Reqd       CHAR(1),
       Trialpack_SentFlag   CHAR(1),
       Trialpack_SentDate   DATE,
       Trialpack_RecdFlag   CHAR(1),
       Trialpack_RecdDate   DATE,
       Credit_Note_No       INTEGER,
       No_Trees_Credited    INTEGER,
       Credited_Amount      DECIMAL(8,2),
       Purchase_order_no    CHAR(30),
       Hold_order_Date      DATE,
       No_Subs_Reason       CHAR(254),  
       Return_To_Inv        CHAR(1), 
       Batch_Year_Of_Sale   SMALLINT, 
       Batch_Location_Id    INTEGER, 
       Invoice_Tree_Price   DECIMAL(8,2),
       Inv_Tree_Roy_Ownr    DECIMAL(8,2),
       Inv_Tree_FMN         DECIMAL(8,2),
       Inv_Tree_FNA         DECIMAL(8,2), 
       	Cr_Base_Price_Only   	CHAR(1), 
       	PickList_No             INTEGER,
       	Order_Book_no 		CHAR(30),
	module_item		CHAR(1),
	item_parent_ordDT	DATETIME,
	danks_prom_pool_id 	INTEGER,
	danks_buyer_name 	CHAR(30),
	Dep_Req_Ltr_Snt 	CHAR(1),
	Dep_Req_Ltr_Rcd 	CHAR(1),
	Dep_Req_Snt_Date 	DATE,
	Dep_Req_Rem_Date 	DATE,
	Barcodes_Printed	CHAR(1),
	Truck_Stk_Printd	CHAR(1),
	Contract_Freight		NUMBER,
	HH_Shortage		CHAR(1),
	HH_Checked		CHAR(1),
	HH_Shortage_Amt	NUMBER,
	Cust_Bud_Ltr_Snt 	CHAR(1),
	Cust_Bud_Ltr_Rcd 	CHAR(1),
	Cust_Bud_Snt_Date 	DATE,
	Cust_Bud_Rem_Date 	DATE,
	HH_Shed_Sorted	CHAR(1);	
);	
******************************************************* NOT DONE IN LIVE YET ************;
connect stock sysadm dani;
set timeout 1;
use 1;
select
	*
from
	load;
update
	load
set
	hh_ready = 'N'
where
	hh_ready is null;
commit;
Alter table
	cust_order_history
add	
	HH_Shed_Sorted		CHAR(1)
;
Alter table
	customer_order
add
	HH_Shed_Sorted		CHAR(1)
;
rollback;
use 2;
select
	*
from
	customer_order;
select
	*
from
	load_customers;
commit;

disconnect all;
**********************************************************************************************;




****************************************************** NOT DONE IN LIVE YET **********;
connect stockdev sysadm dani;
set timeout 5;

alter table customer_order ADD Invoice_Tree_Pric2 REAL;
alter table customer_order ADD Inv_Tree_Roy_Ownr2 REAL;
alter table customer_order ADD Inv_Tree_FMN2 REAL;
alter table customer_order ADD Inv_Tree_FNA2 REAL;

UPDATE 
  Customer_Order 
SET 
  Invoice_Tree_Pric2 = Invoice_Tree_Price, 
  Inv_Tree_Roy_Ownr2 = Inv_Tree_Roy_Ownr, 
  Inv_Tree_FMN2 = Inv_Tree_FMN,
  Inv_Tree_FNA2 = Inv_Tree_FNA;

alter table customer_Order DROP Invoice_Tree_Price;
alter table customer_Order DROP Inv_Tree_Roy_Ownr;
alter table customer_Order DROP Inv_Tree_FMN;
alter table customer_order DROP Inv_Tree_FNA;

alter table customer_order ADD Invoice_Tree_Price REAL;
alter table customer_order ADD Inv_Tree_Roy_Ownr REAL;
alter table customer_order ADD Inv_Tree_FMN REAL;
alter table customer_order ADD Inv_Tree_FNA REAL;

UPDATE 
  Customer_Order 
SET 
  Invoice_Tree_Price = Invoice_Tree_Pric2, 
  Inv_Tree_Roy_Ownr = Inv_Tree_Roy_Ownr2, 
  Inv_Tree_FMN = Inv_Tree_FMN2,
  Inv_Tree_FNA = Inv_Tree_FNA2;

alter table customer_Order DROP Invoice_Tree_Pric2;
alter table customer_Order DROP Inv_Tree_Roy_Ownr2;
alter table customer_Order DROP Inv_Tree_FMN2;
alter table customer_order DROP Inv_Tree_FNA2;

commit;

**************************************************************************************;
CREATE INDEX IEBatchYrLocation
  ON Customer_Order
(
  Batch_Year_Of_Sale ASC,
  Batch_Location_Id  ASC
);

COMMIT;
CREATE INDEX IERetToInvItmYr
  ON Customer_Order
(
Return_To_Inv        ASC,
Year_Of_Sale         ASC, 
Stock_Item_No        ASC);

CREATE UNIQUE INDEX PKCust_Order
  ON Customer_Order
(
Cust_No              ASC,
Order_Date_Time      ASC
);

****NOT Done************************

CREATE UNIQUE INDEX PKCust_Order_Date
  ON Customer_Order
(
Order_Date_Time      ASC
);
commit;
****************************************

CREATE INDEX IECO_ItemYr
  ON Customer_Order
(
Stock_Item_No        ASC,
Year_of_Sale         ASC
);

CREATE INDEX IECO_YrItem
  ON Customer_Order
(
Year_of_Sale         ASC,
Stock_Item_No        ASC
);

CREATE INDEX IECO_Load
  ON Customer_Order
(
Load_Id              ASC
);

CREATE INDEX IECO_OrdDate
  ON Customer_Order
(
Ord_Date             ASC
);



create index ieco_Inv_no
   on customer_order
(
Invoice_No           ASC
);


 
CREATE INDEX IECredit_Note
  ON Customer_Order
(
  Credit_Note_No     ASC
);

create index iesubs
   on customer_order
(
Subs_Item_no   ASC
);

create index iesubs_yr
   on customer_order
(
Subs_Item_no   ASC,
Year_Of_sale   ASC
);

create index ieyr_subs
   on customer_order
(
Year_Of_sale   ASC,
Subs_Item_no   ASC
); 

create index iesubs_yrinv
   on customer_order
(
Subs_Item_no   ASC,
Year_Of_sale   ASC,
Invoiced_flag  ASC
);


create index ieinvdatflgsale
   on customer_order
(
invoiced_date  ASC,
invoiced_flag  ASC,
Sale_Cat       ASC
);

create index ieinvflgdatesale
   on customer_order
(
invoiced_flag  ASC,
invoiced_date  ASC,
Sale_Cat       ASC
);
CREATE INDEX TONY_CUST_ORD
    ON CUSTOMER_ORDER
(
CUST_NO              ASC
);
CREATE INDEX TONY_CUST_ORD_2
    ON CUSTOMER_ORDER
(
CUST_NO              ASC,
YEAR_OF_SALE         ASC
);

CREATE TABLE Cust_Letter
      (Cust_No              INTEGER NOT NULL,
       Seq_No               INTEGER NOT NULL WITH DEFAULT,
       Letter_Type         CHAR(10),
	Date_Sent          DATETIME,
        Response           CHAR(1),
	Comments          CHAR(254)
);

CREATE UNIQUE INDEX PKCust_Letter
  ON Cust_Letter
(
Cust_No              ASC,
Seq_No               ASC
);
commit;
connect stockdev sysadm dani;
set timeout 1;
CREATE TABLE Customer_Partner
      (Cust_No              INTEGER NOT NULL,
       GLN_Id               CHAR (35),
       Partner_Id         CHAR(15),
	Payer_GLN_Id          CHAR(35),
        On_Test_Flag           CHAR(1),
	Buyer_Id		CHAR(35)
);
alter table
	customer_partner
add
	Buyer_Id CHAR(35);
commit;

CREATE UNIQUE INDEX PKCust_Part
  ON Customer_Partner
(
Cust_No              ASC
);
commit;

SELECT
  	Cust_Name,
	Partner_Id,
	GLN_Id,
	Payer_GLN_Id,
	On_Test_Flag
FROM
	Customer_Master CM,
	Customer_Partner CP
WHERE
	CM.Cust_No = CP.Cust_No and
  	CM.Cust_No = 31070;



CREATE TABLE Cust_Promo
      (Cust_No              INTEGER NOT NULL,
       Promo_Id             CHAR(8) NOT NULL,
       Promo_DT_Stamp       DATETIME NOT NULL,
       Override_Price       DECIMAL(8,2),
       No_Units             NUMBER,
       Cust_Promo_Comment   CHAR(254),
       Year_of_Order        NUMBER,
       Promo_Sent_Flag      CHAR(1),
       Promo_Inv_Flag       CHAR(1),
       Promo_Invoice_No     INTEGER,
       Promo_Inv_Date       DATE,
       Promo_Invoiced_By    CHAR(8),
       Promo_Pull_Flag      CHAR(1), 
       Invoice_Price        DECIMAL(8,2), 
       Credit_Note_No       INTEGER, 
       No_Items_Credited    INTEGER, 
       Credited_Amount      DECIMAL(8,2), 
       Override_Percent     REAL, 
       purchase_order_no    CHAR(30)
);

CREATE UNIQUE INDEX PKCust_Promo
  ON Cust_Promo
(
Cust_No              ASC,
Promo_DT_Stamp       ASC
);

CREATE INDEX IEPromo_Ord_Yr
  ON Cust_Promo
(
Year_of_Order        ASC
);



CREATE INDEX IE3_Promo_Inv_No
  ON Cust_Promo
(
Promo_Invoice_No     ASC
);


CREATE TABLE Cust_Order_History
      (Cust_No              INTEGER NOT NULL,
       Order_Date_Time      DATETIME NOT NULL,
       Stock_Item_No        SMALLINT,
       Year_of_Sale         SMALLINT,
       Load_Id              CHAR(8),
       Subs_Ok_Flag         CHAR(1) NOT NULL,
       Ordered_Amount       INTEGER,
       Ord_Date             DATE,
       Purch_Order_No       INTEGER,
       Sale_Cat             CHAR(2),
       Invoiced_Flag        CHAR(1),
       Invoice_No           INTEGER,
       Invoiced_Date        DATE,
       Invoiced_By          CHAR(8),
       Alloc_Flag           CHAR(1) NOT NULL,
       Conf_Flag            CHAR(1) NOT NULL,
       Conf_Amt             NUMBER,
       User_Id              CHAR(8),
       Pull_Sheet_Issued    CHAR(1),
       Pull_Sheet_Date      DATE,
       Pull_Sheet_By        CHAR(8),
       NPA_Sent_Flag        CHAR(1) NOT NULL,
       NPA_Sent_Date        DATE,
       NPA_Recd_Flag        CHAR(1),
       NPA_Recd_Date        DATE,
       Ack_Flag             CHAR(1),
       Spec_Requirement     CHAR(254),
       Order_Comments       CHAR(254),
       Lbl_PullSh_Printed   CHAR(1),
       Ass_Cust_No          INTEGER,
       Associated_Date      DATETIME,
       Subs_Item_No         SMALLINT,
       Cont_Price_Flag      CHAR(1),
       Custom_Bud_Flag      CHAR(1),
       CB_Deposit_Reqd      CHAR(1),
       CB_Full_Pay_Flag     CHAR(1),
       CB_Own_Buds_Supp     CHAR(1),
       CB_Comments          CHAR(60),
       Contract_Price       DECIMAL(8,2),
       Contract_Exists      CHAR(1),
       Contract_Comments    CHAR(60),
       Contract_Terms       CHAR(254),
       Contract_Dep_Reqd    CHAR(1),
       Trialpack_Reqd       CHAR(1),
       Trialpack_SentFlag   CHAR(1),
       Trialpack_SentDate   DATE,
       Trialpack_RecdFlag   CHAR(1),
       Trialpack_RecdDate   DATE,
       Credit_Note_No       INTEGER,
       No_Trees_Credited    INTEGER,
       Credited_Amount      DECIMAL(8,2),
       Purchase_order_no    CHAR(10),
       Hold_order_Date      DATE,
       No_Subs_Reason       CHAR(254), 
       Return_To_Inv        CHAR(1),
       Batch_Year_Of_Sale   SMALLINT,
       Batch_Location_Id    INTEGER,
       Invoice_Tree_Price   DECIMAL(8,2),
       Inv_Tree_Roy_Ownr    DECIMAL(8,2),
       Inv_Tree_FMN         DECIMAL(8,2),
       Inv_Tree_FNA         DECIMAL(8,2), 
       Cr_Base_Price_Only   CHAR(1),
       PickList_No             INTEGER,
	Order_Book_No 		CHAR(30),
	danks_prom_pool_id INTEGER,
	danks_buyer_name CHAR(30),
	Dep_Req_Ltr_Snt CHAR(1),
	Dep_Req_Ltr_Rcd CHAR(1),
	Truck_Stk_Printd	CHAR(1)
	Barcodes_Printed	CHAR(1),
	Contract_Freight		NUMBER,
	HH_Shortage		CHAR(1),
	HH_Checked		CHAR(1),
	HH_Shortage_Amt	NUMBER,
	Cust_Bud_Ltr_Snt 	CHAR(1),
	Cust_Bud_Ltr_Rcd 	CHAR(1),
	Cust_Bud_Snt_Date 	DATE,
	Cust_Bud_Rem_Date 	DATE
);

connect stock graham graham;

CREATE INDEX IEBatchYearLocHist
  ON Cust_Order_History
(
  Batch_Year_Of_Sale ASC,
  Batch_Location_Id  ASC
);

CREATE INDEX IEHistRetInvItmYr
  ON Cust_Order_History
(
Return_To_Inv        ASC,
Year_Of_Sale         ASC, 
Stock_Item_No        ASC
);


CREATE UNIQUE INDEX PKHistCust_Order
  ON Cust_Order_History
(
Cust_No              ASC,
Order_Date_Time      ASC
);



CREATE INDEX IEHistCO_ItmYr
  ON Cust_Order_History
(
Stock_Item_No        ASC,
Year_of_Sale         ASC
);

CREATE INDEX IEHistCO_Load
  ON Cust_Order_History
(
Load_Id              ASC
);

CREATE INDEX IEHistCO_OrdDate
  ON Cust_Order_History
(
Ord_Date             ASC
);

create index ieHistco_Inv_no
   on Cust_Order_History
(
Invoice_No           ASC
);

CREATE INDEX IEHistCredit_Note
  ON Cust_Order_History
(
  Credit_Note_No     ASC
);


create index ieHistsubs
   on Cust_Order_History
(
Subs_Item_no   ASC
);
create index ieHistsubs_yr
   on Cust_Order_History
(
Subs_Item_no   ASC,
Year_Of_sale   ASC
);

create index ieHistsubs_yrinv
   on Cust_Order_History
(
Subs_Item_no   ASC,
Year_Of_sale   ASC,
Invoiced_flag  ASC
);

create index ieHistSale_Cat
   on Cust_Order_History
(
Sale_Cat  ASC
);
commit;

connect stockdev sysadm dani;
set timeout 1;

CREATE INDEX IEHINVDATFLGSALE
ON CUST_ORDER_HISTORY
(
  INVOICED_DATE ASC,
  INVOICED_FLAG ASC, 
  STOCK_ITEM_NO ASC, 
  CONF_AMT ASC, 
  INVOICE_TREE_PRICE ASC 
);


CREATE TABLE Customer_Type
      (Cust_Type            CHAR(3) NOT NULL,
       Cust_Desc            CHAR(40),
       Cont_all_Trees       CHAR(1),
       FNA_Roy_Payable      CHAR(1),
       FMN_Roy_Payable      CHAR(1),
       Itemised_Ack         CHAR(1),
       Label_Charge_Code    CHAR(8),
       NPA_Required         CHAR(1),
       Alloc_Priority       SMALLINT      
);

CREATE UNIQUE INDEX PKCust_Type
  ON Customer_Type
(
Cust_Type            ASC
);


CREATE TABLE Cult_Paint_Used
      (Cultivar_Id          CHAR(8) NOT NULL,
       Cult_Year_Used       SMALLINT NOT NULL,
       CV_Paint_Number      SMALLINT NOT NULL,
       Paint_Id             CHAR(8)
);

*** the following inserts into the cult_paint_used table the same values as the prior year - use each year but change the year figures;

select 
 'insert into Cult_Paint_Used  (Cult_year_Used, CV_Paint_Number, Cultivar_Id, Paint_id)
 VALUES
 (1997, '||CV_paint_Number||','||'''' ||Cultivar_Id||''''||', '||'''' ||Paint_id||''''||');'
 from Cult_paint_used where Cult_Year_Used = 96;
commit;

CREATE UNIQUE INDEX PKCult_Paint_Used
  ON Cult_Paint_Used
(
Cultivar_Id          ASC,
Cult_Year_Used       ASC,
CV_Paint_Number      ASC
);

CREATE INDEX IE1Cult_Paint_Used
  ON Cult_Paint_Used
(
Paint_Id             ASC
);

CREATE TABLE Day_Pts_Pck_Lst 
      (List_No             INTEGER NOT NULL, 
       Row_No           INTEGER NOT NULL, 
       From_Date        DATE, 
       To_Date           DATE, 
       Stock_Item_No SMALLINT, 
       Location_Id      INTEGER, 
       Year_Of_Sale   SMALLINT, 
       Quantity           INTEGER
);

CREATE UNIQUE INDEX PKDayPtsPckLst
  ON Day_Pts_Pck_Lst
(
List_No          ASC, 
Row_No        ASC
);

***************************************************** NOT DONE IN LIVE YET ********************;
connect stock sysadm dani;
connect stockdev sysadm dani;
connect stklocal sysadm dani;
set timeout 1;

CREATE TABLE Day_Item_Affected 
      (Day_User_Id            CHAR(8) NOT NULL, 
       Day_SysDT              DATETIME NOT NULL, 
       Stock_Item_No         SMALLINT, 
       Location_Id              INTEGER, 
       Year_Of_Sale           SMALLINT, 
       List_No                    INTEGER
);

CREATE UNIQUE INDEX PKDayItmAffct
  ON Day_Item_Affected
(
Day_User_Id       ASC, 
Day_SysDT        ASC
);

ALTER TABLE Day_Item_Affected
       PRIMARY KEY (Day_User_Id, Day_SysDT)
;

CREATE PUBLIC SYNONYM DAY_ITEM_AFFECTED FOR SYSADM.DAY_ITEM_AFFECTED;

GRANT ALL ON DAY_ITEM_AFFECTED TO CAROL,DANI,JAN,WES,LIZ,DAWN,ROBYN,JEAN,GUEST,CHRIS,LYNN,GRAHAM,CHRISTIN, AMANDA,   GUESTVGA, MEAGHAN,CATHY,BRENDAN,LEANNE,REBECCA,DWAYNE,ZOEE,IAN,GLENYS;

GRANT SELECT ON DAY_ITEM_AFFECTED TO PUBLIC, TICKETS;

commit;

disconnect all;

*********************************************************************************************************;





CREATE TABLE Deposit_History
      (Dep_Hist_User_Id     CHAR(8) NOT NULL,
       Dep_Hist_Sysdtetim   DATETIME NOT NULL,
       Cust_No              INTEGER,
       Receipt_User_Id      CHAR(8),
       Rcpt_Sysdatetime     DATETIME,
       DepHist_Amt_Reqd     DECIMAL(8,2),
       DepHist_Amt_Paid     DECIMAL(8,2),
       Dep_Hist_Paid_Date   DATE,
       DepHist_Dt_Entered   DATE,
       DepHist_Entered_By   CHAR(8),
       DepHist_Yr_Of_Sale   SMALLINT,
       Dep_Hist_Comments    CHAR(254),
       Trans_User_Id        CHAR(8),
       Trans_Sysdatetime    DATETIME,
       Trans_Hist_User_Id   CHAR(8),
       Trans_Hist_SysDT     DATETIME,
       DepHist_Reqd_Date    DATETIME 
);


CREATE INDEX IE1Trans_Hist
  ON Deposit_History
(
Trans_User_id              ASC,
Trans_Sysdatetime          ASC
);
CREATE INDEX IE1Trans_Hist2
  ON Deposit_History
(
Trans_Hist_User_id              ASC,
Trans_Hist_SysDt          ASC
);


CREATE UNIQUE INDEX PKDeposit_History
  ON Deposit_History
(
Dep_Hist_User_Id     ASC,
Dep_Hist_Sysdtetim   ASC
);

CREATE INDEX IE1Dep_Hist_Custno
  ON Deposit_History
(
Cust_No              ASC
);
 

 

CREATE INDEX IE2Dep_Hist_Recpt
  ON Deposit_History
(
Rcpt_Sysdatetime     ASC,
Receipt_User_Id      ASC
);

CREATE INDEX IE3Dep_Hist_YrSale
  ON Deposit_History
(
DepHist_Yr_Of_Sale   ASC
);

; part of the evaluation database stuff, don't change unless you change the local databases
create table
	eval_item (
		item_id CHAR (8) not null,
		item_desc CHAR (60) not null,
		Owner_Id CHAR (20),
		Year_of_Intro DATE,
		Year_Of_Release DATE,
		Cult_Or_Rootstock CHAR (1),
		Variety CHAR (40),
		Commercialised CHAR (1),
		Edit_Or_New_Flag CHAR (1)
		);

create unique index eval_index ON
	eval_item (item_id);


CREATE TABLE Evaluation
      (Item_No              SMALLINT NOT NULL,
       Location_Id          INTEGER NOT NULL,
       Evaluation_year      CHAR(2) NOT NULL,
       Buds_per_25cm        SMALLINT,
       Bud_jump             DECIMAL(2,1),
       Bloom_date_10perc    DATE,
       Full_Bloom_date      DATE,
       Petal_fall_date      DATE,
       Fl_type              CHAR(1),
       Fl_colour            CHAR(1),
       Red_in_Anthers       DECIMAL(2,1),
       Fl_Set               DECIMAL(2,1),
       Fl_Flesh_colour      CHAR(1),
       Fruit_set            DECIMAL(2,1),
       Fruit_Shed           DECIMAL(2,1),
       Fruit_doubles        DECIMAL(2,1),
       Fruit_flesh_colour   CHAR(1),
       Split_stones         CHAR(1),
       First_Pick           DATE,
       Main_Pick            DATE,
       Fruit_Colour         DECIMAL(2,1),
       Fruit_size           DECIMAL(2,1),
       Fruit_shape          DECIMAL(2,1),
       Fruit_Pubesence      DECIMAL(2,1),
       Fruit_Firmness       DECIMAL(2,1),
       Fruit_Taste          DECIMAL(2,1),
       Fruit_Texture        DECIMAL(2,1),
       Fruit_Acid           DECIMAL(2,1),
       Storage              DECIMAL(2,1),
       Atractiveness        DECIMAL(2,1),
       Sym                  DECIMAL(2,1),
       St_Red_around        DECIMAL(2,1),
       Stone_Size           DECIMAL(2,1),
       Stone_Free_Cling     CHAR(1),
       Tree_Age             CHAR(1),
       Tree_Vigour          DECIMAL(2,1),
       Tree_Shape           CHAR(1),
       Tr_Stcky_Willowy     CHAR(1),
       Tree_Size            DECIMAL(2,1),
       Pests_Diseases       DECIMAL(2,1),
       Completed_by         CHAR(10),
       Gen_Comments         CHAR(254)
);

CREATE UNIQUE INDEX PKEvaluation
  ON Evaluation
(
Item_No              ASC,
Location_Id          ASC,
Evaluation_year      ASC
);


CREATE TABLE Farm_Master
      (Farm_Name            CHAR(8) NOT NULL,
       Farm_Description     CHAR(60),
       Farm_Address_1       CHAR(30),
       Farm_Address_2       CHAR(30),
       Farm_Suburb          CHAR(24),
       Farm_Postcode        CHAR(4),
	Planning_Farm      CHAR(1)
);

CREATE UNIQUE INDEX PKFarm_Name
  ON Farm_Master
(
Farm_Name            ASC
);

CREATE TABLE Freight_Charge
      (Freight_Code         CHAR(8) NOT NULL,
       Freight_Brk_Level    SMALLINT NOT NULL,
       Price_Break_Id       CHAR(8),
	Stock_Type	CHAR(1)
);

alter table
	freight_charge
add
	Stock_Type	CHAR(1);
connect stockdev sysadm dani
CREATE UNIQUE INDEX PKFrght_Charge
  ON Freight_Charge
(
Freight_Code         ASC,
Freight_Brk_Level    ASC
);
CREATE TABLE Freight_Codes
      (Freight_Code         CHAR(8) NOT NULL,
       Freight_Desc         CHAR(40),
       Freight_Comments     CHAR(254)
);

CREATE UNIQUE INDEX PKFreight_Codes
  ON Freight_Codes
(
Freight_Code         ASC
);


CREATE TABLE Gdn_Centre_Order
      (GCO_Datetime_Stamp   DATETIME NOT NULL,
       GCO_Seq_No           SMALLINT,
       Item_No              SMALLINT,
       GCO_Display_Item     CHAR(1)
);


CREATE UNIQUE INDEX PKGdn_Centre_Order
  ON Gdn_Centre_Order
(
GCO_Datetime_Stamp   ASC
);


CREATE INDEX IE2GCO_Item_No
  ON Gdn_Centre_Order
(
Item_No              ASC
);




CREATE TABLE Graded_Pallets
      (Pallet_DateTime      DATETIME NOT NULL,
       Processed_By         CHAR(8),
       Processed_Date       DATE,
       Entered_By           CHAR(8),
	Pallet_Number 	INTEGER
);

CREATE UNIQUE INDEX PKGradedPallets
  ON Graded_Pallets
(
Pallet_DateTime      ASC
);
commit;
set timeout 1;
connect stockdev sysadm dani;
CREATE TABLE Growing_Sale
      (Stock_Item_No        SMALLINT,
       Year_of_Sale         SMALLINT NOT NULL,
       Location_Id          INTEGER NOT NULL,
       Beg_Count            NUMBER,
       First_Count          NUMBER,
       Second_Count         NUMBER,
       Date_Planted         DATE,
       Date_Budded          DATE,       Growing_Comm         CHAR(254),
       Est_Sale_Date        DATE,
       Forward_Orders       NUMBER,
       Not_For_Sale         CHAR(1), 
       Future_Stock         CHAR(1), 
       Current_Orders        NUMBER, 
       Added_By              CHAR(8), 
       Added_Date           DATETIME, 
       Changed_By           CHAR(8), 
       Changed_Date        DATETIME, 
       LastEstSaleDate     DATE, 
       Prntd_Chng_Date   DATETIME, 
       Planned         CHAR(1),
	Planning_Reserved NUMBER,
	RFID_Bud_Source_Tag_Id  Char(25)
);
use 1;
alter table
	growing_sale
add
	RFID_Bud_Source_Tag_Id  Char(25);
commit;



******************** STILL TO DO**********

SELECT FORWARD_ORDERS, LOCATION_ID FROM GROWING_SALE WHERE STOCK_ITEM_NO = :1 AND YEAR_OF_SALE = :2
AND (NOT_FOR_SALE = 'N' OR NOT_FOR_SALE IS NULL) AND (EST_SALE_DATE <= SYSDATE OR 
EST_SALE_DATE IS NULL);
********************* TEST THIS INDEX TO SEE WHETHER IT WILL IMPROVE PERFORMANCE AFTER AN
UPDATE STATISTICS ON THIS TABLE IS DONE

CREATE INDEX IEDANIGRSALE
  ON Growing_Sale
(
STOCK_ITEM_NO        ASC,
YEAR_OF_SALE         ASC,
NOT_FOR_SALE         ASC,
EST_SALE_DATE        ASC  
);
****************************8;

CREATE UNIQUE INDEX PKGrowing_Sale
  ON Growing_Sale
(
Year_of_Sale         ASC,
Location_Id          ASC
);

CREATE INDEX IE1GS_Loc
  ON Growing_Sale(
Location_Id          ASC
);

CREATE INDEX IE1GC_SI
  ON Growing_Sale
(
Stock_Item_No        ASC
);
connect stock sysadm dani;
set timeout 1;

CREATE PUBLIC SYNONYM HH_Actions FOR SYSADM.HH_Actions;
CREATE PUBLIC SYNONYM HH_Logs FOR SYSADM.HH_Logs;
CREATE PUBLIC SYNONYM HH_Messages FOR SYSADM.HH_Messages;
CREATE PUBLIC SYNONYM HH_Users FOR SYSADM.HH_Users;
commit;

Create table HH_Actions
(
	Id integer not null,
	name char(8) not null,
	description char(254)
);

CREATE UNIQUE INDEX PKHHActions
  ON HH_Actions
(
	Id      ASC
);

Create table HH_Logs
(
	Id integer not null,
	user_ref integer not null with default,
	action integer not null with default,
	timestamp datetime,
	load_id char(8),
	cust_no integer not null with default,
	load_cust_inst_no integer not null with default,
	stock_item_no integer not null with default,
	new_item_no  integer not null with default,
	order_date_time datetime,
	conf_amt integer
);
	
CREATE UNIQUE INDEX PKHHLogs
  ON HH_Logs
(
	Id      ASC
);

Create table HH_Messages
(
	Id integer not null,
	to_user_ref integer not null with default,
	from_user_ref integer not null with default,
	header char(50),
	body char(254),
	message_read char(1)
);
	
CREATE UNIQUE INDEX PKHHMessages
  ON HH_Messages
(
	Id      ASC
);

Create table HH_Users
(
	id integer not null,
	name char(20)not null,
	access_level  char(8) not null,
	job_loads CHAR(1),
	job_pickups char(1),
	job_late_arrivals char(1),
	job_growers char(1),
	job_shortages char (1),
	job_pots_counts char (1),
	job_pots_locchange char (1),
	last_ip number
)
	;
	
CREATE UNIQUE INDEX PKHHUsers
  ON HH_Users
(
	Id      ASC
);

commit;
	
saaaasaa;	
***************************************************** NOT DONE IN PLAY & LIVE YET ********;

create table Help_Screens
      (Screen_Id            INTEGER NOT NULL,
       Screen_Name          CHAR(60) NOT NULL,
       Comments             LONG VARCHAR
); 

CREATE UNIQUE INDEX PKHelpScreens
  ON Help_Screens
(
Screen_Id      ASC
);

***********************************************************************************;



create table ibm_item_num_conv
      (IBM_Item_No          INTEGER NOT NULL,
       IBM_Tree_Type        CHAR(3) NOT NULL,
       IBM_Tree_Size        SMALLINT not null with default,
       Conv_Cust_Type       CHAR(1) not null with default,      
       LAN_Item_No          SMALLINT,
       Item_Desc            CHAR(60)    
); 

CREATE UNIQUE INDEX PKIBM_Item_Num
  ON IBM_Item_Num_Conv
(IBM_Item_No          ASC,
IBM_Tree_Type        ASC,
IBM_Tree_Size        ASC,
Conv_Cust_Type       ASC
);


CREATE TABLE IBM_ORDERS
      (IBM_Item_No         INTEGER,
       IBM_Size            SMALLINT,
       IBM_Cust_No         INTEGER,
       IBM_Order_Date      INTEGER,
       IBM_Cust_Type       CHAR(1),
       IBM_Priority_Code   SMALLINT,
       IBM_Sale_Type       CHAR(1),
       IBM_No_Subs         SMALLINT,
       IBM_Ord_Quantity    SMALLINT,
       IBM_Tree_Type       CHAR(1),
       IBM_Purchase_Order  CHAR(12),
       IBM_Invoiced_Flag   CHAR(1),
       IBM_Alloc_Flag      CHAR(1),
       IBM_Refer_Order     SMALLINT,
       IBM_Can_Supply      CHAR(1),
       IBM_Source_Code     CHAR(1),
       IBM_Pulled_Flag     CHAR(1),
       IBM_Quality         SMALLINT,
       IBM_Item_Desc       CHAR(39),
       IBM_Trees_Alloc     INTEGER,
       IBM_Rods_Alloc      INTEGER,
       IBM_Std_Alloc       INTEGER,
       IBM_Adv_Alloc       INTEGER,
       IBM_Short_Alloc     INTEGER,
       IBM_Tall_Alloc      INTEGER,
       IBM_Small_Alloc     INTEGER,
       IBM_XL_Alloc        INTEGER,
       IBM_NPA_Sent_Flag   CHAR(1),
       IBM_NPA_Ret_Date    INTEGER,
       IBM_Conf_Flag       CHAR(1),
       IBM_Ack_Flag        CHAR(1),
       IBM_Year            CHAR(2)
);    

CREATE TABLE Inv_No_Register
      (Invoice_No           INTEGER NOT NULL, 
       Invoice_Date         DATE, 
       Status               CHAR(8), 
       Run_Type             CHAR(8),
       Year_Of_Sale         SMALLINT, 
       Load_Id              CHAR(8),
       Cust_No              INTEGER, 
       User_Id              CHAR(8)
);


CREATE UNIQUE INDEX PKInvNoRegister
  ON Inv_No_Register
(
Invoice_No             ASC
);

CREATE UNIQUE INDEX IE1InvDateRegister
  ON Inv_No_Register
(
Invoice_Date             ASC, 
Invoice_No               ASC 
);

; part of the evaluation database stuff, don't change unless you change the local databases
create table
	Item_Evaluation (
		Eval_Id CHAR(30) not null,
		item_id CHAR (8) not null,
		Evaluator CHAR (30),
		Year NUMBER not null,
		Skin_Colour_Type CHAR (20),
		Skin_Over_Colour CHAR (20),
		Backgnd_Colour CHAR (20),
		Colour_Intensity CHAR (20),
		Skin_Lustre CHAR(30),
		Lenticels CHAR(20),
		Russet CHAR(20),
		Russet_Position CHAR(20),
		Stalk_Length CHAR (20),
		Sunburn CHAR (20),
		Crop_Yield CHAR(20),
		Limb_Rub CHAR (20),
		Fruit_Size NUMBER,
		Fruit_Shape CHAR(20),
		Uniform_Ripening CHAR (10),
		Preharvest_Drop CHAR (20),
		Cracking CHAR (10),
		Tree_Vigour CHAR (20),
		Tree_Habit CHAR (20),
		Fruiting_Habit CHAR (30),
		Brix CHAR (30),
		Pressure NUMBER,
		Skin_Thickness CHAR (20),
		Juiciness CHAR (20),
		Flavour CHAR(20),
		Acid_Sugar_Ratio CHAR (20),
		Flesh_Colour CHAR (20),
		Flesh_Texture CHAR (20),
		Bruising CHAR (20),
		Overall_Rating CHAR (20),
		Bacterial_Spot CHAR (20),
		Blossom_Type CHAR (20),
		Blossom_Timing CHAR (20),
		Comments CHAR (200),
		item_eval_pic LONG VARCHAR,
		Maturity_Date DATE,
		Edit_Or_New_Flag CHAR (1),
		Picture_Type   CHAR(25)
		);

create unique index item_eval_index ON
	Item_Evaluation (Eval_Id);



CREATE TABLE Label_Fields
      (Label_Id             CHAR(8) NOT NULL,
       Field_No             SMALLINT NOT NULL,
       Field_Type           CHAR(1),
       Field_Format_Char    CHAR(15),
       Field_Literal        LONG VARCHAR,
       Field_Data_Desc      CHAR(60),
       Field_Picture_File   CHAR(60)
);

CREATE UNIQUE INDEX PKLabel_Fields
  ON Label_Fields
(
Label_Id             ASC,
Field_No             ASC
);

CREATE TABLE Labels
      (Label_Id             CHAR(8) NOT NULL,
       Label_Desc           CHAR(40),
       Supplier_Id          CHAR(8),
       Rootstock_Id         CHAR(8),
       Cultivar_Id          CHAR(8),
       Negative_Id          CHAR(8),
       Picture_File         LONG VARCHAR,
       Stock_on_Hand        NUMBER,
       Order_Quantity       NUMBER,
       Preprinted           CHAR(1),
       Label_Format_Char    LONG VARCHAR
);

CREATE UNIQUE INDEX PKLabel_Id
  ON Labels
(
Label_Id             ASC
);


create table Label_Charge
       (Label_Charge_Code   char(8) NOT NULL,
        Label_Chg_Desc      char(40),
        Label_Chg_comments  char(254)
);

create unique index PKLabel_Charge
   ON Label_Charge
(
Label_Charge_Code    ASC
);


create table label_charges
       (Label_Charge_Code    char(8) NOT NULL,
        Label_Chg_Level      NUMBER NOT NULL,
        Price_Break_Id       char(8)
);
 
create unique index PK_Label_Charges
    ON Label_Charges
(
Label_Charge_Code    ASC,
Label_Chg_Level      ASC
);



    
CREATE TABLE Load
      (Load_Id              CHAR(8) NOT NULL,
       Transport_Id         CHAR(8),
       Shipping_Date        DATE,
       Exp_Return_Date      DATE,
       Load_Primary_Type    CHAR(2),
       Load_Pulled_Flag     CHAR(1),
       Load_Comments        CHAR(254),
       Load_Description     CHAR(40),
       Load_Invoiced_Flag   CHAR(1),
       Load_Driver          CHAR(60),
       Invoice_By_Date      DATETIME,   
	Truck_Stock_Flag   CHAR(1),   
	Auto_Add_Flag   CHAR(1),   
	Auto_Cluster_Flag   CHAR(1),
	Item_Added	CHAR(1),
	HH_Loading     CHAR(1)
);	

connect stockdev sysadm dani;	
set timeout 1;
use 1;

alter table
	Load
Add
	Item_Added	CHAR(1) ;
commit;
update
	load
set
	Auto_Cluster_Flag = 'N';

CREATE UNIQUE INDEX PKLoad_Id
  ON Load
(
Load_Id              ASC
);


CREATE INDEX TONY_LOAD_1
    ON LOAD
(
LOAD_ID              ASC,
SHIPPING_DATE        ASC 
);
CREATE INDEX TONY_LOAD_2
    ON LOAD
(
LOAD_ID              ASC,
SHIPPING_DATE        ASC,
LOAD_PULLED_FLAG     ASC 
);

**** USED
CREATE INDEX TONY_LOAD_3
    ON LOAD
(
LOAD_ID              ASC,
SHIPPING_DATE        ASC,
TRANSPORT_ID         ASC,
LOAD_PULLED_FLAG     ASC 
);
CREATE INDEX TONY_LOAD_4
    ON LOAD
(
LOAD_ID              ASC,
TRANSPORT_ID         ASC,
SHIPPING_DATE        ASC,
LOAD_PRIMARY_TYPE    ASC,
LOAD_PULLED_FLAG     ASC 
);


CREATE TABLE Load_Customers
      (Load_Id              CHAR(8) NOT NULL,
       Sequence_No          SMALLINT NOT NULL,
       Cust_No              INTEGER NOT NULL,
       Deliv_Instructions   CHAR(254),
       Anticip_Del_Date     DATE,
       Anticip_Del_Time     TIME,
       Delivery_Comments    CHAR(254),
       Cust_Cont_Flag       CHAR(1),
       Freight_Code         char(8),
       Load_Order_Type      CHAR(3),
       Deliv_Addr_Type      CHAR(8),
       Cust_Pulled_Flag     CHAR(1),
       Cust_Inv_Flag        CHAR(1), 
       Deliv_Addr_DT        DATETIME, 
       Deliv_Noti_Letter   CHAR(1),
	Load_Cust_Notes  LONG VARCHAR,
	HH_Ready		CHAR(1),
	HH_Label_Ready		CHAR(1),
	HH_Hold		CHAR(1),
	HH_Pulled_By	CHAR(50),
	HH_Item_Added		CHAR(1),
	WRAP_CUST_ORDER 	CHAR(1),
	HH_Loaded	CHAR(1),
	HH_Delivered	CHAR(1),
	HH_Delivered_DT	DateTime,
	HH_Delivered_BY	Char(10)
);
connect live graham graham;
select
	* from load_customers;
alter table
	load_customers
add
	
	HH_Delivered_DT	DateTime,
	HH_Delivered_BY	Char(10);
commit;
connect stock sysadm dani;
connect stockdev sysadm dani;
set timeout 1;
select
	*
from
	stock_item;



CREATE INDEX IE3LoadCustDelAddr 
  ON Load_Customers
(
Cust_No              ASC,
Deliv_Addr_DT        ASC
);

CREATE UNIQUE INDEX PKLoad_Cust
  ON Load_Customers
(
Load_Id              ASC,
Cust_No              ASC
);

CREATE INDEX IE1Load_Cust_No
  ON Load_Customers
(
Cust_No              ASC
);

create index ie2LC_Freight_code
  on load_customers
(
freight_code         asc
);
**** USED****
CREATE INDEX TONY_LOAD_CUST_1
    ON LOAD_CUSTOMERS
(
LOAD_ID              ASC 
);
**** USED
CREATE INDEX TONY_LOAD_CUST_2
    ON LOAD_CUSTOMERS
(
LOAD_ID              ASC,
CUST_NO              ASC 
);

CREATE TABLE Location
      (Location_Id          INTEGER NOT NULL,
       Farm_Name            CHAR(8) NOT NULL,
       Row#                 SMALLINT NOT NULL,
       Seq#                 SMALLINT NOT NULL,
       Loc_Added_By         CHAR(8),
       Loc_Added_Date       DATE
);

CREATE UNIQUE INDEX PKLoc_Id
  ON Location
(
Location_Id          ASC
);

CREATE UNIQUE INDEX AKLoc_Farm_Row_Seq
  ON Location
(
Farm_Name            ASC,
Row#                 ASC,
Seq#                 ASC
);




CREATE TABLE Mailing_List
      (Time_Stamp           DATETIME NOT NULL,
       Date_Added           DATE     NOT NULL,
       Name                 CHAR(60) NOT NULL,
       Bus_Name             CHAR(60),
       Cust_Type            CHAR(3) NOT NULL,
       Address_Type         CHAR(8) NOT NULL,
       Address_1            CHAR(30) NOT NULL,            
       Address_2            CHAR(30),
       Suburb               CHAR(24) NOT NULL,
       State                CHAR(3) NOT NULL,
       Postcode             CHAR(4) NOT NULL,
       Area_Code_Phone      CHAR(3),
       Phone_No             CHAR(8),
       Area_Code_Fax        CHAR(3),
       Fax_No               CHAR(8),
       Area_Code_Mobile        CHAR(4),
       Mobile_Number               CHAR(8),
       Contact_Title        CHAR(6),
       Contact_Given_Name   CHAR(30),
       Contact_Surname      CHAR(30),
       Contact_Position      CHAR(30),
       No_Mail_Flag         CHAR(1),    
       Advertising          CHAR(60),
       Subject              CHAR(60), 
       Nursery_Name         CHAR(40),
       Nursery_Suburb       CHAR(40),
       Comments             CHAR(254), 
       Last_Name_First   CHAR(60) 
);


CREATE UNIQUE INDEX PKMListTimeStamp
  ON MAILING_LIST
(
TIME_STAMP              ASC
);

CREATE INDEX ML_DATE_ADDED
  ON MAILING_LIST
(
DATE_ADDED          ASC
);

CREATE INDEX ML_ADVERTISING
  ON MAILING_LIST
(
ADVERTISING          ASC
);


CREATE INDEX ML_STATE
  ON MAILING_LIST
(
STATE          ASC
);

CREATE INDEX ML_POSTCODE
  ON MAILING_LIST
(
POSTCODE         ASC
);

CREATE INDEX ML_SUBURB
  ON MAILING_LIST
(
SUBURB         ASC
);

CREATE INDEX ML_NAME
  ON MAILING_LIST
(
NAME        ASC
);

CREATE INDEX ML_CUST_TYPE
  ON MAILING_LIST
(
CUST_TYPE        ASC
);


CREATE INDEX ML_PHONE_NO
  ON MAILING_LIST
(
PHONE_NO        ASC
);

CREATE INDEX ML_SUBJECT
  ON MAILING_LIST
(
SUBJECT        ASC
);


CREATE TABLE MODULE_ITEMS
      (Item_Added_DT           DATETIME NOT NULL,
       Parent_Item_No 	INTEGER NOT NULL,
       Child_Item_No 	INTEGER NOT NULL,
	Child_Quantity	INTEGER NOT NULL
);

CREATE UNIQUE INDEX PKMODULE
  ON module_items
(
Parent_Item_No             ASC,
Child_Item_No	ASC
);


CREATE TABLE Meet_Address
      (Meet_Id              CHAR(8) NOT NULL,
       Meet_Address_1       CHAR(30),
       Meet_Address_2       CHAR(30),
       Meet_Suburb          CHAR(24),
       Meet_Postcode        CHAR(4),
       Meet_State           CHAR(3),
       Meet_Country         CHAR(30),
       Meet_Area_Code       CHAR(3),
       Meet_Phone_No        CHAR(8),
       Meet_Area_Code_Fax   CHAR(3),
       Meet_Fax_No          CHAR(8),
       Meet_Comments        CHAR(254),
       Meet_Added_By        CHAR(8)
);


CREATE UNIQUE INDEX PKMeet_Id
  ON Meet_Address
(
Meet_Id              ASC
);


CREATE TABLE Missed_Sales
      (MS_DateTime_Stamp    DATETIME NOT NULL,
       MS_Year_Sale         SMALLINT,
       Customer_No          INTEGER,
       MS_No_of_trees       INTEGER,
       Date_Declined        DATE,
       MS_Date              DATE,
       MS_Comments          CHAR(254),
       MS_Cont_Name         CHAR(60),
       MS_Cont_Phone        CHAR(10),
       MS_Addnl_Phone       CHAR(10),
       MS_Stock_Not_Grown   CHAR(60),
       MS_Cultivar_Id       CHAR(8),
       MS_Rootstock_Pref    CHAR(60)
);

CREATE UNIQUE INDEX PKMissed_Sales
  ON Missed_Sales
(
MS_DateTime_Stamp    ASC
);


CREATE TABLE Monthly_AR
      (Month_Sysdatetime    DATETIME NOT NULL,
       Monthly_Month        SMALLINT,
       Monthly_Year         SMALLINT,
       Total_AR_Balance     DECIMAL(13,2),
       Current_AR           DECIMAL(13,2),
       Thirty_Day_AR        DECIMAL(13,2),
       Sixty_Day_AR         DECIMAL(13,2),
       Ninety_Day_AR        DECIMAL(13,2),
       Total_Invoices       DECIMAL(13,2),
       Cash_Received        DECIMAL(13,2),
       Credit_Notes_Issue   DECIMAL(13,2),
       Deposits_Used        DECIMAL(13,2),
       Service_Charges      DECIMAL(13,2),
       DR_Journals          DECIMAL(13,2),
       Refunds              DECIMAL(13,2),
       Bank_Charges         DECIMAL(13,2),
       Misc_GL_Debits       DECIMAL(13,2),
       Svc_Chg_Writeoff     DECIMAL(13,2),
       CR_Journals          DECIMAL(13,2),
       Writeoffs            DECIMAL(13,2),
       Credit_Types         DECIMAL(13,2),
       Discounts            DECIMAL(13,2),
       Coop_Advertising     DECIMAL(13,2),
       Misc_GL_Credits      DECIMAL(13,2),
       Deposits_Requested   DECIMAL(13,2),
       YTD_Total_Invoices   DECIMAL(13,2),
       YTD_Cash_Received    DECIMAL(13,2),
       YTD_Credit_Notes     DECIMAL(13,2),
       YTD_Deposits_Used    DECIMAL(13,2),
       YTD_Service_Charge   DECIMAL(13,2),
       YTD_DR_Journals      DECIMAL(13,2),
       YTD_Refunds          DECIMAL(13,2),
       YTD_Bank_Charges     DECIMAL(13,2),
       YTD_Misc_GL_Debits   DECIMAL(13,2),
       YTD_Svc_Chg_WrOff    DECIMAL(13,2),
       YTD_CR_Journals      DECIMAL(13,2),
       YTD_Writeoffs        DECIMAL(13,2),
       YTD_Credit_Types     DECIMAL(13,2),
       YTD_Discounts        DECIMAL(13,2),
       YTD_Coop_Advertis    DECIMAL(13,2),
       YTD_Misc_GL_Credit   DECIMAL(13,2),
       YTD_Dep_Requested    DECIMAL(13,2)
);


CREATE UNIQUE INDEX PKMonthAR_Sysdate
  ON Monthly_AR
(
Month_Sysdatetime    ASC
);


CREATE TABLE Outstand_Deposit
      (Dep_User_Id          CHAR(8) NOT NULL,
       Dep_Sysdatetime      DATETIME NOT NULL,
       Cust_No              INTEGER,
       Receipt_User_Id      CHAR(8),
       Rcpt_Sysdatetime     DATETIME,
       Dep_Amount_Reqd      DECIMAL(8,2),
       Dep_Amount_Paid      DECIMAL(8,2),
       Deposit_Paid_Date    DATE,
       Dep_Date_Entered     DATE,
       Dep_Entered_By       CHAR(8),
       Dep_Year_Of_Sale     SMALLINT,
       Dep_Comments         CHAR(254),
       Dep_Date_Reqd        DATETIME  
);





CREATE UNIQUE INDEX PKOutDepUser_Date
  ON Outstand_Deposit
(
Dep_User_Id          ASC,
Dep_Sysdatetime      ASC
);


CREATE TABLE Paint_Master
      (Paint_Id             CHAR(8) NOT NULL,
       Paint_Desc         CHAR(60), 
       Paint_Colour       CHAR(10)
);


CREATE UNIQUE INDEX PKPaint_Id
  ON Paint_Master
(
Paint_Id             ASC
);

CREATE TABLE Pallet_Contents
      (Content_Datetime     DATETIME NOT NULL,
       Item_No              SMALLINT NOT NULL,
       Pallet_Count         SMALLINT,
	Advanced_Flag	CHAR(1),
	Pallet_Sequence  SMALLINT
);
connect stock sysadm dani;
set timeout 1;
alter table pallet_contents
add
	Pallet_Sequence  SMALLINT;
alter table pallet_contents
foreign key
	( Content_Datetime )
references
	Graded_Pallets
on delete
	cascade;
commit;
use 1;
use 2;
drop index PKPallet;
CREATE INDEX PKPallet
  ON Pallet_Contents
(
Content_Datetime          ASC
);
commit;
connect stock sysadm dani;
set timeout 1;
drop table pallet_contents;
select
	*
from
	sysindexes
where
	name like '%PALLET%';
drop index pkgradedpallets;
select
	*
from
	pallet_contents;

CREATE INDEX IE1Item
  ON Pallet_Contents
(
Item_No           ASC
);




CREATE TABLE Pollination
      (Cult_Id              CHAR(8) NOT NULL,
       Poll_Cult_Id         CHAR(8) NOT NULL,
       Poll_Comments        CHAR(254)
);
CREATE UNIQUE INDEX PKPollination
  ON Pollination
(
Cult_Id              ASC,
Poll_Cult_Id         ASC
);



create table postcode_master
      (Postcode             CHAR(4) NOT NULL,
       Postcode_Town        char(60),
       Postcode_State       char(8)
);



CREATE UNIQUE INDEX PKPCODE
  ON POSTCODE_MASTER
(
POSTCODE        ASC,
POSTCODE_TOWN   ASC
);

CREATE INDEX PKPcode_Master
  ON Postcode_Master
(
Postcode        ASC
);

CREATE INDEX IEPostTown
  ON Postcode_Master
(
Postcode_Town            ASC
);   


CREATE TABLE Postcodes
      (Postcode_From        CHAR(4) NOT NULL,
       Region_Id            CHAR(8),
       Postcode_To          CHAR(4),
       PC_Comments          CHAR(254)
);


CREATE UNIQUE INDEX PKPostcode
  ON Postcodes(
Postcode_From        ASC
);

CREATE INDEX IEPostRegion  ON Postcodes
(
Region_Id            ASC
);




CREATE INDEX IEJJPostcode 
  ON Postcodes
(
Postcode_From ASC,
Postcode_To   ASC,
Region_Id     ASC
);

connect stockdev sysadm dani;
set timeout 1;

CREATE TABLE Potting_Mix
      (Mix_Id        CHAR(8) NOT NULL,
	Mix_Desc   CHAR(60),
	Mix_Contents CHAR(254),
	Mix_Cost_Per_Metre NUMBER
);


CREATE UNIQUE INDEX PKPottingMix
  ON Potting_Mix
(
	Mix_Id       ASC
);


CREATE TABLE Price_Break
      (Price_Break_Id       CHAR(8) NOT NULL,
       Amount               DECIMAL(8,2),
       No_trees             NUMBER,
       Price_Brk_Comments   CHAR(254)
);

CREATE UNIQUE INDEX PKPrice_Break
  ON Price_Break
(
Price_Break_Id       ASC
);

CONNECT STKlocal SYSADM DANI;
SET TIMEOUT 1;
CREATE TABLE Price_Group
      (Price_Group_Id       CHAR(2) NOT NULL,
       Amount               DECIMAL(8,2),
       Faction             DECIMAL(8,2),
	Ads             DECIMAL(8,2),
       Price_Grp_Desc   CHAR(254)
);

CREATE UNIQUE INDEX PKPrice_Group
  ON Price_Group
(
Price_Group_Id       ASC
);


CREATE TABLE Group_Price
      (Price_Group_Id       CHAR(2) NOT NULL,
	Tree_type		 CHAR(8) NOT NULL,
       Price               DECIMAL(8,2)

);


CREATE UNIQUE INDEX PKGroup_Price
  ON Group_Price
(
Price_Group_Id       ASC,
TREE_TYPE			ASC
);
COMMIT;

alter table Prod_Royalty_Class
add Royalty_percent float;
commit;

drop table prod_royalty_class;
CREATE TABLE Prod_Royalty_Class
      (Prod_Roy_Class_Id       CHAR(1) NOT NULL,
	Royalty_percent    float,
       Class_Description    CHAR(40) NOT NULL, 
       Royalty_Company    CHAR(1)
);


CREATE UNIQUE INDEX PKProdClass
  ON Prod_Royalty_Class
(
Prod_Roy_Class_Id       ASC
);

CREATE TABLE Prohibition
      (Prohib_Date_Time     DATETIME NOT NULL,
       Prohib_Entered_By    CHAR(8) NOT NULL,
       Cult_Id              CHAR(8),
       Root_Id              CHAR(8),
       State_Prohib_In      CHAR(3),
       Prohib_Who_By        CHAR(254),
       Prohib_Reason        CHAR(254),
       Prohib_Comments      CHAR(254)
);

CREATE UNIQUE INDEX PKProhib
  ON Prohibition
(
Prohib_Date_Time     ASC,
Prohib_Entered_By    ASC
);

CREATE INDEX IE1Prohib_Cult
  ON Prohibition
(
Cult_Id              ASC
);


CREATE INDEX IE2Prohib_Root
  ON Prohibition
(
Root_Id              ASC
);


CREATE TABLE Promo
      (Promo_Id             CHAR(8) NOT NULL,
       Promo_Desc           CHAR(40),
       Supplier_Id          CHAR(8),
       Negative_Id          CHAR(8),
       Promo_Comments       CHAR(254),
       Promo_Base_Price     DECIMAL(8,2),
       Freight_Code         CHAR(8),
       Free_Over_Count      INTEGER,
       GL_Account_Code      char(8),
       Promo_Base_Percent   REAL      ,
       Promo_barcode        CHAR(13)
);



CREATE UNIQUE INDEX PKPromo_Id
  ON Promo
(
Promo_Id             ASC
);


CREATE TABLE Quotation
      (User_Id              CHAR(8) NOT NULL,
       Sys_Date_Time        DATETIME NOT NULL, 
       Cust_No              INTEGER, 
       Stock_Item_No        SMALLINT, 
       Year_Of_Sale         SMALLINT, 
       Contract_Price       DECIMAL(8,2),
	Supplier_Id		CHAR(10)
);

CREATE UNIQUE INDEX PKQuotation
  ON Quotation
(
User_Id              ASC,
Sys_Date_Time        ASC,
stock_item_no  ASC,
supplier_id asc,
year_of_sale asc
);

CREATE INDEX IEQuotationMain
  ON Quotation
(
Cust_No              ASC,
Stock_Item_No        ASC,
Year_Of_Sale         ASC
);

CREATE INDEX IEQuotationSec
  ON Quotation
(
Stock_Item_No        ASC, 
Year_Of_Sale         ASC,
Cust_No              ASC
);

CREATE TABLE Region
      (Region_Id            CHAR(8) NOT NULL,
       Region_Desc          CHAR(40),
       Freight_Code         CHAR(8),
	Maturity_Reference	INTEGER
);


CREATE UNIQUE INDEX PKRegion_Id
  ON Region
(
Region_Id            ASC
);


CREATE TABLE Region_Load
      (Region_Id            CHAR(8) NOT NULL,
       Load_Id              CHAR(8) NOT NULL
);

CREATE UNIQUE INDEX PKRegion_Load
  ON Region_Load
(
Region_Id            ASC,
Load_Id              ASC
);

CREATE INDEX IERL_Load
  ON Region_Load
(
Load_Id              ASC
);


CREATE TABLE Region_Meet
      (Region_Id            CHAR(8) NOT NULL,
       Meet_Id              CHAR(8) NOT NULL
);

CREATE INDEX PKRegion_Meet
  ON Region_Meet
(
Region_Id            ASC,
Meet_Id              ASC
);


CREATE INDEX IERegionMeet_Meet
  ON Region_Meet
(
Meet_Id              ASC
);

Drop table reg_transp_chg;

create table Reg_Transp_Chg
      (Region_Id            CHAR(8) NOT NULL,
       Transport_Id         CHAR(8) NOT NULL,
       Freight_Code         CHAR(8),
	Minimum_Charge		NUMBER
);

create unique index PKReg_Transp_Chg
   ON Reg_Transp_Chg
(
Region_Id          ASC,
Transport_Id       ASC
);
commit;

create index IE1Freight_Code
    ON Reg_Transp_Chg
(
Freight_Code       ASC
);

        
CREATE TABLE Rootstock
      (Root_Id              CHAR(8) NOT NULL,
       PVR_No               CHAR(10),
       Root_desc            CHAR(40),
       Rt_Vfree_Flag        CHAR(1),
       Rt_Not_sale_Flag     CHAR(1),
       Bud_disc_perc        SMALLINT,
       Rt_Non_Prop_Flag     CHAR(1),
       Rt_Vigour            CHAR(15),
       Rt_Synonyms          CHAR(254),
       Rt_Origin            CHAR(254),
       Rt_Parentage         CHAR(254),
       Rt_Transplanting     CHAR(60),
       Root_Mod_By          CHAR(8),
       Root_Mod_Date        DATE,       Root_Comm            CHAR(254),
       RT_Label_Line_1      CHAR(80),
       RT_Label_Line_2      CHAR(80),
       RT_Label_Line_3      CHAR(80),
       RT_Label_Line_4      CHAR(80),
       RT_Label_Line_5      CHAR(80),
       Rt_Size              CHAR(254),
       Rt_Susceptible       CHAR(254),
       Rt_Precocity         CHAR(254),
       Rt_Support           CHAR(254),
       Rt_Suckering         CHAR(254),
       Rt_Tolerance         CHAR(254),
       Rt_Compatability     CHAR(254),       Rt_Anchorage         CHAR(254),
       Rt_Disorder          CHAR(254),
       Rt_Site_Used         CHAR(254),
       Rt_LL1_OffSet        NUMBER,
       Rt_LL2_OffSet        NUMBER,
       Rt_LL3_OffSet        NUMBER,
       Rt_LL4_OffSet        NUMBER,
       Rt_LL5_OffSet        NUMBER,
       First_Sale_date      Date,
       Rt_On_Trial_Flag     CHAR(1),   
	Price_Group CHAR(1)       
);




CREATE UNIQUE INDEX PKRoot_Id
  ON Rootstock
(Root_Id              ASC
);



CREATE TABLE Rtstck_Paint_Used
      (Rootstock_Id         CHAR(8) NOT NULL,
       Rt_Year_Used         SMALLINT NOT NULL,
       Rt_Paint_Number      SMALLINT NOT NULL,
       Paint_Id             CHAR(8)
);

*** the following inserts into the rtstock_paint_used table the same values as the prior year - use each year but change the year figures;

select 
 'insert into Rtstck_Paint_Used  (Rt_year_Used, Rt_Paint_Number, Rootstock_Id, Paint_id)
 VALUES
 (1997, '||Rt_paint_Number||','||'''' ||Rootstock_Id||''''||', '||'''' ||Paint_id||''''||');'
 from Rtstck_paint_used where Rt_Year_Used = 96;
commit;


CREATE UNIQUE INDEX PKRt_Paint_Used
  ON Rtstck_Paint_Used
(
Rootstock_Id         ASC,
Rt_Year_Used         ASC,
Rt_Paint_Number      ASC
);

CREATE TABLE Royalty_Owner
      (Royalty_Owner_Id     CHAR(8) NOT NULL,
       Roy_Bus_Name         CHAR(60) NOT NULL,
       Roy_Contact_Person   CHAR(40),
       Mail_Add_1           CHAR(30),
       Mail_Add_2           CHAR(30),
       Mail_Add_3           CHAR(30),
       Mailing_Suburb       CHAR(24),
       Mailing_State        CHAR(3),
       Mailing_Postcode     CHAR(10),
       Mailing_Country      CHAR(30),
       Roy_Area_Code        CHAR(5),
       Roy_Phone_No         CHAR(10),
       Roy_Fax_No           CHAR(10),
       Roy_Comments         CHAR(254)   
);

CREATE UNIQUE INDEX PKRoy_Own_Id
  ON Royalty_Owner
(
Royalty_Owner_Id     ASC
);



CREATE TABLE Royalty_Payable
      (Royalty_Owner_Id     CHAR(8) NOT NULL,
       Roy_Instance#        SMALLINT NOT NULL,
       Rootstock_Id         CHAR(8),
       Cultivar_Id          CHAR(8),
       Payment_Due_Date     DATE,
       Deduct_Tax_Flag      CHAR(1),
       Currency_Payable     CHAR(10),
       Currency_tree_calc   CHAR(10),
       Amount_Payable       DECIMAL(6,2),
       Percentage_Payable   REAL,
       Price_brk_flag       CHAR(1),
       Min_Total_Payable    DECIMAL(6,2),
       Roy_Expiry_Date      DATE,
       Payable_Comments     CHAR(254),
       Total_Royalty_Due    decimal(10,2) NOT NULL WITH DEFAULT
       Currency_Roy_Amt     DECIMAL(6,2),
       Paid_upto_Date       DATE,
       Due_Every_months     INTEGER
);

CREATE UNIQUE INDEX PKRoyalty_Payable
  ON Royalty_Payable
(
Royalty_Owner_Id     ASC,
Roy_Instance#        ASC
);




CREATE INDEX IERoyPay_Root
  ON Royalty_Payable
(
Rootstock_Id         ASC
);

CREATE INDEX IERoyPay_Cult
  ON Royalty_Payable
(
Cultivar_Id          ASC
);

****************************************************************************************************************************************;
changing royalties_paid table so that inv_no is char like transaction and trans_history;
*****************************************************************************************************************************************;
THIS LOT IS THE ORIGINAL STUFF, NEXT LOT IS NEW BIT;
connect stock sysadm dani;
CREATE TABLE Royalties_Paid
      (Cult_Root_Type       CHAR(1) NOT NULL,
       Cult_Root_Desc       CHAR(60) NOT NULL,
       Cust_Name            CHAR(60) NOT NULL,
       Royalty_Owner_Id     CHAR(8) NOT NULL,      
       Paid_Date_Time       DATETIME NOT NULL,   
       Cult_Root_Id         CHAR(8),       
       Inv_Date             DATE,       
       Conf_Amt             SMALLINT,
       Cust_No              INTEGER,
       Sale_Cat             CHAR(2),
       Tree_Type            CHAR(8),
       Cult_Desc            CHAR(60),
       Root_Desc            CHAR(60),
       Roy_Per_Item         DECIMAL(6,2),
       Stock_Item_No        SMALLINT,
       Amt_Paid             DECIMAL(8,2), 
       Order_Date_Time      DATETIME, 
       Tree_Type_Desc       CHAR(40),
       Inv_No               CHAR(20)  NOT NULL        
);

CREATE UNIQUE INDEX PKRoys_Paid
  ON Royalties_Paid
(
Cult_Root_Type         DESC,
Cult_Root_Desc         ASC,
Cust_Name              ASC,
Inv_No                 ASC,
Royalty_Owner_Id       ASC,
Paid_Date_Time         ASC 
);

CREATE UNIQUE INDEX PKRoys_Paid_Audit
  ON Royalties_Paid
(
Cult_Root_Type         DESC,
Cult_Root_Desc asc,
Cult_Desc         ASC,
Root_Desc              ASC,
Inv_No                 ASC,
Paid_Date_Time         ASC 
);
commit;



CREATE INDEX IERoyPaid_InvDate
  ON Royalties_Paid
(
Inv_Date     ASC
);

CREATE INDEX IERoyPaid_OrdDT 
  ON Royalties_Paid 
( 
  Cust_No ASC, 
  Order_Date_Time ASC 
);
commit;

ALTER TABLE Royalties_Paid
       PRIMARY KEY 
(Cult_Root_Type,Cult_Root_Desc,Cust_Name,Inv_No,Royalty_Owner_Id,Paid_Date_Time)
;
CREATE PUBLIC SYNONYM ROYALTIES_PAID FOR SYSADM.ROYALTIES_PAID;
commit;

*************************************************************************************************************************************;

CREATE TABLE Roy_Pay_Price_Brk
      (Royalty_Owner_Id     CHAR(8) NOT NULL,
       Roy_Instance_No      SMALLINT NOT NULL,
       Roy_Break_Level      SMALLINT NOT NULL,
       Price_Break_Id       CHAR(8)
);

CREATE UNIQUE INDEX PKRoy_Pay_Pr_Brk
  ON Roy_Pay_Price_Brk
(
Royalty_Owner_Id     ASC,
Roy_Instance_No      ASC,
Roy_Break_Level      ASC
);


CREATE TABLE Schedule
      (Performed_Sys_DT     DATETIME NOT NULL,
       Activity_Desc        CHAR(20) NOT NULL,
       Status               CHAR(10),
       Next_DateTime        DATETIME,             
       User_Id              CHAR(8)
);

CREATE UNIQUE INDEX PKSchedule
  ON Schedule
(
Performed_Sys_DT   ASC,
Activity_Desc      ASC
);

CREATE INDEX NextSchedule
  ON Schedule
(
Next_DateTime       ASC
);

connect stock sysadm dani;
alter table
	scion_evaluation
add
	RFID			CHAR(50);	
commit;
use 1;
use 2;
alter table
	scion_evaluation
drop
	Virus_Test_Id;	


CREATE TABLE Scion_Evaluation
      (Stock_Item_No        SMALLINT NOT NULL,
       Location_Id          INTEGER,
       Evaluation_Count     NUMBER,
       Scion_Eval_DT        DATETIME NOT NULL,
       Eval_Comments        CHAR(254),    
       Last_Index_Date      DATETIME,
	Virus_Test_Id		NUMBER,
	Count		INTEGER,
	RFID			CHAR(50)
);

CREATE UNIQUE INDEX PKScion_Eval
  ON Scion_Evaluation
(
Location_Id          ASC,
Scion_Eval_DT        ASC
);


CREATE TABLE Seq_No_Source
	(Source_ID           CHAR(40)  NOT NULL,
	Next_Value          INTEGER
);


CREATE UNIQUE INDEX PK_Seq_No
  ON Seq_No_Source
(
Source_Id              ASC
);

ALTER TABLE Seq_No_Source
       PRIMARY KEY (Source_Id)
;


**** insert into this table whenever a table requires a seq no;
INSERT INTO SEQ_NO_SOURCE (SOURCE_ID, NEXT_VALUE) VALUES ('CUST_LETTER', 1);
COMMIT;


CREATE TABLE Stock_Item
      (Item_No              SMALLINT NOT NULL,
       Tree_Type            CHAR(8),
       Rootstock_Id         CHAR(8),
       Cultivar_Id          CHAR(8),
       Bud_Disc_perc        SMALLINT,
       First_Sec_Disc_Per   SMALLINT,
       Base_Price           DECIMAL(6,2),
       Generic_Stock_Item   CHAR(1),    
       Item_Added_By        CHAR(8),
       Item_Added_Date      DATE, 
       Sec_Gr_Disc_Per      SMALLINT,
       GC_Reserve           FLOAT,
       Price_Update         char(1),
       GL_Account_Code      char(8),
       Variety_Type         char(1),
       Variety              char(40),
       Cult_desc            char(60),
       Root_Desc            char(40),
       CV_Not_Sale_Flag     char(1),
       CV_Non_Prop_Flag     char(1),       
       Rt_Not_Sale_Flag     char(1),
       Rt_Non_Prop_Flag     char(1),
       Changed_By           char(8),
       Changed_Date         datetime, 
       Tree_Type_Desc       CHAR(40), 
       Type_Description     CHAR(40), 
       Stock_Type           char(1), 
       Unit_Size            REAL, 
       Top_Worked       CHAR(1),
	SPECIAL_PRICE CHAR (1),
	PRICE_GROUP CHAR (2),
	MODULE_PARENT	CHAR(1),
	PROD_ROYALTY CHAR(1),
	CV_ON_TRIAL_FLAG	 CHAR(1),
	RT_ON_TRIAL_FLAG  CHAR(1),
	bare_root_potted CHAR(1),
	Web_Order_Form  CHAR(1),
	Field_Count_2nd_Per  INTEGER,
	Field_Count_3rd_Per INTEGER;
);

connect live sysadm dani;
set timeout 1;

alter table
	stock_item
add
	Field_Count_2nd_Per  INTEGER,
	Field_Count_3rd_Per INTEGER;
commit;
update stock_item
set Field_Count_2nd_Per = 20,
Field_Count_3rd_Per = 5;

CREATE INDEX IESI_1
  ON Stock_Item
(
variety_type            ASC,
variety                 ASC,
cult_desc               ASC     
);



CREATE INDEX IESI_2
  ON Stock_Item
(
variety_type            ASC,
variety                 ASC,
cult_desc               ASC,
rootstock_id            ASC       
);

CREATE INDEX IESI_3
  ON Stock_Item
(
variety_type            ASC,
variety                 ASC,
generic_stock_item      ASC,
cult_desc               ASC,
rootstock_id            ASC       
);

CREATE INDEX IESI_4
  ON Stock_Item
(
cult_desc               ASC,
rootstock_id            ASC,
Tree_type               ASC         
);

CREATE INDEX IESI_5
  ON Stock_Item
(
@UPPER(Variety)            ASC
);

CREATE INDEX IESI_6
  ON Stock_Item
(
@UPPER(Cult_desc)            ASC
);

CREATE INDEX IESI_7  ON Stock_Item
(
  Variety_Type     ASC);

CREATE INDEX IESI_8
   ON Stock_Item
(VARIETY_TYPE    ASC,
@UPPER (VARIETY) ASC
);

CREATE INDEX IESI_10
  ON Stock_Item
(
variety_type            ASC,
variety                 ASC,
@UPPER(cult_desc)       ASC,
rootstock_id            ASC,
tree_type       
);
commit;

***** this index not done stock yet ****************8;
***** DONT PUT THE FOLLOWING INDEX IN - ______
CREATE INDEX IESI_11
  ON Stock_Item
(
variety_type            ASC,
@UPPER(variety)         ASC,
@UPPER(cult_desc)       ASC,
@UPPER(root_desc)       ASC,
tree_type       
);

*********** NO TO THE PREVIOUS INDEX - LEAVING IN SO THAT WE DONT PUT IT IN THINKING THAT IT WILL
HELP THINGS ALONG - ACTUALLY SLOWED THE QUERY DOWN BY USING THE INDEX INSTEAD OF A TABLE SCAN 


create index IESIGL_Code
  ON STOCK_ITEM
(
GL_ACCOUNT_CODE         ASC
);

CREATE UNIQUE INDEX PK_Item_No
  ON Stock_Item
(
Item_No              ASC
);

CREATE INDEX IESI_TrType
  ON Stock_Item
(
Tree_Type            ASC
);

CREATE INDEX IESI_Root
  ON Stock_Item
(
Rootstock_Id         ASC
);

CREATE INDEX IESI_Cult
  ON Stock_Item
(
Cultivar_Id          ASC
);
****USED
CREATE INDEX Jan_StockItm
  ON Stock_Item
(
Item_No          ASC,
Tree_Type        ASC,
Cultivar_Id      ASC,
Rootstock_Id     ASC
);
CREATE INDEX TONY_STOCK_1
    ON STOCK_ITEM
(
TREE_TYPE              ASC,
CULTIVAR_ID            ASC  
);
CREATE INDEX TONY_STOCK_ITEM_1
    ON STOCK_ITEM
(
CULTIVAR_ID            ASC  
);
***USED
CREATE INDEX TONY_STOCK_ITEM_2
    ON STOCK_ITEM
(
ITEM_NO                ASC,
CULTIVAR_ID            ASC  
);

CREATE INDEX IESISTKTYPE
ON STOCK_ITEM
(
  ITEM_NO ASC, 
  STOCK_TYPE ASC,
  BASE_PRICE
);


CREATE VIEW SI_SALE_VIEW 
( YEAR_OF_SALE, 
  TREE_TYPE,
  CULTIVAR_ID, 
  CULT_DESC, 
  CV_NOT_SALE_FLAG,
  CV_NON_PROP_FLAG, 
  ROOTSTOCK_ID, 
  RT_NOT_SALE_FLAG,
  RT_NON_PROP_FLAG, 
  SOLD_OUT_FLAG, 
  AMT_GROWING, 
  AMT_GRADED,
  TOT_AVAIL, 
  AMT_ON_ORDER,
  STOCK_ITEM_NO) AS
SELECT 
  STOCK_ITEM_SALE.YEAR_OF_SALE, 
  STOCK_ITEM.TREE_TYPE, 
  STOCK_ITEM.CULTIVAR_ID,
  CULTIVAR.CULT_DESC, 
  CULTIVAR.CV_NOT_SALE_FLAG,
  CULTIVAR.CV_NON_PROP_FLAG, 
  STOCK_ITEM.ROOTSTOCK_ID, 
  ROOTSTOCK.RT_NOT_SALE_FLAG,
  ROOTSTOCK.RT_NON_PROP_FLAG, 
  STOCK_ITEM_SALE.SOLD_OUT_FLAG, 
  STOCK_ITEM_SALE.AMT_GROWING, 
  STOCK_ITEM_SALE.AMT_GRADED,
  STOCK_ITEM_SALE.TOT_AVAIL, 
  STOCK_ITEM_SALE.AMT_ON_ORDER, 
  STOCK_ITEM_SALE.STOCK_ITEM_NO 
FROM 
  STOCK_ITEM_SALE, 
  STOCK_ITEM, 
  CULTIVAR, 
  ROOTSTOCK 
WHERE  
  STOCK_ITEM_SALE.STOCK_ITEM_NO = STOCK_ITEM.ITEM_NO AND
  STOCK_ITEM.CULTIVAR_ID = CULTIVAR.CULT_ID(+) AND 
  STOCK_ITEM.ROOTSTOCK_ID = ROOTSTOCK.ROOT_ID  
UNION 
SELECT 
  STOCK_ITEM_SALE.YEAR_OF_SALE, 
  STOCK_ITEM.TREE_TYPE, 
  STOCK_ITEM.CULTIVAR_ID,
  CULTIVAR.CULT_DESC, 
  CULTIVAR.CV_NOT_SALE_FLAG, 
  CULTIVAR.CV_NON_PROP_FLAG,
  STOCK_ITEM.ROOTSTOCK_ID, 
  ROOTSTOCK.RT_NOT_SALE_FLAG,
  ROOTSTOCK.RT_NON_PROP_FLAG, 
  STOCK_ITEM_SALE.SOLD_OUT_FLAG, 
  STOCK_ITEM_SALE.AMT_GROWING, 
  STOCK_ITEM_SALE.AMT_GRADED, 
  STOCK_ITEM_SALE.TOT_AVAIL, 
  STOCK_ITEM_SALE.AMT_ON_ORDER, 
  STOCK_ITEM_SALE.STOCK_ITEM_NO 
FROM 
  STOCK_ITEM_SALE, 
  STOCK_ITEM, 
  CULTIVAR, 
  ROOTSTOCK 
WHERE  
  STOCK_ITEM_SALE.STOCK_ITEM_NO = STOCK_ITEM.ITEM_NO AND
  STOCK_ITEM.CULTIVAR_ID = CULTIVAR.CULT_ID AND 
  STOCK_ITEM.ROOTSTOCK_ID = ROOTSTOCK.ROOT_ID(+);


CREATE TABLE Stock_Item_Sale
      (Stock_Item_No        SMALLINT NOT NULL,
       Year_of_Sale         SMALLINT NOT NULL,
       Amt_Growing          NUMBER NOT NULL WITH DEFAULT,
       Amt_Graded           NUMBER NOT NULL WITH DEFAULT,
       Amt_Pend_Digging     NUMBER NOT NULL WITH DEFAULT,
       Amt_Shipped          NUMBER NOT NULL WITH DEFAULT,
       Amt_Supplied         NUMBER NOT NULL WITH DEFAULT,
       Amt_On_Order         NUMBER NOT NULL WITH DEFAULT,
       Tot_Avail            NUMBER NOT NULL WITH DEFAULT,
       Size_of_Unit         CHAR(30),
       Stock_Item_Comment   CHAR(254),
       On_Ord_As_Subs       NUMBER NOT NULL WITH DEFAULT,
       Sold_Out_Flag        CHAR(1),
       Hail_Damage          CHAR(1),
       Amt_Subs_Shipped     NUMBER not null with default,
       Est_Avail_Count      NUMBER,
       GC_Pool_Reqd         NUMBER,
       GC_Pool_Used         NUMBER,
       Allocated_Flag       CHAR(1),
       Total_Graded         NUMBER,
	Planning_Reserved  NUMBER;  
);
use 1;
alter table
	stock_item_sale
add
	planning_Reserved NUMBER;
commit;


CREATE UNIQUE INDEX PKStock_Item_Sale
  ON Stock_Item_Sale
(
Stock_Item_No        ASC,
Year_of_Sale         ASC
);

CREATE INDEX IESold_Out_Flag
  ON Stock_item_sale
(
Sold_Out_Flag   ASC
);

create index ieyr_of_sale
   on stock_item_sale
(year_of_sale  asc);

create index iesino
   on stock_item_sale
(stock_item_no  asc);

CREATE INDEX IE2Hail_Damage
  ON Stock_Item_Sale
(
Hail_Damage          ASC
);
CREATE INDEX TONY_STOCK_ISALE_1
    ON STOCK_ITEM
(
STOCK_ITEM_NO          ASC,
YEAR_OF_SALE           ASC  
);
connect stock graham graham;
connect stock sysadm dani;
use 1;
drop table stock_production;
drop table stock_prod_plan;
CREATE TABLE Stock_Production
	 (Stock_Item_No        SMALLINT NOT NULL,
	Required_Item_No	SMALLINT NOT NULL,
       Months_Growing            SMALLINT,
	Production_Stage	SMALLINT NOT NULL
);

CREATE UNIQUE INDEX PKStock_Prod
  ON Stock_Production
(
Stock_Item_No        ASC,
Required_Item_No	ASC
);


CREATE TABLE Stock_Prod_Plan
	 (Stock_Item_No        SMALLINT NOT NULL,
	Required_Item_No	SMALLINT NOT NULL,
       Months_Growing            SMALLINT,
	Production_Stage	SMALLINT NOT NULL,
	location_id			 INTEGER,
       Reserved_Amt            SMALLINT,
	Year_Of_Sale		SMALLINT,
	Req_Year_Of_SAle smallint  NOT NULL,
	req_location_id			 INTEGER, 
	Completed_Flag		CHAR(1),
	Completed_Date		DATETIME
);
connect stock sysadm dani;
set timeout 1;
alter table
	stock_Prod_plan
add
	completed_date DATETIME;
commit;

CREATE INDEX PKStk_Prod_Plan
  ON Stock_Prod_Plan
(
Stock_Item_No        ASC,
Required_Item_No	ASC
);

CREATE TABLE Stock_Labels
      (Stock_Item_No        SMALLINT NOT NULL,
       Label_Id             CHAR(8) NOT NULL,       Stock_Label_Use      CHAR(2) NOT NULL
);



CREATE UNIQUE INDEX PKStock_Labels
  ON Stock_Labels(
Stock_Item_No        ASC,
Label_Id             ASC,
Stock_Label_Use      ASC
);

CREATE INDEX Jan_StckLbl
  ON Stock_Labels
(
Label_Id             ASC,
Stock_Label_Use      ASC
);


CREATE TABLE Substitutes
      (Stock_Item_No        SMALLINT NOT NULL,
       Subs_Priority        SMALLINT NOT NULL,
       Substitute_Item_No   SMALLINT NOT NULL,
       Sub_Up_To_Max        NUMBER,
       Subs_Added_DT        SYSDATETIME NOT NULL   
);




CREATE INDEX IESub_Item
  ON Substitutes
(
Substitute_Item_No   ASC
);

connect stock sysadm dani;
set timeout 1;

CREATE TABLE Supplier_Items
      (Cust_No         INTEGER NOT NULL,
       Supplier_Item_Id        CHAR(35) NOT NULL,
	Description			VARCHAR(200),
       Stock_On_Hand  		 INTEGER,
       Order_Multiples        NUMBER,
	Price_Per_Multiple	NUMBER,
	Price_Each	NUMBER,
	UNIT_OF_MEASURE	CHAR(3),
	Item_GTIN		INTEGER,
	Auto_Order_Amt  INTEGER,
	Min_Stock		INTEGER
);

ALTER
	table
supplier_orders
rename
	supplier_Item_Id old;
alter table supplier_Items
add
	Auto_Order_Amt  INTEGER,
	Min_Stock		INTEGER
;
commit;
alter table
	supplier_orders
drop
	old;
connect stock sysadm dani;
set timeout 1;
select
	*
from
	supplier_Items;	
alter table
	Supplier_Items
add
	UNIT_OF_MEASURE	CHAR(3);
alter table
	Supplier_Items
Modify
	Cust_No   INTEGER ;
commit;

drop index IESupp_Item;
CREATE UNIQUE INDEX IESupp_Item
  ON Supplier_Items
(
	Cust_No   ASC,
	Supplier_Item_Id ASC
);

drop table supplier_orders;

CREATE TABLE Supplier_Orders
      ( Supp_Order_OrdDT		DATETIME NOT NULL,
	Cust_No       			 INTEGER NOT NULL,
       Supplier_Item_Id       CHAR (35)  NOT NULL,
	Order_Quantity		INTEGER,
       ORDER_Sent_DATE  		DATETIME,
       Order_Received        CHAR(1), 
	Order_Sent_By		CHAR(20),
	Received_DT		DATETIME,
	Received_By		CHAR(30),
	Received_Quantity		INTEGER,
	Purchase_Order			INTEGER
);
delete from supplier_orders;
commit;
rollback;
alter table Supplier_orders
add
	Order_Sent_By		CHAR(20);

commit;

drop index IESupp_Orders;
CREATE UNIQUE INDEX IESupp_Orders
  ON Supplier_Orders
(
	Cust_No   ASC,
	Supp_Order_OrdDT ASC,
	Supplier_Item_Id ASC
);	




CREATE TABLE Todays_Inv_No
      (User_Id              CHAR(8) NOT NULL,
       Load_Id              CHAR(8) NOT NULL,
       Invoice_No           INTEGER NOT NULL
);

CREATE UNIQUE INDEX PKTodaysInvNo ON Todays_Inv_No
(
Invoice_No          ASC,
Load_Id             ASC,
User_Id             ASC
);


CREATE TABLE Trans_History
      (Trans_Hist_User_Id   CHAR(8) NOT NULL,
       TrHist_Sysdatetime   DATETIME NOT NULL,
       Cust_No              INTEGER,
       Hist_Reference_Id    CHAR(20),
       Hist_Trans_Type      CHAR(8),
       Hist_Trans_Amount    DECIMAL(10,2),
       Hist_Trans_Date      DATE,
       Hist_Trans_By        CHAR(8),
       Hist_Label_Charges   DECIMAL(10,2),
       Hist_Postal_Charge   DECIMAL(10,2),
       Hist_Rail_Charges    DECIMAL(10,2),
       Hist_Freight_Charg   DECIMAL(10,2),
       Hist_Trans_Notes     CHAR(254),
       Dt_Cleared_To_Hist   DATE,
       Cleared_To_Hist_By   CHAR(8),
       Hist_Credit_Units    SMALLINT,
       Hist_Amt_Outstand    DECIMAL(10,2),
       Written_Off_By       CHAR(8),
       Hist_Trans_Code      CHAR(2),
       Credit_note_no       integer,
       Royalties            DECIMAL(10,2), 
       Days_To_Pay          INTEGER;
);

CREATE UNIQUE INDEX PKTrans_History
  ON Trans_History
(
Trans_Hist_User_Id   ASC,
TrHist_Sysdatetime   ASC
);

CREATE INDEX IE1TrHist_Cust
  ON Trans_History
(
Cust_No              ASC
);

CREATE INDEX IE2TrHist_Ref_Id
  ON Trans_History
(
Hist_Reference_Id    ASC
);

CREATE INDEX IE3TrHist_Type
  ON Trans_History
(
Hist_Trans_Type      ASC
);

CREATE INDEX IE4TrHist_Date
  ON Trans_History(
Hist_Trans_Date      ASC
);
CREATE INDEX IE5TrHist_By
  ON Trans_History
(
Hist_Trans_By        ASC
);
create index ietrHist_crnoteno
  on trans_history
(
Credit_Note_No       asc
);

CREATE TABLE Transaction
      (Trans_User_Id        CHAR(8) NOT NULL,
       Trans_Sysdatetime    DATETIME NOT NULL,
       Cust_No              INTEGER,
       Reference_Id         CHAR(20),
       Transaction_Type     CHAR(8),
       Transaction_Amount   DECIMAL(10,2),
       Transaction_Date     DATE,
       Transaction_By       CHAR(8),
       Trans_Amount_Outst   DECIMAL(10,2),
       Label_Charges        DECIMAL(10,2),
       Postal_Charges       DECIMAL(10,2),
       Rail_Charges         DECIMAL(10,2),
       Freight_Charges      DECIMAL(10,2),
       Transaction_Notes    CHAR(254),
       Trans_Credit_Units   SMALLINT,
       Transaction_Code     CHAR(2),
       Credit_note_no       integer,
       Royalties            DECIMAL(10,2), 
       Days_To_Pay          INTEGER 
);

CREATE UNIQUE INDEX PKTransaction
  ON Transaction
(
Trans_User_Id        ASC,
Trans_Sysdatetime    ASC
);

CREATE INDEX IE1Trans_Cust_No
  ON Transaction
(
Cust_No              ASC
);

CREATE INDEX IE2Trans_Ref_Id
  ON Transaction
(
Reference_Id         ASC
);

CREATE INDEX IE3Trans_Type
  ON Transaction
(
Transaction_Type     ASC
);

CREATE INDEX IE4Trans_Date
  ON Transaction
(
Transaction_Date     ASC
);

CREATE INDEX IE5Trans_By
  ON Transaction
(
Transaction_By       ASC
);
create index ietrans_crnoteno
  on transaction
(
Credit_Note_No       asc
);

connect stockdev sysadm dani;
CREATE TABLE Alt_Transport
      (Transport_Id         CHAR(16) NOT NULL,
       Alt_Region_Id          CHAR(20) not null,
	Cust_no   INTEGER not null
);

CREATE UNIQUE INDEX PKAlt_Trans_Id
  ON Alt_Transport
(
Transport_Id         ASC,
cust_no asc
);
commit;
CREATE TABLE Transport_Method
      (Transport_Id         CHAR(8) NOT NULL,
       Transp_Desc          CHAR(40),
       GC_Capacity          NUMBER,
       Orch_Capacity        NUMBER,
       Minimum_No_Trees     NUMBER,
	Rego_number 		CHAR (15),
	Fleet_Id			CHAR(10)
);

connect stock sysadm dani;
set timeout 1;

alter table
	transport_method
add
	
	Rego_number 		CHAR (15),
	Fleet_Id			CHAR(10);
commit;

CREATE UNIQUE INDEX PKTrans_Id
  ON Transport_Method
(
Transport_Id         ASC
);


CREATE TABLE Tree_Type
      (Tree_Type            CHAR(8) NOT NULL,
       Tree_Type_Desc       CHAR(40),
       When_Ready_Time      SMALLINT,
       When_Ready_Units     CHAR(1),
       Ack_Gen_Message      char(254),
       Ack_Count_Message    char(254),   
       ExcFrmStockReports   char(1),
       Type_Description     CHAR(40),
	Item_Type		CHAR(1),
	Item_Size		INTEGER,
	Pot_Cost		NUMBER,
	Potting_Mix_Id		CHAR(8),
	Potting_Mix_Vol		NUMBER,
	Pot_Mix_Labour		NUMBER,
	Stake_Cost		NUMBER,
	Label_Cost		NUMBER,
	Weeding_Cost		NUMBER,
	Pruning_Cost		NUMBER,
	Order_Pull_Cost		NUMBER,
	Order_Prop_Cost		NUMBER,
	Maint_Cost		NUMBER,
	Advertising_Cost		NUMBER,
	Shrinkage		NUMBER,
	Supplier_Item_No CHAR(35)
	
);
connect stockdev sysadm dani;
set timeout 1;
alter table tree_type drop supplier_item_no;
commit;

use 2;

CREATE UNIQUE INDEX PKTree_Type
  ON Tree_Type
(
Tree_Type            ASC
);

Create Table VARIETY
	( 
	ID INTEGER NOT NULL, 
	VARIETY VARCHAR (30)  NOT NULL, 
	PROHIB_STATES SMALLINT NOT NULL 
);

CREATE UNIQUE INDEX PKVARIETY
  ON VARIETY
(
ID            ASC
);

CREATE UNIQUE INDEX VARIETY_IDX
  ON VARIETY
(
VARIETY            ASC
);

use 1;
use 2;
CREATE TABLE Virus_Test_Details
      (Virus_Test_Id        NUMBER,
       Year_Of_Test          INTEGER,
      From_Test_Id     NUMBER,
       To_Test_Id         NUMBER,
       Tested_For        VARCHAR(254), 
	Infected_With    VARCHAR(254), 
       VT_Comments        VARCHAR(254),  
       Report_Id        VARCHAR(254)
);	

	
CREATE UNIQUE INDEX PKVirus_Test
  ON Virus_Test_Details
(
Virus_Test_Id          ASC,
Year_Of_Test        ASC
);

COMMIT;


alter table Action_Req
       primary key (Date_Time_Stamp);


ALTER TABLE Audit_Trail
       PRIMARY KEY (Audit_User_Id, Audit_Date_Time)
;


ALTER TABLE Cash_Application
       PRIMARY KEY (Applic_User_Id, Applic_Sysdatetime)
;

ALTER TABLE Cash_Receipt
       PRIMARY KEY (Receipt_User_Id, Rcpt_Sysdatetime)
;

ALTER TABLE Cultivar
       PRIMARY KEY (Cult_Id)
;

ALTER TABLE Customer_Address
       PRIMARY KEY (Cust_No, Add_Added_DT)
;

ALTER TABLE Cust_Cancellation
       PRIMARY KEY (Canc_DT)
;

ALTER TABLE Customer_Contacts
       PRIMARY KEY (Cust_No, CC_Added_DT)
;

ALTER TABLE Customer_Master
       PRIMARY KEY (Cust_No)
;
ALTER TABLE Cust_ARNotes
       PRIMARY KEY (Cust_No)
;

ALTER TABLE Cust_Comments
       PRIMARY KEY (Cust_No)
;

ALTER TABLE CUST_LETTER
	PRIMARY KEY(Cust_No, Seq_No)
;
commit;

ALTER TABLE Customer_Order
       PRIMARY KEY (Cust_No, Order_Date_Time)
;

ALTER TABLE Cust_Promo
       PRIMARY KEY (Cust_No, Promo_DT_Stamp)
;



ALTER TABLE Cust_Order_History
       PRIMARY KEY (Cust_No, Order_Date_Time)
;

ALTER TABLE Misc_History
       PRIMARY KEY (Cust_No, Promo_DT_Stamp)
;


ALTER TABLE Customer_Type
       PRIMARY KEY (Cust_Type)
;

ALTER TABLE Day_Pts_Pck_Lst
       PRIMARY KEY (List_No, Row_No)
;

ALTER TABLE Deposit_History
       PRIMARY KEY (Dep_Hist_User_Id, Dep_Hist_Sysdtetim)
;

ALTER TABLE Evaluation
       PRIMARY KEY (Item_No, Location_Id, Evaluation_year)
;

ALTER TABLE Farm_Master
       PRIMARY KEY (Farm_Name)
;

ALTER TABLE Freight_Charge
       PRIMARY KEY (Freight_Code, Freight_Brk_Level)
;

ALTER TABLE Freight_Codes
       PRIMARY KEY (Freight_Code)
;

ALTER TABLE Gdn_Centre_Order
       PRIMARY KEY (GCO_Datetime_Stamp)
;


ALTER TABLE GRADED_PALLETS
       PRIMARY KEY (PALLET_DATETIME)
;  


ALTER TABLE Growing_Sale
       PRIMARY KEY (Year_of_Sale, Location_Id);


ALTER TABLE Inv_No_Register
       PRIMARY KEY(Invoice_No)
;

ALTER TABLE Label_Charge
       PRIMARY KEY (Label_Charge_Code)
;

ALTER TABLE Label_Charges
       PRIMARY KEY (Label_Charge_Code, Label_Chg_Level)
;

ALTER TABLE Load
       PRIMARY KEY (Load_Id)
;

ALTER TABLE Load_Customers
       PRIMARY KEY (Load_Id, Cust_No)
;

ALTER TABLE Label_Fields
       PRIMARY KEY (Label_Id, Field_No)
;

ALTER TABLE Labels
       PRIMARY KEY (Label_Id)
;

ALTER TABLE Location
       PRIMARY KEY (Location_Id)
;


ALTER TABLE Meet_Address
       PRIMARY KEY (Meet_Id)
;

ALTER TABLE Region_Meet
       PRIMARY KEY (Region_Id, Meet_Id)
;
alter table Mailing_List
       primary key (Time_Stamp)
;


ALTER TABLE Missed_Sales
       PRIMARY KEY (MS_DateTime_Stamp)
;



ALTER TABLE Monthly_AR
       PRIMARY KEY (Month_Sysdatetime)
;



ALTER TABLE Outstand_Deposit
       PRIMARY KEY (Dep_User_Id, Dep_Sysdatetime)
;

ALTER TABLE Cult_Paint_Used
       PRIMARY KEY (Cultivar_Id, Cult_Year_Used, CV_Paint_Number)
;

ALTER TABLE Paint_Master
       PRIMARY KEY (Paint_Id)
;
ALTER TABLE PALLET_CONTENTS
       PRIMARY KEY (CONTENT_DATETIME, ITEM_NO)
;  


ALTER TABLE Rtstck_Paint_Used
       PRIMARY KEY (Rootstock_Id, Rt_Year_Used, Rt_Paint_Number)
;


ALTER TABLE Pollination
       PRIMARY KEY (Cult_Id, Poll_Cult_Id)
;

ALTER TABLE Postcodes
       PRIMARY KEY (Postcode_From)
;

ALTER table Postcode_Master
       primary key (Postcode, Postcode_Town);

ALTER TABLE Price_Break
       PRIMARY KEY (Price_Break_Id)
;

ALTER TABLE Prod_Royalty_Class
       PRIMARY KEY (Prod_Roy_Class_Id)
;

ALTER TABLE Prohibition
       PRIMARY KEY (Prohib_Date_Time, Prohib_Entered_By)
;

ALTER TABLE Promo
       PRIMARY KEY (Promo_Id)
;

ALTER TABLE Quotation
       PRIMARY KEY (User_Id, Sys_Date_Time);

ALTER TABLE Region
       PRIMARY KEY (Region_Id)
;

ALTER TABLE Region_Load
       PRIMARY KEY (Region_Id, Load_Id)
;

ALTER TABLE Reg_Transp_Chg
       PRIMARY KEY (Region_Id, Transport_Id)
;

ALTER TABLE Rootstock
       PRIMARY KEY (Root_Id)
;



ALTER TABLE Royalties_Paid
       PRIMARY KEY 
(Cult_Root_Type,Cult_Root_Desc,Cust_Name,Inv_No,Royalty_Owner_Id,Paid_Date_Time)
;




ALTER TABLE Royalty_Owner
       PRIMARY KEY (Royalty_Owner_Id)
;

ALTER TABLE Royalty_Payable
       PRIMARY KEY (Royalty_Owner_Id, Roy_Instance#)
;

ALTER TABLE Roy_Pay_Price_Brk
       PRIMARY KEY (Royalty_Owner_Id, Roy_Instance_No, Roy_Break_Level)
;

ALTER TABLE Scion_Evaluation
       PRIMARY KEY (Location_Id, Scion_Eval_DT)
;

ALTER TABLE Stock_Item
       PRIMARY KEY (Item_No)
;

ALTER TABLE Stock_Item_Sale
       PRIMARY KEY (Stock_Item_No, Year_of_Sale)
;

ALTER TABLE Stock_Labels
       PRIMARY KEY (Stock_Item_No, Label_Id, Stock_Label_Use)
;




ALTER TABLE Substitutes
       PRIMARY KEY (Stock_Item_No, Subs_Added_DT)
;

ALTER TABLE Todays_Inv_No
       PRIMARY KEY (Invoice_No, Load_Id, User_Id)
;


ALTER TABLE Trans_History
       PRIMARY KEY (Trans_Hist_User_Id, TrHist_Sysdatetime)
;

ALTER TABLE Transaction
       PRIMARY KEY (Trans_User_Id, Trans_Sysdatetime)
;

ALTER TABLE Transport_Method
       PRIMARY KEY (Transport_Id)
;

ALTER TABLE Tree_Type
       PRIMARY KEY (Tree_Type)
;

ALTER TABLE Cash_Application
       FOREIGN KEY FKTHCA (Trans_Hist_User_Id, Trans_Hist_Sysdate)
               REFERENCES Trans_History
               ON DELETE SET NULL
;

ALTER TABLE Cash_Application
       FOREIGN KEY TCA (Trans_User_Id, Trans_Sysdatetime)
               REFERENCES Transaction
               ON DELETE SET NULL
;
ALTER TABLE Cash_Application
       FOREIGN KEY FKCRCA (Receipt_User_Id, Receipt_Sysdatetim)
               REFERENCES Cash_Receipt
               ON DELETE SET NULL
;

ALTER TABLE Cash_Receipt
       FOREIGN KEY CMCR (Cust_No)
               REFERENCES Customer_Master
               ON DELETE SET NULL
;



ALTER TABLE Customer_Master
       FOREIGN KEY FKCTCM (Customer_Type)
               REFERENCES Customer_Type
               ON DELETE SET NULL
;

ALTER TABLE Customer_Master
       FOREIGN KEY FKREGCM (Region_Id)
               REFERENCES Region
               ON DELETE SET NULL
;


ALTER TABLE Customer_Order
       FOREIGN KEY FKSISCO (Stock_Item_No, Year_of_Sale)
               REFERENCES Stock_Item_Sale
               ON DELETE SET NULL;

ALTER TABLE Customer_Order
       FOREIGN KEY FKLDCO (Load_Id)
               REFERENCES Load
               ON DELETE SET NULL;




ALTER TABLE Cust_Promo
       FOREIGN KEY sentto (Promo_Id)
               REFERENCES Promo
               ON DELETE CASCADE;

ALTER TABLE Customer_Type
       FOREIGN KEY FKLCCT (Label_Charge_Code)
               REFERENCES Label_Charge
               ON DELETE SET NULL
;

ALTER TABLE Deposit_History
       FOREIGN KEY CMDH (Cust_No)
               REFERENCES Customer_Master
               ON DELETE SET NULL
;

ALTER TABLE Deposit_History
       FOREIGN KEY FKCRDH (Receipt_User_Id, Rcpt_Sysdatetime)
               REFERENCES Cash_Receipt               ON DELETE SET NULL
;

ALTER TABLE Freight_Charge
       FOREIGN KEY FKFCFC (Freight_Code)
               REFERENCES Freight_Codes
               ON DELETE CASCADE
;

ALTER TABLE Freight_Charge
       FOREIGN KEY FKPBFC (Price_Break_Id)
               REFERENCES Price_Break
               ON DELETE RESTRICT
;

ALTER TABLE Gdn_Centre_Order
       FOREIGN KEY FKSIGCO (Item_No)
               REFERENCES Stock_Item
               ON DELETE SET NULL
;
****** THIS ONE is not needed any longer

ALTER TABLE Growing_Sale
       FOREIGN KEY FKSISGS (Stock_Item_No, Year_of_Sale)
               REFERENCES Stock_Item_Sale
               ON DELETE SET NULL
;
**************************** the above was changed - the primary key changed also;

ALTER TABLE Growing_Sale
       FOREIGN KEY FKLOCGS (Location_Id)
               REFERENCES Location
               ON DELETE RESTRICT
;

ALTER TABLE Label_Fields
       FOREIGN KEY LLF (Label_Id)
               REFERENCES Labels
               ON DELETE CASCADE
;

ALTER TABLE Labels
       FOREIGN KEY FKRTLBL (Rootstock_Id)
               REFERENCES Rootstock
               ON DELETE SET NULL
;

ALTER TABLE Labels
       FOREIGN KEY FKCVLBL (Cultivar_Id)
               REFERENCES Cultivar
               ON DELETE SET NULL
;

ALTER TABLE Label_Charges
       FOREIGN KEY FKPBLC (Price_Break_Id)
               REFERENCES Price_Break
               ON DELETE SET NULL
;
ALTER TABLE Label_Charges
       FOREIGN KEY FKLCLC (Label_Charge_Code)
               REFERENCES Label_Charge
               ON DELETE CASCADE
;

ALTER TABLE Location
       FOREIGN KEY FML (Farm_Name)
               REFERENCES Farm_Master
               ON DELETE RESTRICT
;
*** THIS ONE WAS ON DELETE SET NULL;
 
ALTER TABLE Load_Customers
       FOREIGN KEY FKCMLC (Cust_No)
               REFERENCES Customer_Master
               ON DELETE RESTRICT
;

ALTER TABLE Load_Customers
       FOREIGN KEY FKLLC (Load_Id)
               REFERENCES Load
               ON DELETE RESTRICT
;


ALTER TABLE Region_Meet
       FOREIGN KEY FKMARM (Meet_Id)
               REFERENCES Meet_Address
               ON DELETE CASCADE
;

ALTER TABLE Region_Meet
       FOREIGN KEY FKRRM (Region_Id)
               REFERENCES Region
               ON DELETE CASCADE
;


ALTER TABLE Outstand_Deposit
       FOREIGN KEY FKCMOD (Cust_No)
               REFERENCES Customer_Master
               ON DELETE SET NULL
;

ALTER TABLE Outstand_Deposit
       FOREIGN KEY FKCROD (Receipt_User_Id, Rcpt_Sysdatetime)
               REFERENCES Cash_Receipt
               ON DELETE SET NULL
;

ALTER TABLE Cult_Paint_Used
       FOREIGN KEY FKPMCPU (Paint_Id)
               REFERENCES Paint_Master
               ON DELETE SET NULL
;

ALTER TABLE Cult_Paint_Used
       FOREIGN KEY FKCVCPU (Cultivar_Id)
               REFERENCES Cultivar
               ON DELETE CASCADE
;

ALTER TABLE Rtstck_Paint_Used
       FOREIGN KEY FKPMRPU (Paint_Id)
               REFERENCES Paint_Master
               ON DELETE SET NULL
;

ALTER TABLE Rtstck_Paint_Used
       FOREIGN KEY FLRTRPU (Rootstock_Id)
               REFERENCES Rootstock
               ON DELETE CASCADE
;


ALTER TABLE Pollination
       FOREIGN KEY FKCVPOL (Poll_Cult_Id)
               REFERENCES Cultivar
               ON DELETE CASCADE
;

ALTER TABLE Pollination
       FOREIGN KEY FKCVPOLL (Cult_Id)
               REFERENCES Cultivar
               ON DELETE CASCADE
;


ALTER TABLE Postcodes
       FOREIGN KEY FKRPC (Region_Id)
               REFERENCES Region
               ON DELETE CASCADE
;

ALTER TABLE Prohibition
       FOREIGN KEY FKRTPR (Root_Id)
               REFERENCES Rootstock
               ON DELETE SET NULL
;

ALTER TABLE Prohibition
       FOREIGN KEY FKCVPR (Cult_Id)
               REFERENCES Cultivar
               ON DELETE SET NULL
;

ALTER TABLE Promo
       FOREIGN KEY FKFCPR (Freight_Code)
               REFERENCES Freight_Codes
               ON DELETE SET NULL
;


ALTER TABLE Quotation
       FOREIGN KEY FKQuoItm (Stock_Item_No)
               REFERENCES Stock_Item
               ON DELETE SET NULL;

ALTER TABLE Quotation
       FOREIGN KEY FKQuoCst (Cust_No)
               REFERENCES Customer_Master
               ON DELETE SET NULL;

ALTER TABLE Quotation
       FOREIGN KEY FKQItmSl (Stock_Item_No,Year_Of_Sale)
               REFERENCES Stock_Item_Sale
               ON DELETE SET NULL;

ALTER TABLE Region_Load
       FOREIGN KEY FKRRLD (Region_Id)
               REFERENCES Region
               ON DELETE CASCADE
;

ALTER TABLE Region_Load
       FOREIGN KEY FKLDRLD (Load_Id)
               REFERENCES Load               ON DELETE CASCADE
;

ALTER TABLE Reg_Transp_Chg
       FOREIGN KEY FKFCRTC (Freight_Code)
               REFERENCES Freight_Codes
               ON DELETE SET NULL
;

ALTER TABLE Reg_Transp_Chg
       FOREIGN KEY FKRRTC (Region_Id)
               REFERENCES Region
               ON DELETE CASCADE
;

ALTER TABLE Reg_Transp_Chg
       FOREIGN KEY FKTMRTC (Transport_Id)
               REFERENCES Transport_Method
               ON DELETE CASCADE
;
ALTER TABLE Royalty_Payable
       FOREIGN KEY FKRTRP (Rootstock_Id)
               REFERENCES Rootstock
               ON DELETE SET NULL
;

ALTER TABLE Royalty_Payable
       FOREIGN KEY FKCVRP (Cultivar_Id)
               REFERENCES Cultivar
               ON DELETE SET NULL
;

ALTER TABLE Royalty_Payable
       FOREIGN KEY FKRORP (Royalty_Owner_Id)
               REFERENCES Royalty_Owner
               ON DELETE CASCADE
;

ALTER TABLE Roy_Pay_Price_Brk
       FOREIGN KEY FKRPPB (Royalty_Owner_Id, Roy_Instance_No)
               REFERENCES Royalty_Payable
               ON DELETE CASCADE
;

ALTER TABLE Roy_Pay_Price_Brk
       FOREIGN KEY can_be_u (Price_Break_Id)
               REFERENCES Price_Break
               ON DELETE SET NULL
;

ALTER TABLE Scion_Evaluation
       FOREIGN KEY FKLOCSE (Location_Id)
               REFERENCES Location
               ON DELETE RESTRICT
;

ALTER TABLE Scion_Evaluation
       FOREIGN KEY FKSISE (Stock_Item_No)
               REFERENCES Stock_Item
               ON DELETE RESTRICT
;

ALTER TABLE Stock_Item
       FOREIGN KEY FKTTSI (Tree_Type)               REFERENCES Tree_Type
               ON DELETE RESTRICT
;

ALTER TABLE Stock_Item
       FOREIGN KEY FKRTSI (Rootstock_Id)
               REFERENCES Rootstock
               ON DELETE RESTRICT
;
ALTER TABLE Stock_Item
       FOREIGN KEY FKCVSI (Cultivar_Id)
               REFERENCES Cultivar
               ON DELETE RESTRICT
;


ALTER TABLE Stock_Item_Sale
       FOREIGN KEY FKSISIS (Stock_Item_No)
               REFERENCES Stock_Item
               ON DELETE RESTRICT
;

ALTER TABLE Stock_Labels
       FOREIGN KEY FKSISL (Stock_Item_No)
               REFERENCES Stock_Item
               ON DELETE CASCADE
;

ALTER TABLE Stock_Labels
       FOREIGN KEY LSL (Label_Id)
               REFERENCES Labels
               ON DELETE RESTRICT
;

ALTER TABLE Substitutes
       FOREIGN KEY FKSISUB (Stock_Item_No)
               REFERENCES Stock_Item
             ON DELETE CASCADE
;

ALTER TABLE Substitutes
       FOREIGN KEY FKSISUB2 (Substitute_Item_No)
               REFERENCES Stock_Item
               ON DELETE CASCADE
;

ALTER TABLE Trans_History
       FOREIGN KEY CMTH (Cust_No)
               REFERENCES Customer_Master
               ON DELETE SET NULL
;

ALTER TABLE Transaction
       FOREIGN KEY CMT (Cust_No)
               REFERENCES Customer_Master
               ON DELETE SET NULL
;
commit;

CONNECT STOCK SYSADM DANI;
CONNECT STOCKDEV SYSADM DANI;

CREATE PUBLIC SYNONYM ACTION_REQ FOR SYSADM.ACTION_REQ;
CREATE PUBLIC SYNONYM AUDIT_TRAIL FOR SYSADM.AUDIT_TRAIL;
CREATE PUBLIC SYNONYM CASH_APPLICATION FOR SYSADM.CASH_APPLICATION;
CREATE PUBLIC SYNONYM CASH_RECEIPT FOR SYSADM.CASH_RECEIPT;
CREATE PUBLIC SYNONYM CULTIVAR FOR SYSADM.CULTIVAR;
CREATE PUBLIC SYNONYM CULT_MATURITY_REF FOR SYSADM.CULT_MATURITY_REF ;
CREATE PUBLIC SYNONYM CUSTOMER_ADDRESS FOR SYSADM.CUSTOMER_ADDRESS;
CREATE PUBLIC SYNONYM CUSTOMER_CONTACTS FOR SYSADM.CUSTOMER_CONTACTS;
CREATE PUBLIC SYNONYM CUST_CANCELLATION FOR SYSADM.CUST_CANCELLATION;
CREATE PUBLIC SYNONYM CUSTOMER_MASTER FOR SYSADM.CUSTOMER_MASTER;
CREATE PUBLIC SYNONYM CUSTOMER_Partner FOR SYSADM.CUSTOMER_Partner;
CREATE PUBLIC SYNONYM CUST_ARNOTES FOR SYSADM.CUST_ARNOTES;
CREATE PUBLIC SYNONYM CUST_COMMENTS FOR SYSADM.CUST_COMMENTS;
CREATE PUBLIC SYNONYM CUST_LABELS FOR SYSADM.CUST_LABELS;
CREATE PUBLIC SYNONYM CUSTOMER_ORDER FOR SYSADM.CUSTOMER_ORDER;
CREATE PUBLIC SYNONYM CUST_PROMO FOR SYSADM.CUST_PROMO;
CREATE PUBLIC SYNONYM CUST_LETTER FOR SYSADM.CUST_LETTER;
CREATE PUBLIC SYNONYM CUST_ORDER_HISTORY FOR SYSADM.CUST_ORDER_HISTORY;
CREATE PUBLIC SYNONYM CULT_Paint_Used FOR SYSADM.CULT_Paint_Used;
CREATE PUBLIC SYNONYM CUSTOMER_TYPE FOR SYSADM.CUSTOMER_TYPE;
CREATE PUBLIC SYNONYM DAY_PTS_PCK_LST FOR SYSADM.DAY_PTS_PCK_LST;
CREATE PUBLIC SYNONYM DEPOSIT_HISTORY FOR SYSADM.DEPOSIT_HISTORY;
CREATE PUBLIC SYNONYM EVALUATION FOR SYSADM.EVALUATION;
CREATE PUBLIC SYNONYM FARM_MASTER FOR SYSADM.FARM_MASTER;
CREATE PUBLIC SYNONYM FREIGHT_CHARGE FOR SYSADM.FREIGHT_CHARGE;
CREATE PUBLIC SYNONYM FREIGHT_CODES FOR SYSADM.FREIGHT_CODES;
CREATE PUBLIC SYNONYM GDN_CENTRE_ORDER FOR SYSADM.GDN_CENTRE_ORDER;
CREATE PUBLIC SYNONYM GRADED_PALLETS FOR SYSADM.GRADED_PALLETS;
CREATE PUBLIC SYNONYM GROUP_PRICE FOR SYSADM.GROUP_PRICE;
CREATE PUBLIC SYNONYM GROWING_SALE FOR SYSADM.GROWING_SALE;
CREATE PUBLIC SYNONYM HH_Actions FOR SYSADM.HH_Actions;
CREATE PUBLIC SYNONYM HH_Logs FOR SYSADM.HH_Logs;
CREATE PUBLIC SYNONYM HH_Messages FOR SYSADM.HH_Messages;
CREATE PUBLIC SYNONYM HH_Users FOR SYSADM.HH_Users;
CREATE PUBLIC SYNONYM INV_NO_REGISTER FOR SYSADM.INV_NO_REGISTER;
CREATE PUBLIC SYNONYM LABEL_FIELDS FOR SYSADM.LABEL_FIELDS;
CREATE PUBLIC SYNONYM LABELS FOR SYSADM.LABELS;
CREATE PUBLIC SYNONYM LABEL_CHARGE FOR SYSADM.LABEL_CHARGE;
CREATE PUBLIC SYNONYM LABEL_CHARGES FOR SYSADM.LABEL_CHARGES;
CREATE PUBLIC SYNONYM LOAD FOR SYSADM.LOAD;
CREATE PUBLIC SYNONYM LOAD_CUSTOMERS FOR SYSADM.LOAD_CUSTOMERS;
CREATE PUBLIC SYNONYM LOCATION FOR SYSADM.LOCATION;
CREATE PUBLIC SYNONYM MAILING_LIST FOR SYSADM.MAILING_LIST;
CREATE PUBLIC SYNONYM MISSED_SALES FOR SYSADM.MISSED_SALES;
CREATE PUBLIC SYNONYM MEET_ADDRESS FOR SYSADM.MEET_ADDRESS;
CREATE PUBLIC SYNONYM MONTHLY_AR FOR SYSADM.MONTHLY_AR;
CREATE PUBLIC SYNONYM OUTSTAND_DEPOSIT FOR SYSADM.OUTSTAND_DEPOSIT;
CREATE PUBLIC SYNONYM Paint_Master FOR SYSADM.Paint_Master;
CREATE PUBLIC SYNONYM PALLET_CONTENTS FOR SYSADM.PALLET_CONTENTS;

CREATE PUBLIC SYNONYM POLLINATION FOR SYSADM.POLLINATION;
CREATE PUBLIC SYNONYM PRICE_BREAK FOR SYSADM.PRICE_BREAK;
CREATE PUBLIC SYNONYM PRICE_GROUP FOR SYSADM.PRICE_GROUP;
CREATE PUBLIC SYNONYM PROD_ROYALTY_CLASS FOR SYSADM.PROD_ROYALTY_CLASS;
CREATE PUBLIC SYNONYM PROHIBITION FOR SYSADM.PROHIBITION;
CREATE PUBLIC SYNONYM POSTCODES FOR SYSADM.POSTCODES;
CREATE PUBLIC SYNONYM POSTCODE_MASTER FOR SYSADM.POSTCODE_MASTER;
CREATE PUBLIC SYNONYM PROMO FOR SYSADM.PROMO;
CREATE PUBLIC SYNONYM QUOTATION FOR SYSADM.QUOTATION;
CREATE PUBLIC SYNONYM REGION FOR SYSADM.REGION;
CREATE PUBLIC SYNONYM REGION_MEET FOR SYSADM.REGION_MEET;
CREATE PUBLIC SYNONYM REG_TRANSP_CHG FOR SYSADM.REG_TRANSP_CHG;
CREATE PUBLIC SYNONYM REGION_LOAD FOR SYSADM.REGION_LOAD;
CREATE PUBLIC SYNONYM ROOTSTOCK FOR SYSADM.ROOTSTOCK;
CREATE PUBLIC SYNONYM ROYALTIES_PAID FOR SYSADM.ROYALTIES_PAID;
CREATE PUBLIC SYNONYM ROYALTY_OWNER FOR SYSADM.ROYALTY_OWNER;
CREATE PUBLIC SYNONYM ROYALTY_PAYABLE FOR SYSADM.ROYALTY_PAYABLE;
CREATE PUBLIC SYNONYM ROY_PAY_PRICE_BRK FOR SYSADM.ROY_PAY_PRICE_BRK;
CREATE PUBLIC SYNONYM Rtstck_Paint_Used FOR SYSADM.Rtstck_Paint_Used;
CREATE PUBLIC SYNONYM Schedule FOR SYSADM.Schedule;
CREATE PUBLIC SYNONYM Module_Items FOR SYSADM.Module_Items;
CREATE PUBLIC SYNONYM SCION_EVALUATION FOR SYSADM.SCION_EVALUATION;
CREATE PUBLIC SYNONYM SEQ_NO_SOURCE FOR SYSADM.SEQ_NO_SOURCE;
CREATE PUBLIC SYNONYM STOCK_ITEM FOR SYSADM.STOCK_ITEM;
CREATE PUBLIC SYNONYM STOCK_ITEM_SALE FOR SYSADM.STOCK_ITEM_SALE;
CREATE PUBLIC SYNONYM STOCK_LABELS FOR SYSADM.STOCK_LABELS;
CREATE PUBLIC SYNONYM STOCK_PRODUCTION FOR SYSADM.STOCK_PRODUCTION ;
CREATE PUBLIC SYNONYM STOCK_PROD_PLAN FOR SYSADM.STOCK_PROD_PLAN ;
CREATE PUBLIC SYNONYM SUBSTITUTES FOR SYSADM.SUBSTITUTES;
CREATE PUBLIC SYNONYM Supplier_Items FOR SYSADM.Supplier_Items;
CREATE PUBLIC SYNONYM Supplier_Orders FOR SYSADM.Supplier_Orders;
CREATE PUBLIC SYNONYM TODAYS_INV_NO FOR SYSADM.TODAYS_INV_NO;
CREATE PUBLIC SYNONYM TRANS_HISTORY FOR SYSADM.TRANS_HISTORY;
CREATE PUBLIC SYNONYM TRANSACTION FOR SYSADM.TRANSACTION;
CREATE PUBLIC SYNONYM TRANSPORT_METHOD FOR SYSADM.TRANSPORT_METHOD;
CREATE PUBLIC SYNONYM ALT_TRANSPORT FOR SYSADM.ALT_TRANSPORT;
CREATE PUBLIC SYNONYM TREE_TYPE FOR SYSADM.TREE_TYPE;
CREATE PUBLIC SYNONYM CUSTOMER_ITEM FOR SYSADM.CUSTOMER_ITEM;
CREATE PUBLIC SYNONYM EVAL_ITEM FOR SYSADM.EVAL_ITEM ;
CREATE PUBLIC SYNONYM ITEM_EVALUATION FOR SYSADM.ITEM_EVALUATION ;
CREATE PUBLIC SYNONYM Bay_Master FOR SYSADM.Bay_Master ;
CREATE PUBLIC SYNONYM Bay_Location FOR SYSADM.Bay_Location ;
CREATE PUBLIC SYNONYM Bay_Contents FOR SYSADM.Bay_Contents ;
CREATE PUBLIC SYNONYM Virus_Test_Details FOR SYSADM.Virus_Test_Details  ;
CREATE PUBLIC SYNONYM Eval_Item FOR SYSADM.Eval_Item;
CREATE PUBLIC SYNONYM Item_Evaluation FOR SYSADM.Item_Evaluation ;
CREATE PUBLIC SYNONYM Potting_Mix FOR SYSADM.Potting_Mix ;
CREATE PUBLIC SYNONYM Budwood FOR SYSADM.Budwood ;

commit;
use 2;
connect stock sysadm dani;
set timeout 1;
drop public synonym REG_TRANSP_CHG ;
COMMIT;



DISCONNECT STOCK;



COMMIT;

**stored procedures and creating triggers;
connect stockdev sysadm dani;
set timeout 5;
ERASE GetNextId;
STORE GetNextId
Procedure: GetNextId STATIC

Parameters
	String: sDomain
	Receive Number: nFillMeIn
Local variables
	Sql handle: hSql1
	Sql handle: hSql2
	Number: nInd
	Boolean: bFirstRow
Actions
	On Procedure Startup
		Call SqlConnect(hSql1)
		Call SqlPrepare(hSql1, 'Update Seq_No_Source SET Next_Value = Next_Value + 1 Where Source_Id = :sDomain') 
		Call SqlConnect(hSql2)
		Call SqlPrepare(hSql2, 'Select Next_Value - 1 from Seq_no_Source where Source_Id = :sDomain into :nFillMeIn')
	On Procedure Execute
		If nFillMeIn = 0
			Call SqlExecute(hSql1)
			Call SqlExecute(hSql2)
		Else
			Set bFirstRow = 1
	On Procedure Fetch
		If nFillMeIn = 0
			If SqlFetchNext(hSql2, nInd)
				Return 0	
			Else
				Return 20001
		Else
			If bFirstRow
				Set bFirstRow = 0
				Return 0
			Else
				Return 1
	On Procedure Close
		Call SqlDisconnect(hSql1)
		Call SqlDisconnect(hSql2);	

CREATE TRIGGER Cust_Letter_Seq BEFORE INSERT ON CUST_LETTER ORDER 1
	(Execute GetNextId('CUST_LETTER', Seq_No)) FOR EACH ROW; 
commit;
disconnect ALL;


