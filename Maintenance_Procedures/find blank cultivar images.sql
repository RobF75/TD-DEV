connect stock pdunlop pdunlop;

select cv_image, variety, cult_desc from cultivar where 
cv_upload = 'Y' 

or cult_id in (select cult_id from cult_home_garden where web_listing_flag = 'Y')
order by 1,2,3;



update cultivar
set cv_image = 'blank.jpg' 
where cv_image is null
AND
	(cv_upload = 'Y' 

or cult_id in (select cult_id from cult_home_garden where web_listing_flag = 'Y'));

rollback;


disconnect all;
