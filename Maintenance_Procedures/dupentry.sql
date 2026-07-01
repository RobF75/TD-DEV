connect stock dani dani;
set timeout 5;
disconnect stockdev;
select cult_desc from cultivar where cult_id = 'ALTORO';

select * from stock_item where cultivar_id = 'LISBETH'; 
select * from stock_item where item_no = 10498;
select * from stock_item where cultivar_id = 'LIZBETH';
update stock_item set cultivar_id = 'LISBETH' where item_no = 7436;
commit;

select * from customer_order where stock_item_no = 1332;
select rowid from customer_order where stock_item_no = 1195;
select rowid from cust_order_history where stock_item_no = 6149;
update customer_order
 set stock_item_no = 8406
 where 
rowid = 'IJAAAAAAMBABAAAAHIFGBDAAAAAAADKICDAEAAAA';


update cust_order_history
 set stock_item_no = 1591
 where 
rowid = 'ENAAAAAAPHHNABAAKLPOADAAAAAAAAPPBHAEAAAA';
commit;

select * from cult_paint_used where cultivar_id = 'LIZBETH';
select * from cult_paint_used where cultivar_id = 'ANNABEL';
delete from cult_paint_used where cultivar_id = 'LIZBETH';
commit;

select * from evaluation where item_no = 11699;
update evaluation set item_no = 7308 where rowid = '';

select rowid from growing_sale where stock_item_no = 1332;
update growing_sale set stock_item_no = 1005 where rowid = 'IKAAAAAAHPBFAAAALDMGBDAAAAAAADOAOCAFAAAA';
commit;
select * from growing_sale where stock_item_no = 855;
commit;

select * from labels where cultivar_id = 'LIZBETH';

select * from prohibition where cult_id = 'LIZBETH';
select * from prohibition where cult_id = 'GOLDLADY';
delete from prohibition where cult_id = 'GLDLADY';
commit;

select * from quotation where stock_item_no = 1332;

select * from royalty_Payable where cultivar_id = 'LIZBETH';
select * from royalty_payable where royalty_owner_id = 'FMN' and total_royalty_due = 101.01;
update royalty_payable set total_royalty_due = 0 where cultivar_id = 'MARIEM';
select * from royalties_paid where cult_root_id = 'YN5417';
commit;
delete from royalty_payable where royalty_owner_id = 'FMN' and roy_instance# = 638 and total_royalty_due = 101.01;
commit;

select rowid from scion_evaluation where stock_item_no = 11699;
select * from scion_evaluation where stock_item_no = 7308;
update scion_evaluation set stock_item_no = 7308 where rowid = 'JBAAAAAABDEEAAAAFJIMBFAAAAAAAEHGKABBAAAA';
commit;

select * from stock_labels where stock_item_no = 1332;
select * from stock_labels where stock_item_no = 1671;
delete from stock_labels where stock_item_no = 1332;
commit;


select * from substitutes where stock_item_no = 11699;


select * from stock_item_sale where stock_item_no = 1332;
select rowid from stock_item_sale where stock_item_no = 11699;
select * from stock_item_sale where stock_item_no = 1005;
delete from stock_item_sale where stock_item_no = 1332;
update stock_item_sale set stock_item_no = 1930 where rowid = 'HLAAAAAAGKFFAAAAEMKHBKAAAAAAACGADHAFAAAA';
commit;

delete from stock_item where item_no = 1332;
commit;

delete from cultivar where cult_id = 'LIZBETH';
commit;
