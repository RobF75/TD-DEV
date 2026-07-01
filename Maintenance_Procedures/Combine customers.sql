connect stklocal graham graham;
set timeout 1;

select
	cust_no,
	cust_name,
	prev_93yearordamt,
	prev_92yearordamt,
	prev_91yearordamt,
	prev_90yearordamt
from
	customer_master
where
	cust_no = '310701' or
	cust_no = '311591';

update
	cust_cancellation
set
	cust_no = 310701
where
	cust_no = 311591;

update
	customer_contacts
set
	main_contact_flag = NULL
where
	cust_no = 311591;

update
	customer_contacts
set
	cust_no = 310701
where
	cust_no = 311591;

select * from customer_order where cust_no = 311591;

update
	customer_order
set
	cust_no = 310701
where
	cust_no = 311591 and
	stock_item_no = 1130;
commit;

update
	cust_letter
set
	cust_no = 310701
where
	cust_no = 311591;

update
	cust_promo
set
	cust_no = 310701
where
	cust_no = 311591;

select * from cust_order_history where cust_no = 311591;
update
	cust_order_history
set
	cust_no = 310701
where
	cust_no = 311591 and
	stock_item_no = 11991;
and 
	ordered_amount = 216;
commit;
update
	deposit_history
set
	cust_no = 310701
where
	cust_no = 311591;	

select * from inv_no_register where cust_no = 310701;

update
	inv_no_register
set
	cust_no = 310701
where
	cust_no = 311591;

update
	missed_sales
set
	customer_no = 310701
where
	customer_no = 311591;

update
	outstand_deposit
set
	cust_no = 310701
where
	cust_no = 311591;

update
	quotation
set
	cust_no = 310701
where
	cust_no = 311591;

update
	royalties_paid
set
	cust_no = 310701
where
	cust_no = 311591;

update
	trans_history
set
	cust_no = 310701
where
	cust_no = 311591;

update
	transaction
set
	cust_no = 310701
where
	cust_no = 311591; 
commit;
