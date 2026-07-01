connect stockdev graham graham;
set timeout 1;


select '
update
	growing_sale
set
	year_of_sale = 2000,
	est_sale_date = 9/1/1999
where
	location_id ='|| location.location_id ||' and year_of_sale = 1999;'
from
	growing_sale,
	stock_item,
	location
where
	location.location_id = growing_sale.location_id and
	stock_item.item_no = growing_sale.stock_item_no and
	(STOCK_TYPE = 'C' or tree_type like 'C%' ) and
	year_of_sale = 1999
order by
	location.location_id;

select
	*
from
	growing_sale;

 update 	growing_sale set 	year_of_sale = 2000, 	est_sale_date = 9/1/1999 where 	location_id =74478 and year_of_sale = 1999;
 update 	growing_sale set 	year_of_sale = 2000, 	est_sale_date = 9/1/1999 where 	location_id =74479 and year_of_sale = 1999;
 update 	growing_sale set 	year_of_sale = 2000, 	est_sale_date = 9/1/1999 where 	location_id =74480 and year_of_sale = 1999;
 update 	growing_sale set 	year_of_sale = 2000, 	est_sale_date = 9/1/1999 where 	location_id =74481 and year_of_sale = 1999;
 update 	growing_sale set 	year_of_sale = 2000, 	est_sale_date = 9/1/1999 where 	location_id =74482 and year_of_sale = 1999;
 update 	growing_sale set 	year_of_sale = 2000, 	est_sale_date = 9/1/1999 where 	location_id =74483 and year_of_sale = 1999;
 update 	growing_sale set 	year_of_sale = 2000, 	est_sale_date = 9/1/1999 where 	location_id =74484 and year_of_sale = 1999;
 update 	growing_sale set 	year_of_sale = 2000, 	est_sale_date = 9/1/1999 where 	location_id =74485 and year_of_sale = 1999;
 update 	growing_sale set 	year_of_sale = 2000, 	est_sale_date = 9/1/1999 where 	location_id =74486 and year_of_sale = 1999;
 update 	growing_sale set 	year_of_sale = 2000, 	est_sale_date = 9/1/1999 where 	location_id =74487 and year_of_sale = 1999;
 update 	growing_sale set 	year_of_sale = 2000, 	est_sale_date = 9/1/1999 where 	location_id =74488 and year_of_sale = 1999;
 update 	growing_sale set 	year_of_sale = 2000, 	est_sale_date = 9/1/1999 where 	location_id =74489 and year_of_sale = 1999;
 update 	growing_sale set 	year_of_sale = 2000, 	est_sale_date = 9/1/1999 where 	location_id =74490 and year_of_sale = 1999;
 update 	growing_sale set 	year_of_sale = 2000, 	est_sale_date = 9/1/1999 where 	location_id =74491 and year_of_sale = 1999;
 update 	growing_sale set 	year_of_sale = 2000, 	est_sale_date = 9/1/1999 where 	location_id =74492 and year_of_sale = 1999;
 update 	growing_sale set 	year_of_sale = 2000, 	est_sale_date = 9/1/1999 where 	location_id =74493 and year_of_sale = 1999;
 update 	growing_sale set 	year_of_sale = 2000, 	est_sale_date = 9/1/1999 where 	location_id =74494 and year_of_sale = 1999;
 update 	growing_sale set 	year_of_sale = 2000, 	est_sale_date = 9/1/1999 where 	location_id =74495 and year_of_sale = 1999;
 update 	growing_sale set 	year_of_sale = 2000, 	est_sale_date = 9/1/1999 where 	location_id =74496 and year_of_sale = 1999;
 update 	growing_sale set 	year_of_sale = 2000, 	est_sale_date = 9/1/1999 where 	location_id =74497 and year_of_sale = 1999;
 update 	growing_sale set 	year_of_sale = 2000, 	est_sale_date = 9/1/1999 where 	location_id =74498 and year_of_sale = 1999;
 update 	growing_sale set 	year_of_sale = 2000, 	est_sale_date = 9/1/1999 where 	location_id =74499 and year_of_sale = 1999;
 update 	growing_sale set 	year_of_sale = 2000, 	est_sale_date = 9/1/1999 where 	location_id =74500 and year_of_sale = 1999;
 update 	growing_sale set 	year_of_sale = 2000, 	est_sale_date = 9/1/1999 where 	location_id =74501 and year_of_sale = 1999;
 update 	growing_sale set 	year_of_sale = 2000, 	est_sale_date = 9/1/1999 where 	location_id =74502 and year_of_sale = 1999;
 update 	growing_sale set 	year_of_sale = 2000, 	est_sale_date = 9/1/1999 where 	location_id =74503 and year_of_sale = 1999;
 update 	growing_sale set 	year_of_sale = 2000, 	est_sale_date = 9/1/1999 where 	location_id =74504 and year_of_sale = 1999;
 update 	growing_sale set 	year_of_sale = 2000, 	est_sale_date = 9/1/1999 where 	location_id =74505 and year_of_sale = 1999;
 update 	growing_sale set 	year_of_sale = 2000, 	est_sale_date = 9/1/1999 where 	location_id =74506 and year_of_sale = 1999;
 update 	growing_sale set 	year_of_sale = 2000, 	est_sale_date = 9/1/1999 where 	location_id =74507 and year_of_sale = 1999;
 update 	growing_sale set 	year_of_sale = 2000, 	est_sale_date = 9/1/1999 where 	location_id =74508 and year_of_sale = 1999;
 update 	growing_sale set 	year_of_sale = 2000, 	est_sale_date = 9/1/1999 where 	location_id =74509 and year_of_sale = 1999;
 update 	growing_sale set 	year_of_sale = 2000, 	est_sale_date = 9/1/1999 where 	location_id =74510 and year_of_sale = 1999;
 update 	growing_sale set 	year_of_sale = 2000, 	est_sale_date = 9/1/1999 where 	location_id =74511 and year_of_sale = 1999;
 update 	growing_sale set 	year_of_sale = 2000, 	est_sale_date = 9/1/1999 where 	location_id =74512 and year_of_sale = 1999;
 update 	growing_sale set 	year_of_sale = 2000, 	est_sale_date = 9/1/1999 where 	location_id =74513 and year_of_sale = 1999;
 update 	growing_sale set 	year_of_sale = 2000, 	est_sale_date = 9/1/1999 where 	location_id =74514 and year_of_sale = 1999;
 update 	growing_sale set 	year_of_sale = 2000, 	est_sale_date = 9/1/1999 where 	location_id =74515 and year_of_sale = 1999;
 update 	growing_sale set 	year_of_sale = 2000, 	est_sale_date = 9/1/1999 where 	location_id =74516 and year_of_sale = 1999;
 update 	growing_sale set 	year_of_sale = 2000, 	est_sale_date = 9/1/1999 where 	location_id =74517 and year_of_sale = 1999;
 update 	growing_sale set 	year_of_sale = 2000, 	est_sale_date = 9/1/1999 where 	location_id =74518 and year_of_sale = 1999;
 update 	growing_sale set 	year_of_sale = 2000, 	est_sale_date = 9/1/1999 where 	location_id =74519 and year_of_sale = 1999;
 update 	growing_sale set 	year_of_sale = 2000, 	est_sale_date = 9/1/1999 where 	location_id =74520 and year_of_sale = 1999;
 update 	growing_sale set 	year_of_sale = 2000, 	est_sale_date = 9/1/1999 where 	location_id =74521 and year_of_sale = 1999;
 update 	growing_sale set 	year_of_sale = 2000, 	est_sale_date = 9/1/1999 where 	location_id =74522 and year_of_sale = 1999;
 update 	growing_sale set 	year_of_sale = 2000, 	est_sale_date = 9/1/1999 where 	location_id =74523 and year_of_sale = 1999;
 update 	growing_sale set 	year_of_sale = 2000, 	est_sale_date = 9/1/1999 where 	location_id =74524 and year_of_sale = 1999;
 update 	growing_sale set 	year_of_sale = 2000, 	est_sale_date = 9/1/1999 where 	location_id =74525 and year_of_sale = 1999;
 update 	growing_sale set 	year_of_sale = 2000, 	est_sale_date = 9/1/1999 where 	location_id =74526 and year_of_sale = 1999;
 update 	growing_sale set 	year_of_sale = 2000, 	est_sale_date = 9/1/1999 where 	location_id =74527 and year_of_sale = 1999;
 update 	growing_sale set 	year_of_sale = 2000, 	est_sale_date = 9/1/1999 where 	location_id =74528 and year_of_sale = 1999;
 update 	growing_sale set 	year_of_sale = 2000, 	est_sale_date = 9/1/1999 where 	location_id =74529 and year_of_sale = 1999;
 update 	growing_sale set 	year_of_sale = 2000, 	est_sale_date = 9/1/1999 where 	location_id =74530 and year_of_sale = 1999;
 update 	growing_sale set 	year_of_sale = 2000, 	est_sale_date = 9/1/1999 where 	location_id =74531 and year_of_sale = 1999;
 update 	growing_sale set 	year_of_sale = 2000, 	est_sale_date = 9/1/1999 where 	location_id =74532 and year_of_sale = 1999;
 update 	growing_sale set 	year_of_sale = 2000, 	est_sale_date = 9/1/1999 where 	location_id =74533 and year_of_sale = 1999;
 update 	growing_sale set 	year_of_sale = 2000, 	est_sale_date = 9/1/1999 where 	location_id =74534 and year_of_sale = 1999;
 update 	growing_sale set 	year_of_sale = 2000, 	est_sale_date = 9/1/1999 where 	location_id =74535 and year_of_sale = 1999;
 update 	growing_sale set 	year_of_sale = 2000, 	est_sale_date = 9/1/1999 where 	location_id =74536 and year_of_sale = 1999;
  commit;




