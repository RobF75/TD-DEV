connect stockdev graham graham;
set timeout 1;



select
	*
from
	royalties_paid;


select
	*
from
	royalties_paid
where
	royalty_owner_id = 'FNA' and
	roy_per_item > 0 and
	inv_date between 10-1-2007 and 9-30-2008;



update
	royalty_payable 
set 
	amount_payable = null,
	percentage_payable = 10
where
	royalty_owner_id = 'ZA' and
	cultivar_id in(

select
	cult_id
from
	cultivar c
where
	prod_royalty = 'A');

commit;

connect live graham graham;
