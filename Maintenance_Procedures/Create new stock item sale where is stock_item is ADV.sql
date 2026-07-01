connect stock graham graham;
set timeout 1;

INSERT INTO stock_item_sale

	SELECT
		item_no,2002,0,0,0,0,0,0,0,1,'',0,'N','',0,0,0,0,'',''

	FROM
		stock_item

	WHERE
		tree_type = 'ADV'

	AND 	item_no NOT IN
			(SELECT 
				stock_item_no
			FROM
				stock_item_sale
			WHERE
				year_of_sale = 2002);

commit;

disconnect all;
rollback;

