connect live sysadm dani;
set timeout 1;

select
	*
from
	syscolumns
where
	name = 'BASE_PRICE';
commit;
**********************************************************************************
alter table
	stock_item
add
	Base_Price_1 Decimal(7,2); 
update 
	stock_item
set 
	base_price_1 = base_price;
alter table
	stock_item
rename
	base_price base_price_2;
alter table
	stock_item
rename
	base_price_1 base_price;

alter table
	stock_item
drop
	base_price_2; 

