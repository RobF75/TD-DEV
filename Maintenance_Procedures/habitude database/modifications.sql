connect HAB sysadm dani;


create table
	Item_suppliers (
		stock_item_no INTEGER not null,
		supplier_item_no INTEGER not null,
		Supplier_Cust_No INTEGER not null,
		Supplier_Item_DT DATETIME not null,
		Stock_Available INTEGER,
		Priority INTEGER);

create unique index PKItem_Supp
on Item_suppliers 
(
stock_item_no asc,
Supplier_Cust_No asc
);

alter table
	customer_order 
add
	Supplier_Order_No VARCHAR(25);

CREATE PUBLIC SYNONYM Item_suppliers FOR SYSADM.Item_suppliers ;
commit;




