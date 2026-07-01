
Connect EDIFACT SYSADM SYSADM;

Drop Table PARTNER;
Drop Table TRANSFER_LOG;
Drop Table INTERCHANGE;
Drop Table MESSAGE;
Drop Table SEGMENT;

Create Table PARTNER
	(ID Integer NOT NULL,
	IDENTIFIER Char (35) NOT NULL,
	NAME Char (20),
	CUST_NO Integer NOT NULL,
	LAST_INBOUND_REF Char(14),
	LAST_OUTBOUND_REF Char(14),
	FTP_SITE Char (50),
	FTP_USERNAME Char (50),
	FTP_PASSWORD Char (50),
	FTP_PORT Integer,
	FTP_REMOTE_INBOX Char (50),
	FTP_REMOTE_OUTBOX Char (50),
	FTP_REMOTE_TEMP Char (50),
	ACTIVATED Char (1), 
	ON_HOLD Char (1),
	TEST_MODE Char (1),
	SEND_CONTRL Char(1),
	SEND_PRICAT Char (1),
	LAST_PRICAT Datetime, 
	SEND_INVOIC Char (1),
	LAST_INVOIC Datetime, 
	SEND_INVRPT Char (1),
	LAST_INVRPT Datetime, 
	SEND_DESADV Char (1),
	LAST_DESADV Datetime, 
	COMMENTS Varchar (60),
	Primary Key (ID));

Create Unique Index IDX_PARTNER
	ON PARTNER (ID);

CREATE PUBLIC SYNONYM PARTNER FOR SYSADM.PARTNER;

COMMIT;

INSERT INTO PARTNER
VALUES (
	1,
	'9317036000001',
	'FLEMINGS',
	31070,
	'',
	'',
	'www.flemings.com.au',
	'flemings',
	'flame15088',
	0,
	'\flemings\edifact\input\',
	'\flemings\edifact\output\',
	'',
	'N',
	'N',
	'N',
	'N',
	'N',
	'',
	'N',
	'',
	'N',
	'',
	'N',
	'',
	'Flemings Nurseries Head Office');

INSERT INTO PARTNER
VALUES (
	2,
	'9312267000008',
	'BUNNINGS',
	611313,
	'28',
	'5',
	'tbits.bunnings.com.au',
	'fle996',
	'bp30kk',
	0,
	'/dropoff/',
	'/pickup/',
	'/processing/',
	'N',
	'N',
	'Y',
	'N',
	'N',
	2004-06-22-15.49.04.430000,
	'N',
	'',
	'N',
	'',
	'N',
	'',
	'Bunnings Head Office');

INSERT INTO PARTNER
VALUES (
	3,
	'98009713704',
	'MITRE 10',
	333488,
	'',
	'',
	'www.mitre10.com.au',
	'flemings',
	'flemings',
	0,
	'\flemings\input\',
	'\flemings\output\',
	'',
	'N',
	'N',
	'N',
	'N',
	'N',
	'',
	'N',
	'',
	'N',
	'',
	'N',
	'',
	'Mitre 10 Head Office');

INSERT INTO PARTNER
VALUES (
	4,
	'3545644',
	'PLANTS PLUS',
	333999,
	'',
	'',
	'www.plantsplus.com.au',
	'flemings',
	'flemings',
	0,
	'\flemings\input\',
	'\flemings\output\',
	'',
	'N',
	'N',
	'N',
	'N',
	'N',
	'',
	'N',
	'',
	'N',
	'',
	'N',
	'',
	'Plants Plus Head Office');

INSERT INTO PARTNER
VALUES (
	5,
	'9300633025540',
	'WOOLWORTHS',
	213022,
	'',
	'',
	'www.woolworthslimited.com.au',
	'flemings',
	'flemings',
	0,
	'\flemings\input\',
	'\flemings\output\',
	'',
	'N',
	'N',
	'N',
	'N',
	'N',
	'',
	'N',
	'',
	'N',
	'',
	'N',
	'',
	'Woolworths Head Office');

INSERT INTO PARTNER
VALUES (
	6,
	'73004700485',
	'KMART',
	310085,
	'',
	'',
	'www.kmart.com.au',
	'flemings',
	'flemings',
	0,
	'\flemings\input\',
	'\flemings\output\',
	'',
	'N',
	'N',
	'N',
	'N',
	'N',
	'',
	'N',
	'',	
	'N',
	'',
	'N',
	'',
	'KMart Head Office');

INSERT INTO PARTNER
VALUES (
	7,
	'9312267000007',
	'BUNNINGS TEST',
	334538,
	'',
	'',
	'192.168.42.128',
	'anonymous',
	'',
	0,
	'/dropoff/',
	'/pickup/',
	'/processing/',
	'Y',
	'N',
	'Y',
	'Y',
	'Y',
	'',
	'Y',
	'',	
	'N',
	'',
	'N',
	'',
	'Bunnings Testing');


COMMIT;

Create Table TRANSFER_LOG
	(ID Integer NOT NULL,
	LOGGED_DATETIME Datetime,
	PARTNER_IDENT Char (35) NOT NULL,
	FILE_NAME Char (50) NOT NULL,
	DIRECTION Char (10),
	Primary Key (ID));

Create Unique Index IDX_TRANSFER_LOG
	ON TRANSFER_LOG (ID);

CREATE PUBLIC SYNONYM TRANSFER_LOG FOR SYSADM.TRANSFER_LOG;

COMMIT;


Create Table SEQ_NUMBERS
	(TRANSACTION_SEQ Integer NOT NULL);
	
CREATE PUBLIC SYNONYM SEQ_NUMBERS FOR SYSADM.SEQ_NUMBERS;

INSERT INTO SEQ_NUMBERS VALUES(0);

COMMIT;


Create Table INTERCHANGE
	(ID Integer NOT NULL,
	FILE_NAME Char (50) NOT NULL,
	SENDER_ID Integer NOT NULL,
	RECIPIENT_ID Integer NOT NULL,
	DIRECTION Char (4),
	CREATED_DATETIME Datetime,
	PROCESSED_DATETIME Datetime,
	INT_REFERENCE Char(14),
	ERROR_CODE SMALLINT,
	ACK_STATUS SMALLINT,
	Primary Key (ID),
	Foreign Key (SENDER_ID) References PARTNER,
	Foreign Key (RECIPIENT_ID) References PARTNER);

Create Unique Index IDX_INTERCHANGE
	ON INTERCHANGE (ID);

CREATE PUBLIC SYNONYM INTERCHANGE FOR SYSADM.INTERCHANGE;

COMMIT;


Create Table MESSAGE
	(ID Integer NOT NULL,
	INTERCHANGE_ID Integer NOT NULL,
	TYPE CHAR (6),
	MSG_REF Integer,
	ERROR_CODE SMALLINT,
	ACK_STATUS SMALLINT,
	Primary Key (ID),
	Foreign Key (INTERCHANGE_ID) References INTERCHANGE);

Create Unique Index IDX_MESSAGE
	ON MESSAGE (ID);

CREATE PUBLIC SYNONYM MESSAGE FOR SYSADM.MESSAGE;

COMMIT;



Create Table SEGMENT
	(ID Integer NOT NULL,
	MESSAGE_ID Integer NOT NULL,
	SEG_POSITION Integer NOT NULL,
	PARENT_ID Integer NOT NULL,
	SEG_GROUP Integer NOT NULL,
	TYPE CHAR (3),
	DATA VARCHAR (254),
	ERROR_CODE Integer,
	Primary Key (ID),
	Foreign Key (MESSAGE_ID) References MESSAGE);

Create Unique Index IDX_SEGMENT
	ON SEGMENT (ID);

CREATE PUBLIC SYNONYM SEGMENT FOR SYSADM.SEGMENT;

COMMIT;

disconnect all;
