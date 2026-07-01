connect stock pdunlop pdunlop;

SELECT
 	COUNT(*)
FROM
 	Stock_Item_Sale
WHERE
	Year_Of_Sale = 2003;



INSERT INTO stock_item_sale
	select
		distinct stock_ITEM_NO,2003,0,0,0,0,0,0,0,NULL,NULL,0,'N','N',0,0,0,0,'Y',0
	from
 		stock_item_sale sis
	where
 		stock_item_no in
			(select
  				item_no
 			from
  				stock_item_sale sis,
 				stock_item si
 			where
  				sis.stock_item_no = si.item_no and
  				year_of_sale = 2002 and
  				bare_root_potted = 'Y') 
	and 
 		stock_item_no not in
			(select
  				item_no
 			from
  				stock_item_sale sis,
  				stock_item si
 			where
  				sis.stock_item_no = si.item_no and
  				year_of_sale = 2003 and
  				bare_root_potted = 'Y') ;


rollback;

 

commit;

disconnect all;

