connect watering graham graham;
set timeout 1;



alter table 
	pump
add
	sms_number CHAR(13),
	sms_provider VARCHAR(25);
commit;
