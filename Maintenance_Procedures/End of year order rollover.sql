connect stock graham graham;
set timeout 1;



update
	customer_order
set
	year_of_sale = 1999,
	batch_year_of_sale = 1999
where
	year_of_sale = 1998 and
	invoiced_flag = 'N' and
	cust_no in (310001, 310196, 310437,333452) ;

commit;

update
	customer_order
set
	year_of_sale = 1999,
	batch_year_of_sale = 1999
where
	load_id = 'VMSP1499' and
	year_of_sale = 1998;

commit;	



select
	*
from
	customer_order
where
	year_of_sale = 1998 and
	cust_no in (100001, 210225, 213196, 310298, 310400, 510128) and
	conf_amt > 0
order by
	stock_item_no;

update
	customer_order
set
	conf_amt = 0
where
	year_of_sale = 1998 and
	invoiced_flag = 'N' and
	cust_no in (100001, 210225, 213196, 310298, 310400, 510128) ;
commit;

