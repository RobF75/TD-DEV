connect stockdev graham graham;
set timeout 1;



select
	c.cust_no,
	c.cust_name,
	t.transaction_date as Date,
	t.transaction_type as Type,
	t.transaction_amount as Amount
from
	customer_master c,
	transaction t
where
	c.cust_no = t.cust_no and
	c.cust_name like 'Bunning%' and
	t.transaction_type = 'INVOICE' and
	t.Transaction_date >= 01/01/1997
union

select
	c.cust_no,
	c.cust_name,
	t.hist_trans_date,
	t.hist_trans_type,
	t.hist_trans_amount
from
	customer_master c,
	trans_history t
where
	c.cust_no = t.cust_no and
	c.cust_name like 'Bunning%' and
	t.hist_trans_type = 'INVOICE' and
	t.hist_trans_Date >= 01/01/1997
;
