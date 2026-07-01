set server p3server;
set server local;

create database evaluate;
connect evaluate sysadm sysadm;
connect stock sysadm dani;
set timeout 1;

create database evaltest;
connect evaltest sysadm sysadm;


Create Table CULTIVAR
	( 
	CULT_ID CHAR (8)  NOT NULL, 
	GENUS CHAR (30)  , 
	SPECIES CHAR (30)  , 
	VARIETY CHAR (40)  NOT NULL, 
	CULT_DESC CHAR (60)  NOT NULL, 
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
	LICENSOR CHAR (60)   
);


CREATE UNIQUE INDEX PKCult_id
  ON Cultivar
(
Cult_Id              ASC
);

connect evaltest sysadm sysadm;
CREATE INDEX GDF_CULT
   ON CULTIVAR
(
CULT_DESC    ASC
);
commit;
        

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

create table
	eval_item (
		item_id CHAR (8) not null,
		item_desc CHAR (60) not null,
		Owner_Id CHAR (20),
		Year_of_Intro DATE,
		Year_Of_Release DATE,
		Cult_Or_Rootstock CHAR (1),
		Variety CHAR (40),
		Commercialised CHAR (1)
		Modified_Date DATE
		);
create unique index eval_index ON
	eval_item (item_id);
connect
	evaluate sysadm sysadm;
connect
	stock sysadm dani;
use 1;
use 2;
commit;
alter table
	eval_Item
drop
	edit_or_new_flag;
alter table
	eval_Item
add
	modified_date DATE;

alter table
	Item_evaluation
drop
	edit_or_new_flag;
alter table
	Item_evaluation
add
	modified_date DATE;

update
	eval_item
set
	modified_date = 10/24/2002;
update
	Item_evaluation
set
	modified_date = 10/24/2002;
commit;

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
		Maturity_Date DATE,
		Picture_Type   CHAR(25),
		Modified_Date DATE
		);

create unique index item_eval_index ON
	Item_Evaluation (Eval_Id);


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
	Bare_Root_Potted   CHAR(1),
	RT_On_Trial_Flag	CHAR(1),
	CV_On_Trial_Flag	CHAR(1),
	Prod_Royalty	CHAR(1)
);


CREATE UNIQUE INDEX PKStock_Item
  ON Stock_Item
(
Item_No              ASC
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
       Rt_Synonyms          CHAR(60),
       Rt_Origin            CHAR(60),
       Rt_Parentage         CHAR(60),
       Rt_Transplanting     CHAR(60),
       Root_Mod_By          CHAR(8),
       Root_Mod_Date        DATE,      
	 Root_Comm            CHAR(254),
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
       Rt_Compatability     CHAR(254),       
	Rt_Anchorage         CHAR(254),
       Rt_Disorder          CHAR(254),
       Rt_Site_Used         CHAR(254),
       Rt_LL1_OffSet        NUMBER,
       Rt_LL2_OffSet        NUMBER,
       Rt_LL3_OffSet        NUMBER,
       Rt_LL4_OffSet        NUMBER,
       Rt_LL5_OffSet        NUMBER,
       First_Sale_date      Date,
       Rt_On_Trial_Flag     CHAR(1)          
);


CREATE UNIQUE INDEX PKRoot_Id
  ON Rootstock
(Root_Id              ASC
);

GRANT CONNECT TO 
	AMANDA,
	BILL,
	BRENDAN,
	CHRIS,
	DAWN,
	DEIRDRE,
	GARY,
	GRAHAM,
	IAN,
	JAN,
	JILL,
	JUSTIN,
	LEANNE,
	LIZ,
	MARK,
	NICOLE,
	PDUNLOP,
	ROBERT,
	ROBYN,
	ROSS,
        STUART,
	TODDY,
	TONYW,
	WES,
	ZOEE
 IDENTIFIED BY 
	AMANDA,
	BILL,
	BRENDAN,
	CHRIS,
	DAWN,
	DEIRDRE,
	GARY,
	GRAHAM,
	IAN,
	JAN,
	JILL,
	JUSTIN,
	LEANNE,
	LIZ,
	MARK,
	NICOLE,
	PDUNLOP,
	ROBERT,
	ROBYN,
	ROSS,
        STUART,
	TODDY,
	TONYW,
	WES,
	ZOEE;

GRANT
	DBA
TO
	Graham;



GRANT
	ALL
ON
	Eval_Item,
	Item_Evaluation,
	Royalty_Owner,
	Cultivar,
	Rootstock,
	Stock_Item
TO
	AMANDA,
	BILL,
	BRENDAN,
	CHRIS,
	DAWN,
	DEIRDRE,
	GARY,
	GRAHAM,
	IAN,
	JAN,
	JILL,
	JUSTIN,
	LEANNE,
	LIZ,
	MARK,
	NICOLE,
	PDUNLOP,
	ROBERT,
	ROBYN,
	ROSS,
        STUART,
	TODDY,
	TONYW,
	WES,
	ZOEE;


CREATE PUBLIC SYNONYM Stock_Item FOR SYSADM.Stock_Item;
CREATE PUBLIC SYNONYM Eval_Item FOR SYSADM.Eval_Item;
CREATE PUBLIC SYNONYM Item_Evaluation FOR SYSADM.Item_Evaluation ;
CREATE PUBLIC SYNONYM Royalty_Owner FOR SYSADM.Royalty_Owner ;
CREATE PUBLIC SYNONYM Cultivar FOR SYSADM.Cultivar ;
CREATE PUBLIC SYNONYM Rootstock FOR SYSADM.Rootstock ;


commit;


