connect stockdev graham graham;
set timeout 1;




select
	'insert into stock_item_sale
		values('|| distinct(stock_item_no)||',1999,0,0,0,0,0,0,0,1,'''',0,''N'','''',0,0,0,0,'''','''');'
from
	growing_sale
where
	year_of_sale = 1999 and
	stock_item_no not in
(select
	stock_item_no
from
	stock_item_sale
where
	year_of_sale = 1999)
order by
	stock_item_no
;


		SELECT 
		  	*
		FROM 
			Growing_Sale
		WHERE
			year_of_sale = 2000 and
			second_count > 0 and
			stock_item_no not in (
			SELECT
				stock_item_no 
			FROM
				stock_item_sale
			WHERE
				year_of_sale = 2000);
commit;
Stock_Item_no;

select * from stock_item_sale
where
	stock_item_no = 13278;
