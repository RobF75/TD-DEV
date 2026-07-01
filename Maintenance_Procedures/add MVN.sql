connect live SYSADM/DANI;

set timeout 1;

connect stockdev sysadm/dani;

alter table
	Customer_master
ADD
       Cust_M_AR_Balance      DECIMAL(10,2);
commit;
ROLLBACK;
select * from stock_item;
select * from tree_type;


select item_no from stock_item;
select
	*
from
	syscolumns
where name like '%ITEM_NO';
select
	*
from
	systables
where 
	name = 'STOCK_ITEM';

alter table
	stock_item
add
	new_item_no INTEGER;
update
	stock_item
set 
	new_item_no = item_no;
alter table
	stock_item
rename item_no old_item_no;
alter table stock_item
rename new_item_no item_no;
alter table stock_item
modify item_no not null;
alter table
	stock_item
modify old_item_no null;
commit;
************************************;
alter table
	stock_item_sale
add
	new_item_no INTEGER;
update
	stock_item_sale
set 
	new_item_no = stock_item_no;
alter table
	stock_item_sale
rename 
	stock_item_no old_stock_item_no;
alter table 
	stock_item_sale
rename
	 new_item_no stock_item_no;
alter table
	 stock_item_sale
modify 
	stock_item_no not null;
alter table stock_item_sale drop primary key;
alter table
	stock_item_sale
modify 
	old_stock_item_no null;
alter table stock_item_sale primary key (stock_item_no);
commit;
select
	max(stock_item_no)
from
	stock_item_sale;
select
	max(item_no)
from
	stock_item;
select
	*
from
	stock_item
where
	item_no = 32768;

commit;


