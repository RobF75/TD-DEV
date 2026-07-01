Connect evaluate sysadm sysadm;
set timeout 1;

GRANT CONNECT TO graham IDENTIFIED BY graham;
GRANT
	DBA
TO
	Graham;
commit;

GRANT
	ALL
ON
	Eval_Item,
	Item_Evaluation
TO
	GRAHAM;


CREATE PUBLIC SYNONYM Eval_Item FOR SYSADM.Eval_Item;
CREATE PUBLIC SYNONYM Item_Evaluation FOR SYSADM.Item_Evaluation ;

DROP public synonym Item_Evaluation;
COMMIT;

select
	*
from
	item_evaluation;
