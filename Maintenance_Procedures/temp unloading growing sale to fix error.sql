connect live graham graham;
set timeout 1;

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
CREATE UNIQUE INDEX PKGrowing_Sale
  ON Growing_Sale
(
Year_of_Sale         ASC,
Location_Id          ASC
);
commit;

CREATE INDEX IE1GS_Loc
  ON Growing_Sale(
Location_Id          ASC
);

CREATE INDEX IE1GC_SI
  ON Growing_Sale
(
Stock_Item_No        ASC
);

connect live sysadm dani;
set timeout 1;
commit;

unload data sql growing_sale.uld overwrite growing_sale; 
load sql growing_sale.uld;

drop table growing_sale;

