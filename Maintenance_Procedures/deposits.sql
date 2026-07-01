connect stock sysadm dani;
set timeout 1;
connect stock graham graham;



select
	* from
syscolumns
where
	tbname = 'PROD_ROYALTY_CLASS';


select	
	*
from
	outstand_deposit
where
	dep_year_of_sale = 2002;

delete
from
	outstand_deposit
where
	dep_year_of_sale = 2002 and
	cust_no in (334940,213738);
commit;

update
	customer_order
set
	Dep_Req_Ltr_Snt = 'N'
where
	year_of_sale = 2002 and
	stock_item_no in
	(select
		item_no 
	from
		stock_item si,
		prod_royalty_class prc
	where
		si.PROD_royalty = prc.prod_royalty and
		royalty_company = 'Z');	
rollback;
commit;



