connect stock graham graham;
set timeout 1;



select
	distinct stock_item_no,
	','
from
	customer_order c,
	stock_item s
where
	c.stock_item_no = s.item_no and
	cust_no = 333485 and
	year_of_sale = 1999 and
	invoiced_flag = 'N' and
	tree_type like 'C%';

update
	customer_order
set
	year_of_sale = 2000,
	batch_year_of_sale = 2000
where
	cust_no = 333485 and
	year_of_sale = 1999 and
	invoiced_flag = 'N' and
	stock_item_no in (		 3514 ,
	 3524 ,
	 4152 ,
	 4177 ,
	 4178 ,
	 4575 ,
	 4598 ,
	 4609 ,
	 4631 ,
	 4676 ,
	 4678 ,
	 4695 ,
	 4696 ,
	 4782 ,
	 4807 ,
	 5015 ,
	 5286 ,
	 5302 ,
	 5303 ,
	 5304 ,
	 6741 ,
	 6745 ,
	 6752 ,
	 6760 ,
	 6813 ,
	 6826 ,
	 6838 ,
	 6936 ,
	 6962 ,
	 6984 ,
	 6985 ,
	 6988 ,
	 7836 ,
	 8020 ,
	 8060 ,
	 8118 ,
	 8127 ,
	 9117 ,
	 9254 ,
	 9269 ,
	 9409 ,
	 9410 ,
	 9624 ,
	 9633 ,
	 9670 ,
	 9673 ,
	 9677 ,
	 9698 ,
	 9700 ,
	 9703 ,
	 9844 ,
	 9926 ,
	 9935 ,
	 9936 ,
	10028 ,
	10169 ,
	10173 ,
	10176 ,
	10182 ,
	10183 ,
	10188 ,
	10191 ,
	10787 ,
	10872 ,
	10910 ,
	11273 ,
	11423 ,
	11452 ,
	11453 ,
	11454 ,
	11455 ,
	11656 ,
	11670 ,
	11678 ,
	11687 ,
	11767 ,
	11769 ,
	12100 ,
	12157 ,
	12163 ,
	12196 ,
	12334 ,
	12387 ,
	12388 ,
	12425 ,
	12631 ,
	12841 ,
	12994 ,
	12996 ,
	12997 ,
	12998 ,
	13000 ,
	13018 ,
	13115 ,
	13230 ,
	13274 ,
	14836 ,
	15337 ,
	15908 ,
	15909 ,
	15910 ,
	15915 ,
	15920 ,
	16252
 ) ;
commit;

select
	tree_type from
	customer_order;
