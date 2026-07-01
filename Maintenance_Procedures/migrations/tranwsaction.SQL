connect stockdev drew drew;

select * from transaction;


SELECT TRANS_USER_ID 
	,TRANS_SYSDATETIME || @exact(@microsecond(TRANS_SYSDATETIME), 0)
	,CUST_NO
	,REFERENCE_ID
	,TRANSACTION_TYPE
	,TRANSACTION_AMOUNT
	,TRANSACTION_DATE
	,TRANSACTION_BY
	,TRANS_AMOUNT_OUTST
	,LABEL_CHARGES
	,POSTAL_CHARGES
	,RAIL_CHARGES
	,FREIGHT_CHARGES
	,TRANS_CREDIT_UNITS
	,TRANSACTION_CODE
	,CREDIT_NOTE_NO
	,ROYALTIES
	,DAYS_TO_PAY
	,TRANSACTION_NOTES
	,COMPANY
	,TRANS_GST

FROM TRANSACTION;

select sum(cust_no)*transaction_amount from transaction where transaction_type = 'INVOICE';

select * from systables where name not like 'SYS%';
