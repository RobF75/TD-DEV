connect stkLOCAL sysadm dani;
set timeout 1;



Store Module_Item_Load 
Procedure: Module_Item_Load STATIC
Parameters
	String: sLoadId
	Date/Time: dtParentOrdDT
	Number: nCustNo
Local Variables
	SQL HANDLE: hSql
	NUMBER:	nFetchStatus
	STRING: sModuleItem
Actions
	Set sModuleItem = 'Y'
	Call SqlConnect(hSql)
	Call SqlPrepare(hSql, 'Update customer_order set load_id = :sLoadId Where ITEM_PARENT_ORDDT = :dtParentOrdDT and Module_Item = :sModuleItem and Cust_no = :nCustNo')
        Call SqlExecute(hSql)
	Call SqlDisconnect(hSql)
	Return 0
;

retrieve command Module_Item_Load;

erase
	Module_item_load
;

select
	*
from
	syscommands
where
	name = 'Module_Item_Load';
commit;

drop trigger
	load_updt;
/
CREATE TRIGGER LOAD_UPDT BEFORE UPDATE OF LOAD_ID ON CUSTOMER_ORDER
  REFERENCING OLD AS OLD_LOADID NEW AS NEW_LOADID
  (EXECUTE INLINE (OLD_LOADID.LOAD_ID, NEW_LOADID.LOAD_ID, OLD_LOADID.ORDER_DATE_TIME, OLD_LOADID.CUST_NO )
  PROCEDURE: LOADID_UPDT STATIC
  PARAMETERS
    STRING:	sOldLoadId
    STRING:	sNewLoadId
    DATE/TIME: 	dtOrderDT
    NUMBER: 	nCustNo
  LOCAL VARIABLES
    SQL HANDLE: hSql
  ACTIONS
    On Procedure Startup
      Call SqlConnect(hSql)
    On Procedure Execute
      Call SqlRetrieve(hSql,'Module_Item_Load',':sNewLoadId,:dtOrderDT,:nCustNo', strNULL)
      Call SqlExecute(hSql)
    On Procedure Close
      Call SqlDisconnect(hSql)
  )
 FOR EACH ROW
/


select
	*
from
	customer_order co,
	stock_item si
where
	co.stock_item_no = si.item_no and
	module_parent = 'Y' and
	load_id = 'KRYJNE12' and
	cust_no = 333882 and
	stock_item_no = 15320
	;

update
	customer_order
set 
	load_id = 'PU27JNE'
where
	load_id = 'PU27JNE' and
	cust_no = 333882 and
	stock_item_no = 15320
	;
commit;
