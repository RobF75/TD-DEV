Notes on maintenance performed on 9/7/97

via SQLConsole have identified that the following tables need to be unloaded, dropped and loaded - to identify
have a look at each table to see if they have any extent pages - the ones that do are the ones which need to have maintenance

cash_application
cultivar
customer_address
customer_contacts
customer_master
customer_order
cust_arnotes
cust_comments
cust_promo
farm_master
growing_sale
label_fields
mailing_list
postcodes
royalty_owner
stock_item
transaction
transport_method
tree_type

after identifying which tables need reorging - deinstall STOCK - delete STOCKDEV and via explorer copy STOCK.dbs and logs
to stockdev directory;

connect stock sysadm dani;
set recovery off;
set bulk on;
lock database;

commit;

unload database  stock.uld on server;
disconnect all;
set server dbntsrv;
drop database stock;
create database stock;
load sql stock.uld on server log db.log start at 1016586 ;
unlock database;


unload sql cult.uld cultivar on server;
unload sql custadd.uld customer_address on server;
unload sql custcont.uld customer_contacts on server;
unload sql custmast.uld customer_master on server;
unload sql custord.uld customer_order on server;
unload sql custar.uld cust_arnotes on server;
unload sql custcan.uld cust_cancellation on server;
unload sql custcom.uld cust_comments on server;
unload sql custordhist.uld cust_order_history on server;
unload sql custprom.uld cust_promo on server;
unload sql frcode.uld freight_codes on server;
unload sql growsale2.uld growing_sale on server;
unload sql loadcust.uld load_customers on server;
unload sql metaddr.uld meet_address on server;
unload sql paintmas.uld paint_master on server;
unload sql rootstck.uld rootstock on server;
unload sql label.uld label_fields on server;
unload sql roypay.uld royalty_payable on server;
unload sql stkitm2.uld stock_item on server;
unload sql itmsale.uld stock_item_sale on server;
unload sql invno.uld inv_no_register on server;



drop table inv_no_registry;

drop table cultivar;
drop table customer_address;
drop table customer_contacts;
drop table customer_master;
drop table customer_order;
drop table cust_arnotes;
drop table cust_cancellation;
drop table cust_comments;
drop table cust_order_history;
drop table cust_promo;
drop table freight_codes;
drop table growing_sale;
drop table load_customers;
drop table meet_address;
drop table paint_master;
drop table rootstock;
drop table label_fields;
drop table royalty_payable;
drop table stock_item;
drop table stock_item_sale;
commit;

load sql invno.uld  on server;

load sql cult.uld  on server;
load sql custadd.uld on server;
load sql custcont.uld on server;
load sql custmast.uld on server;
load sql custord.uld on server;
load sql custar.uld on server;
load sql custcan.uld on server;
load sql custcom.uld on server;
load sql custordhist.uld  on server;
load sql custprom.uld on server;
load sql frcode.uld on server;
load sql growsale2.uld on server;
load sql loadcust.uld on server;
load sql metaddr.uld on server;
load sql paintmas.uld on server;
load sql rootstck.uld on server;
load sql label.uld on server;
load sql roypay.uld on server;
load sql stkitm2.uld on server;
load sql itmsale.uld on server;

commit;

unlock database;
set recovery on;
set bulk off;

disconnect stock;
open up commands.sql and erase all stored commands;
open up newstck.wts and do all of the alter table commands - the ones which havent been unloaded etc will say already has primary key;
then do synonyms;
then do priveleges;
then do triggers if they existed on any of the tables dropped;
then run check database;

check database;

disconnect all;


