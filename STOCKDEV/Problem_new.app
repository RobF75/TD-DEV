.head 0 +  Application Description: Problem reporting database. 
Created in CTD 1.5.1 PTF6

Version History:
- 20/09/01 Version 1.0 Original
- 14/03/02 Version 1.1 Added string search capabilitiy
- 30/10/02 Version 1.2 Removed separate detail record form and added table to main form
- 25/02/03 Version 1.3 Added new class based table resizing on form size change
- 01/07/03 Version 1.4 Added new 'Auto Complete' combo box class
- 02/07/03 Version 1.5 Added Auditing component and sort by 'updated' dates
- 12/09/03 Version 1.6 Added screenshot pasting ability
- 30/09/03 Version 1.7 Changed email notification to use SMTP directly rather than installed email client
- 27/01/04 Version 1.8 Added table sorting ability by clicking on the desired column header 
- 09/02/04 Version 1.9 Added program instance check to ensure only one exe is started per workstation
- 10/02/04 Version 2.0 Re-arranged function code location and added release lock mode for record handling
- 26/05/04 Version 2.1 Updated SMTPEmail function call to use new DLL and hardcoded APL paths
- 24/08/04 Version 2.2 Added edit mode flagging to stop duplicate changes occurring to individual records

.data CLASSPROPSSIZE
0000: 5E00
.enddata
.data CLASSPROPS
0000: 4170705061746800 26006B3A5C63656E 747572615C636F6D 6D6F6E61706C733B
0020: 6B3A5C63656E7475 72615C636C617373 0041707050617468 4C656E0004002600
0040: 000000557365476C 6F62616C50617468 0004000100000000 000000000000
.enddata
.head 1 -  Outline Version - 4.0.32
.head 1 +  Design-time Settings
.data VIEWINFO
0000: 6F00000001000000 FFFF01000D004347 5458566965775374 6174650400010000
0020: 0000000000030100 002C000000020000 0003000000FFFFFF FFFFFFFFFFFCFFFF
0040: FFE8FFFFFFFFFFFF FF000000007C0200 004D010000010000 0001000000010000
0060: 000F4170706C6963 6174696F6E497465 6D00000000
.enddata
.data DT_MAKERUNDLG
0000: 00000000194B3A5C 43454E545552415C 69636F6E735C4255 47532E49434F1F4B
0020: 3A5C43454E545552 415C53544F434B44 45565C50726F626C 656D2E6578651F4B
0040: 3A5C43454E545552 415C53544F434B44 45565C50726F626C 656D2E646C6C1F4B
0060: 3A5C43454E545552 415C53544F434B44 45565C50726F626C 656D2E6170630000
0080: 010101155A3A5C50 65746572735C5072 6F626C656D2E7275 6E155A3A5C506574
00A0: 6572735C50726F62 6C656D2E646C6C15 5A3A5C5065746572 735C50726F626C65
00C0: 6D2E617063000001 0101155A3A5C5065 746572735C50726F 626C656D2E617064
00E0: 155A3A5C50657465 72735C50726F626C 656D2E646C6C155A 3A5C506574657273
0100: 5C50726F626C656D 2E61706300000101 01155A3A5C506574 6572735C50726F62
0120: 6C656D2E61706C15 5A3A5C5065746572 735C50726F626C65 6D2E646C6C155A3A
0140: 5C5065746572735C 50726F626C656D2E 6170630000010101
.enddata
.head 2 -  Outline Window State: Normal
.head 2 +  Outline Window Location and Size
.data VIEWINFO
0000: 6600040003002D00 0000000000000000 0000B71E5D0E0500 1D00FFFF4D61696E
0020: 0000000000000000 0000000000000000 0000003B00010000 00000000000000E9
0040: 1E800A00008600FF FF496E7465726E61 6C2046756E637469 6F6E730000000000
0060: 0000000000000000 0000000000003200 0100000000000000 0000E91E800A0000
0080: DF00FFFF56617269 61626C6573000000 0000000000000000 0000000000000000
00A0: 3000010000000000 00000000F51E100D 0000F400FFFF436C 6173736573000000
00C0: 0000000000000000 0000000000000000
.enddata
.data VIEWSIZE
0000: D000
.enddata
.head 3 -  Left: -0.013"
.head 3 -  Top: 0.0"
.head 3 -  Width:  8.013"
.head 3 -  Height: 4.969"
.head 2 +  Options Box Location
.data VIEWINFO
0000: D4180909B80B1A00
.enddata
.data VIEWSIZE
0000: 0800
.enddata
.head 3 -  Visible? Yes
.head 3 -  Left: 4.15"
.head 3 -  Top: 1.885"
.head 3 -  Width:  3.8"
.head 3 -  Height: 2.073"
.head 2 +  Class Editor Location
.head 3 -  Visible? No
.head 3 -  Left: 0.575"
.head 3 -  Top: 0.094"
.head 3 -  Width:  5.063"
.head 3 -  Height: 2.719"
.head 2 +  Tool Palette Location
.head 3 -  Visible? No
.head 3 -  Left: 6.388"
.head 3 -  Top: 0.729"
.head 2 -  Fully Qualified External References? Yes
.head 2 -  Reject Multiple Window Instances? Yes
.head 2 -  Enable Runtime Checks Of External References? Yes
.head 2 -  Use Release 4.0 Scope Rules? No
.head 1 +  Libraries
.head 2 -  File Include: vtwin.apl
.head 2 -  File Include: K:\Centura\CommonApls\mimg.apl
.head 2 -  File Include: K:\Centura\CommonApls\SMTPEmail.apl
.head 1 +  Global Declarations
.head 2 +  Window Defaults
.head 3 +  Tool Bar
.head 4 -  Display Style? Etched
.head 4 -  Font Name: MS Sans Serif
.head 4 -  Font Size: 8
.head 4 -  Font Enhancement: System Default
.head 4 -  Text Color: System Default
.head 4 -  Background Color: System Default
.head 3 +  Form Window
.head 4 -  Display Style? Etched
.head 4 -  Font Name: MS Sans Serif
.head 4 -  Font Size: 8
.head 4 -  Font Enhancement: System Default
.head 4 -  Text Color: System Default
.head 4 -  Background Color: System Default
.head 3 +  Dialog Box
.head 4 -  Display Style? Etched
.head 4 -  Font Name: MS Sans Serif
.head 4 -  Font Size: 8
.head 4 -  Font Enhancement: System Default
.head 4 -  Text Color: System Default
.head 4 -  Background Color: System Default
.head 3 +  Top Level Table Window
.head 4 -  Font Name: MS Sans Serif
.head 4 -  Font Size: 8
.head 4 -  Font Enhancement: System Default
.head 4 -  Text Color: System Default
.head 4 -  Background Color: System Default
.head 3 +  Data Field
.head 4 -  Font Name: Use Parent
.head 4 -  Font Size: Use Parent
.head 4 -  Font Enhancement: Use Parent
.head 4 -  Text Color: Use Parent
.head 4 -  Background Color: Use Parent
.head 3 +  Multiline Field
.head 4 -  Font Name: Use Parent
.head 4 -  Font Size: Use Parent
.head 4 -  Font Enhancement: Use Parent
.head 4 -  Text Color: Use Parent
.head 4 -  Background Color: Use Parent
.head 3 +  Spin Field
.head 4 -  Font Name: Use Parent
.head 4 -  Font Size: Use Parent
.head 4 -  Font Enhancement: Use Parent
.head 4 -  Text Color: Use Parent
.head 4 -  Background Color: Use Parent
.head 3 +  Background Text
.head 4 -  Font Name: Use Parent
.head 4 -  Font Size: Use Parent
.head 4 -  Font Enhancement: Use Parent
.head 4 -  Text Color: Use Parent
.head 4 -  Background Color: Use Parent
.head 3 +  Pushbutton
.head 4 -  Font Name: Use Parent
.head 4 -  Font Size: Use Parent
.head 4 -  Font Enhancement: Use Parent
.head 3 +  Radio Button
.head 4 -  Font Name: Use Parent
.head 4 -  Font Size: Use Parent
.head 4 -  Font Enhancement: Use Parent
.head 4 -  Text Color: Use Parent
.head 4 -  Background Color: Use Parent
.head 3 +  Check Box
.head 4 -  Font Name: Use Parent
.head 4 -  Font Size: Use Parent
.head 4 -  Font Enhancement: Use Parent
.head 4 -  Text Color: Use Parent
.head 4 -  Background Color: Use Parent
.head 3 +  Option Button
.head 4 -  Font Name: Use Parent
.head 4 -  Font Size: Use Parent
.head 4 -  Font Enhancement: Use Parent
.head 3 +  Group Box
.head 4 -  Font Name: Use Parent
.head 4 -  Font Size: Use Parent
.head 4 -  Font Enhancement: Use Parent
.head 4 -  Text Color: Use Parent
.head 4 -  Background Color: Use Parent
.head 3 +  Child Table Window
.head 4 -  Font Name: Use Parent
.head 4 -  Font Size: Use Parent
.head 4 -  Font Enhancement: Use Parent
.head 4 -  Text Color: Use Parent
.head 4 -  Background Color: Use Parent
.head 3 +  List Box
.head 4 -  Font Name: Use Parent
.head 4 -  Font Size: Use Parent
.head 4 -  Font Enhancement: Use Parent
.head 4 -  Text Color: Use Parent
.head 4 -  Background Color: Use Parent
.head 3 +  Combo Box
.head 4 -  Font Name: Use Parent
.head 4 -  Font Size: Use Parent
.head 4 -  Font Enhancement: Use Parent
.head 4 -  Text Color: Use Parent
.head 4 -  Background Color: Use Parent
.head 3 +  Line
.head 4 -  Line Color: Use Parent
.head 3 +  Frame
.head 4 -  Border Color: Use Parent
.head 4 -  Background Color: 3D Face Color
.head 3 +  Picture
.head 4 -  Border Color: Use Parent
.head 4 -  Background Color: Use Parent
.head 2 +  Formats
.head 3 -  Number: 0'%'
.head 3 -  Number: #0
.head 3 -  Number: ###000
.head 3 -  Number: ###000;'($'###000')'
.head 3 -  Date/Time: hh:mm:ss AMPM
.head 3 -  Date/Time: M/d/yy
.head 3 -  Date/Time: MM-dd-yy
.head 3 -  Date/Time: dd-MMM-yyyy
.head 3 -  Date/Time: MMM d, yyyy
.head 3 -  Date/Time: MMM d, yyyy hh:mm AMPM
.head 3 -  Date/Time: MMMM d, yyyy hh:mm AMPM
.head 2 +  External Functions
.head 2 +  Constants
.data CCDATA
0000: 3000000000000000 0000000000000000 00000000
.enddata
.data CCSIZE
0000: 1400
.enddata
.head 3 +  System
.head 4 -  Number: BIT0 = 0x80
.head 4 -  Number: BIT1 = 0x40
.head 4 -  Number: BIT2 = 0x20
.head 4 -  Number: BIT3 = 0x10
.head 4 -  Number: BIT4 = 0x08
.head 4 -  Number: BIT5 = 0x04
.head 4 -  Number: BIT6 = 0x02
.head 4 -  Number: BIT7 = 0x01
.head 4 -  Number: BITA = 0xFF
.head 4 -  Number: BITZ = 0x00
.head 4 -  Number: BITX0 = BITA - BIT0
.head 4 -  Number: BITX1 = BITA - BIT1
.head 4 -  Number: BITX2 = BITA - BIT2
.head 4 -  Number: BITX3 = BITA - BIT3
.head 4 -  Number: BITX4 = BITA - BIT4
.head 4 -  Number: BITX5 = BITA - BIT5
.head 4 -  Number: BITX6 = BITA - BIT6
.head 4 -  Number: BITX7 = BITA - BIT7
.head 3 +  User
.head 4 -  Number: PAM_DISABLE = SAM_User + 1			! Disables Selected Window Items
.head 4 -  Number: PAM_ENABLE = SAM_User + 2			! Enables Selected Window Items
.head 4 -  Number: PAM_CLEARFIELD = SAM_User + 3			! Clears Window Items fields
.head 4 -  Number: PAM_ENABLECHILDREN = SAM_User + 4		! Parent Based Window Enabling
.head 4 -  Number: PAM_DISABLECHILDREN = SAM_User + 5		! Parent Based Window Disabling
.head 4 -  Number: PAM_CLEARCHILDREN = SAM_User + 6		! Parent Based Item Field Clearing
.head 4 -  Number: PAM_ENABLEEDIT = SAM_User + 7			! Enable existing record editing
.head 4 -  Number: PAM_EXPANDLISTITEM = SAM_User + 8		! Expand row details into fields 
.head 4 -  Number: PAM_SETINSTANCEVARS = SAM_User + 9		! Item Tooltip instances
.head 4 -  Number: PM_FORM_RESIZED = SAM_User + 50		! Form Resizing
.head 4 -  !
.head 4 -  ! ! Windows messages
.head 4 -  Number: WM_KEYDOWN = 0x0100				! Type ahead combo use
.head 4 -  Number: WM_KEYUP = 0x0101				! Type ahead combo use
.head 4 -  Number: VK_Backspace    = 0x08				! Type ahead combo use
.head 4 -  Number: VK_Delete       = 0x2e				! Type ahead combo use
.head 4 -  !
.head 4 -  Number: CB_GETEDITSEL = 0x0140				! Type ahead combo use
.head 4 -  Number: CB_SETEDITSEL = 0x0142				! Type ahead combo use
.head 3 -  Enumerations
.head 2 -  Resources
.head 2 +  Variables
.head 3 -  Sql Handle: hSqlError						! Error processing handle
.head 3 -  Number: nSqlError							! Error Number 
.head 3 -  String: sNum							! String version of error number
.head 3 -  String: sErrmsg							! Error message text
.head 3 -  Number: nErrorPos							! Position of error
.head 3 -  ! Number: nSearchType						! Search Type
.head 3 -  ! String: sSqlSearch							! Search criteria sql statement
.head 3 -  ! Sql Handle: hSqlSearch						! Handle for search Sql statement
.head 3 -  ! String: sSearchString						! Search string
.head 3 -  ! Window Handle: hWndList						! Window Handle reference for List form
.head 3 -  ! Window Handle: hWndDetail					! Window Handle reference for Detail form
.head 3 -  ! Window Handle: hWndEdit						! Window Handle reference for record editing
.head 3 -  ! Number: nProbNo							! Problem Number reference for form switching
.head 3 -  ! Number: nStatId							! Numeric value of problem STATUS
.head 3 -  ! Number: nTypeId							! Numeric value of problem TYPE
.head 3 -  ! Number: nPrtyId							! Numeric value of problem PRIORITY
.head 3 -  ! Number: nRaisedBy						! Numeric value of User that raised the problem					
.head 3 -  ! Number: nAssigned						! Numeric value of the programmer who is assigned to the problem		
.head 3 -  ! Number: nProgram						! Numeric value of the programs affected		
.head 3 -  ! String: sProbNo							! String version of problem number
.head 3 -  ! Number: nReturnCode						! Gerneral purpose Return Code
.head 3 -  ! Boolean: bOk							! General purpose flag
.head 3 -  ! Number: nSelectedItem						! General purpose item selection value
.head 3 -  ! String: sColumn							! Search in this column
.head 3 -  ! String: sTable							! Search in this table
.head 3 -  ! String: sOrder							! Display results in this order
.head 3 -  ! String: sWhere							! Match on this item
.head 3 -  ! String: sAssigned							! String value of programmer to be emailed
.head 3 -  ! Long String: lsProbDetails						! Problem details for email
.head 3 -  ! Number: nAssignedPrior						! Prior assignment value
.head 3 -  ! Boolean: bNotEqualToFlag						! Search Equal / Not Equal flag
.head 3 -  ! Number: nRowCount						! Count of matching table items displayed
.head 3 -  ! String: sImageData							! String representation of Image relating to problem
.head 3 -  ! Long String: sImageData							! String representation of Image relating to problem
.head 3 -  ! Boolean: bSaveImageToDB
.head 2 +  Internal Functions
.head 3 +  ! Function: fnFindRecord
.head 4 -  Description: Builds SQL search query based upon dialog box selection criteria
.head 4 -  Returns 
.head 4 +  Parameters 
.head 5 -  String: sSearchString
.head 5 -  Number: nSearchType
.head 5 -  Boolean: bNotEqualToFlag
.head 5 -  ! Boolean: bDescOrder   ! **** FUTURE ***!
.head 4 -  Static Variables 
.head 4 +  Local variables 
.head 5 -  String: sSqlWhere							! Search 'WHERE' parameters
.head 5 -  String: sSqlOrder							! Search 'ORDER BY' Parameters
.head 4 +  Actions 
.head 5 -  Call SalWaitCursor( TRUE )
.head 5 +  If sSearchString = STRING_Null					! If no search value was selected from the list
.head 6 +  If nSearchType = 10						! If searching by Last Updated dates
.head 7 -  Call SalDateToStr( SalDateCurrent(  ), sSearchString )			! Set default date/time
.head 6 +  Else 
.head 7 -  Set nSearchType = 0						! Otherwise - Set a default search type
.head 5 +  Select Case (nSearchType)						! Build Search details based on given parameters
.head 6 +  Case 0				! Show All Items
.head 7 +  If bNotEqualToFlag = TRUE					! If NOT Equal To flag set
.head 8 -  Set sSqlWhere = ' PROBLEM.PROB_ID != PROBLEM.PROB_ID '		! Set Dummy sort field
.head 7 +  Else 
.head 8 -  Set sSqlWhere = ' PROBLEM.PROB_ID = PROBLEM.PROB_ID '		! Set Dummy sort field
.head 7 -  Set sSqlOrder = 'PROBLEM.PROB_ID DESC'				! Sort Order
.head 7 -  Break 
.head 6 +  Case 1				! Search by Problem Number
.head 7 +  If bNotEqualToFlag = TRUE					! If NOT Equal To flag set
.head 8 -  Set sSqlWhere = ' PROBLEM.PROB_ID != :sSearchString '		! Select sort field
.head 7 +  Else 
.head 8 -  Set sSqlWhere = ' PROBLEM.PROB_ID = :sSearchString '		! Select sort field
.head 7 -  Set sSqlOrder = 'PROBLEM.PROB_ID DESC'				! Sort Order
.head 7 -  Break 
.head 6 +  Case 2				! Search by Status
.head 7 +  If bNotEqualToFlag = TRUE					! If NOT Equal To flag set
.head 8 -  Set sSqlWhere = ' STATUS.STAT_NAME != :sSearchString '		! Select sort field
.head 7 +  Else 
.head 8 -  Set sSqlWhere = ' STATUS.STAT_NAME = :sSearchString '		! Select sort field
.head 7 -  Set sSqlOrder = 'PROBLEM.PROB_ID DESC'				! Sort Order
.head 7 -  Break 
.head 6 +  Case 3				! Search by Type
.head 7 +  If bNotEqualToFlag = TRUE					! If NOT Equal To flag set
.head 8 -  Set sSqlWhere = ' TYPE.TYPE_NAME != :sSearchString '		! Select sort field
.head 7 +  Else 
.head 8 -  Set sSqlWhere = ' TYPE.TYPE_NAME = :sSearchString '		! Select sort field
.head 7 -  Set sSqlOrder = 'PROBLEM.PROB_ID DESC'				! Sort Order
.head 7 -  Break 
.head 6 +  Case 4				! Search by Priority
.head 7 +  If bNotEqualToFlag = TRUE					! If NOT Equal To flag set
.head 8 -  Set sSqlWhere = ' PRIORITY.PRTY_NAME != :sSearchString '		! Select sort field
.head 7 +  Else 
.head 8 -  Set sSqlWhere = ' PRIORITY.PRTY_NAME = :sSearchString '		! Select sort field
.head 7 -  Set sSqlOrder = 'PROBLEM.PROB_ID DESC'				! Sort Order
.head 7 -  Break 
.head 6 +  Case 5				! Search by Raised By
.head 7 +  If bNotEqualToFlag = TRUE					! If NOT Equal To flag set
.head 8 -  Set sSqlWhere = ' USERS.USER_NAME != :sSearchString '		! Select sort field
.head 7 +  Else 
.head 8 -  Set sSqlWhere = ' USERS.USER_NAME = :sSearchString '		! Select sort field
.head 7 -  Set sSqlOrder = 'PROBLEM.PROB_ID DESC'				! Sort Order
.head 7 -  Break 
.head 6 +  Case 6				! Search by Raised Date
.head 7 +  If bNotEqualToFlag = TRUE					! If NOT Equal To flag set
.head 8 -  Set sSqlWhere = ' PROBLEM.RAISED_DATE != :sSearchString '		! Select sort field
.head 7 +  Else 
.head 8 -  Set sSqlWhere = ' PROBLEM.RAISED_DATE = :sSearchString '		! Select sort field
.head 7 -  Set sSqlOrder = 'PROBLEM.PROB_ID DESC'				! Sort Order
.head 7 -  Break 
.head 6 +  Case 7				! Search by Modified Program
.head 7 -  Set sColumn = 'PROG_ID'						! Set parameter to return
.head 7 -  Set sTable = 'PROGRAM'						! Set table to search
.head 7 -  Set sWhere = 'PROG_NAME'					! Set parameter to match
.head 7 -  Call fnFindKey( sColumn, sTable, sWhere, sSearchString, nSelectedItem  )	! Go to find the items PKY value
.head 7 -  Set sSearchString =  SalNumberToStrX( nSelectedItem, 0 )		! Convert numeric PKY
.head 7 +  If bNotEqualToFlag = TRUE					! If NOT Equal To flag set
.head 8 -  Set sSqlWhere = '
	PROG_ID NOT IN
		( SELECT
			PROG_ID
		FROM
			PROBLEM
		WHERE
	 		@MOD(( PROG_ID / '|| sSearchString ||' ), 2 ) >= 1 )'	! Select sort field
.head 7 +  Else 
.head 8 -  Set sSqlWhere = '
	PROG_ID IN
		( SELECT
			PROG_ID
		FROM
			PROBLEM
		WHERE
	 		@MOD(( PROG_ID / '|| sSearchString ||' ), 2 ) >= 1 )'	! Select sort field
.head 7 -  Set sSqlOrder = 'PROBLEM.PROB_ID DESC'				! Sort Order
.head 7 -  Break 
.head 6 +  Case 8				! Search by Programmer Assigned to Fix Problem
.head 7 +  If bNotEqualToFlag = TRUE					! If NOT Equal To flag set
.head 8 -  Set sSqlWhere = ' PROGRAMMERS.PGMR_NAME != :sSearchString '	! Select sort field
.head 7 +  Else 
.head 8 -  Set sSqlWhere = ' PROGRAMMERS.PGMR_NAME = :sSearchString '	! Select sort field
.head 7 -  Set sSqlOrder = 'PROBLEM.PROB_ID DESC'				! Sort Order
.head 7 -  Break 
.head 6 +  Case 9				! Search by Problem / Resolution text in LONG VARCHAR columns
.head 7 -  Set sSqlWhere = 
	' (@SCAN(PROBLEM.PROB_DETAILS,:sSearchString) > -1
	OR @SCAN(PROBLEM.ACTION_LOG,:sSearchString) > -1)'
.head 7 -  Set sSqlOrder = 'PROBLEM.PROB_ID DESC'				! Sort Order
.head 7 -  Break 
.head 6 +  Case 10
.head 7 -  Set sSqlWhere = ' PROBLEM.LAST_UPDATED <= :sSearchString '	! Set Dummy sort field
.head 7 -  Set sSqlOrder = 'PROBLEM.LAST_UPDATED DESC'			! Sort Order
.head 7 -  Break 
.head 6 +  Default 
.head 7 +  If bNotEqualToFlag = TRUE					! If NOT Equal To flag set
.head 8 -  Set sSqlWhere = ' PROBLEM.PROB_ID != PROBLEM.PROB_ID '		! Set Dummy sort field
.head 7 +  Else 
.head 8 -  Set sSqlWhere = ' PROBLEM.PROB_ID = PROBLEM.PROB_ID '		! Set Dummy sort field
.head 7 -  Set sSqlOrder = 'PROBLEM.PROB_ID DESC'				! Sort Order
.head 7 -  Break 
.head 5 +  If sSqlWhere != ''							! If search criteria exists, find the matching records
.head 6 -  Set sSqlSearch = '
	SELECT
		PROB_ID,
		STAT_NAME,
		STATUS.STAT_ID,
		TYPE_NAME,
		TYPE.TYPE_ID,
		PRTY_NAME,
		PRIORITY.PRTY_ID,
		USER_NAME,
		USER_ID,
		RAISED_DATE,
		PGMR_NAME,
		ASSIGNED_ID,
		ASSIGNED_DATE,
		PROB_DETAILS,
		ACTION_LOG,
		PROG_ID
	FROM
		PROBLEM,
		STATUS,
		TYPE,
		PRIORITY,
		USERS,
		PROGRAMMERS
	INTO
		:frmMainScreen.tblSorted.colProbNo,
		:frmMainScreen.tblSorted.colStatus,
		:frmMainScreen.tblSorted.colStatusId,
		:frmMainScreen.tblSorted.colType,
		:frmMainScreen.tblSorted.colTypeId,
		:frmMainScreen.tblSorted.colPriority,
		:frmMainScreen.tblSorted.colPriorityId,
		:frmMainScreen.tblSorted.colRaisedBy,
		:frmMainScreen.tblSorted.colRaisedId,
		:frmMainScreen.tblSorted.colRaisedDate,
		:frmMainScreen.tblSorted.colAssignedTo,
		:frmMainScreen.tblSorted.colAssignedId,
		:frmMainScreen.tblSorted.colAssignedDate,
		:frmMainScreen.tblSorted.colProbDetails,
		:frmMainScreen.tblSorted.colActions,
		:frmMainScreen.tblSorted.colProgram
	WHERE
		' || sSqlWhere || '
	AND	PROBLEM.STAT_ID = STATUS.STAT_ID
	AND	PROBLEM.TYPE_ID = TYPE.TYPE_ID
	AND	PROBLEM.PRTY_ID = PRIORITY.PRTY_ID
	AND	PROBLEM.RAISED_ID = USERS.USER_ID
	AND	PROBLEM.ASSIGNED_ID = PROGRAMMERS.PGMR_ID
	ORDER BY
		' || sSqlOrder || ''
.head 6 -  Call SqlConnect( hSqlSearch )					! Connect to database
.head 6 -  Call SalTblReset( hWndForm )					! Ensure list is empty
.head 6 -  Call SalTblPopulate ( frmMainScreen.tblSorted, hSqlSearch, sSqlSearch, TBL_FillAll )	! Now Fill it
.head 6 -  Call SalTblFetchRow( frmMainScreen.tblSorted, TBL_MinRow )		! Get resultant rows
.head 6 -  Call SqlGetResultSetCount ( hSqlSearch, nRowCount )			! Get count of matching items
.head 6 -  Call SqlDisconnect( hSqlSearch )					! Disconnect from DB
.head 6 -  Call SalStatusSetText ( frmMainScreen, 'Matching Item count = ' || SalNumberToStrX( nRowCount, 0 ))
.head 6 -  Call SalWaitCursor( FALSE )
.head 6 -  Return TRUE							! Process successfully
.head 5 +  Else 
.head 6 -  Call SalWaitCursor( FALSE )
.head 6 -  Return FALSE							! Process failed
.head 3 +  ! Function: fnFindKey
.head 4 -  Description: Based on the given column, table and search parameters, this will return the item's primary key value
.head 4 +  Returns 
.head 5 -  Boolean: 
.head 4 +  Parameters 
.head 5 -  String: sColumn
.head 5 -  String: sTable
.head 5 -  String: sWhere
.head 5 -  String: sSearchString
.head 5 -  Receive Number: nSelectedItem
.head 4 -  Static Variables 
.head 4 +  Local variables 
.head 5 -  String: sSqlSelectedItem						! SQL statement string
.head 5 -  Sql Handle: hSqlSelectedItem					! SQL statement connection handle
.head 4 +  Actions 
.head 5 -  Set nSelectedItem = 0						! Set default return vlaue
.head 5 +  If sColumn = STRING_Null						! If Search column is blank
.head 6 -  Call SalMessageBox( 'Search COLUMN variable is null. Unable to resolve return value', 'FindKey function', MB_Ok )
.head 5 +  Else If sTable = STRING_Null					! If search table value is blank
.head 6 -  Call SalMessageBox( 'Search TABLE variable is null. Unable to resolve return value', 'FindKey function', MB_Ok )
.head 5 +  Else If sWhere = STRING_Null					! If Where clause is blank
.head 6 -  Call SalMessageBox( 'Search WHERE variable is null. Unable to resolve return value', 'FindKey function', MB_Ok )
.head 5 +  Else 
.head 6 -  Set sSqlSelectedItem = '
	SELECT 
		'|| sColumn ||' 
	FROM 
		'|| sTable ||' 
	INTO
		:nSelectedItem
	WHERE
		'|| sWhere ||' = :sSearchString'			! Use items from the predefined table and column
.head 6 -  Call SqlConnect( hSqlSelectedItem )					! Connect to Database
.head 6 -  Call SqlPrepareAndExecute( hSqlSelectedItem, sSqlSelectedItem )		! Build the query
.head 6 -  Call SqlFetchRow ( hSqlSelectedItem, 0, nReturnCode )			! Get the result
.head 6 -  Call SqlDisconnect (hSqlSelectedItem)				! Disconnect from Database
.head 5 -  Return TRUE							! Return the result to caller	
.head 3 +  ! Function: fnBitTest
.head 4 -  Description: Checks given field ( sBitField ) in table (sBitTable) for desired bit value (nBitValue)
.head 4 -  Returns 
.head 4 -  Parameters 
.head 4 -  Static Variables 
.head 4 +  Local variables 
.head 5 -  String: sBitSql
.head 5 -  String: sBitField
.head 5 -  String: sBitTable
.head 5 -  Number: nBitValue
.head 4 +  Actions 
.head 5 -  Set sBitSql = '
SELECT  
	'|| sBitField ||'
FROM 
	'|| sBitTable ||'
WHERE
	( @MOD( ( '|| sBitField ||' / '|| nBitValue ||' ), 2 ) >= 1 ) '
.head 3 +  ! Function: fnSendEmail
.head 4 -  Description: Send an SMTP email to notify the assigned programmer of the problem
.head 4 -  Returns 
.head 4 -  Parameters 
.head 4 -  Static Variables 
.head 4 +  Local variables 
.head 5 -  String: sRecipient							! Deliver to
.head 5 -  String: sSender							! Send from
.head 5 -  String: sSubject							! Email header
.head 5 -  String: sBodyText							! Text of email
.head 5 -  String: sAttachment						! Attachment location
.head 5 -  String: sEmailServer						! Host name of email server
.head 5 -  Number: nPort							! host server SMTP port
.head 4 +  Actions 
.head 5 -  !
.head 5 -  Set sRecipient = sAssigned||'@flemings.com.au'			! Send to assigned programmer
.head 5 +  If SqlUser = STRING_Null
.head 6 -  Set sSender = 'Automated@flemings.com.au'				! Default Sender is 'Automated'
.head 5 +  Else 
.head 6 -  Set sSender = SqlUser || '@flemings.com.au'				! Use current user as sender
.head 5 -  Set sSubject = 'New Problem Assigned - Number '||sProbNo||''		! Email title
.head 5 -  Set sBodyText = 'Problem number '||sProbNo||' has just been assigned to you by '||SqlUser||'.'		! Body text
.head 5 -  Set sBodyText = sBodyText ||
	SalNumberToChar( 13 ) || SalNumberToChar( 10 ) ||
	SalNumberToChar( 13 ) || SalNumberToChar( 10 ) ||
	'The problem text is:' ||
	SalNumberToChar( 13 ) || SalNumberToChar( 10 ) || 
	lsProbDetails  
.head 5 -  Set sAttachment = STRING_Null					! No attachments to send
.head 5 -  !
.head 5 -  Set sEmailServer = 'mail'						! Email server name
.head 5 -  Set nPort = 25							! Email SMTP port
.head 5 -  !
.head 5 -  Call SalWaitCursor( TRUE )
.head 5 -  Call SMTPSend( sRecipient, sSender, sSubject, sBodyText, sAttachment, sEmailServer, nPort)	 ! Send mail
.head 5 -  Call SalWaitCursor( FALSE )
.head 5 -  !
.head 5 -  Call SalModalDialog ( dlgEmailSentSplash, hWndForm )			! Call the email transmission splash screen				
.head 2 -  Named Menus
.head 2 +  Class Definitions
.head 3 +  General Window Class: cControlParent
.head 4 -  Description: Use this as a common parent for all controls that need to
handle resizing of the parent form.
.head 4 -  Derived From
.head 4 -  Class Variables
.head 4 +  Instance Variables
.head 5 -  ! internal variables:
.head 5 -  Boolean: m_ResizeRight
.head 5 -  Boolean: m_ResizeBottom
.head 5 -  Boolean: m_AlignWidth
.head 5 -  Boolean: m_AlignHeight
.head 5 -  Number: m_DX	! distance to the right border of the parent form
.head 5 -  Number: m_DY	! distance to the bottom border of the parent form
.head 5 -  Number: m_MinX	! minimum x-position or minimum-width (depends on fStyle)
.head 5 -  Number: m_MinY	! minimum y-position or minimum-height (depends on fStyle)
.head 5 -  Number: m_LastW	! store last width
.head 5 -  Number: m_LastH	! store last height
.head 4 +  Functions
.head 5 -  !
.head 5 -  ! Initialize the control:
.head 5 +  Function: InitResize
.head 6 -  Description: Call InitResize( bResizeRight, bResizeBottom )
<bResizeRight>	TRUE: resize width, when parent's width changes
<bResizeBottom>	TRUE: resize height, when parent's height changes

Use this function to define the resize parameters.
Depending on the parameters the control maintains it's size
relatively to the right/bottom border of the parent form
.head 6 -  Returns
.head 6 +  Parameters
.head 7 -  Boolean: ResizeRight
.head 7 -  Boolean: ResizeBottom
.head 6 -  Static Variables
.head 6 +  Local variables
.head 7 -  ! helpers:
.head 7 -  Number: x
.head 7 -  Number: y
.head 7 -  Number: w
.head 7 -  Number: h
.head 6 +  Actions
.head 7 -  ! set Style according to parameters:
.head 7 -  Set m_ResizeRight = ResizeRight
.head 7 -  Set m_ResizeBottom = ResizeBottom
.head 7 -  ! where am I and who's my parent form?
.head 7 -  Call SalGetWindowLoc( hWndItem, x, y )
.head 7 -  Call SalGetWindowSize( SalParentWindow( hWndItem ), w, h )
.head 7 -  ! store the distance from right/bottom border for later use:
.head 7 -  Set m_DX = w - x
.head 7 -  Set m_DY = h - y
.head 5 +  Function: InitAlign
.head 6 -  Description: Call InitAlign( bAlignWidth, bAlignHeight )
<bAlignWidth>	TRUE: align x-position, when parent's width changes
<bAlignHeight>	TRUE: align y-position, when parent's height changes

Use this function to define the align parameters.
Depending on the parameters the control maintains it's position
relatively to the right/bottom border of the parent form
.head 6 -  Returns
.head 6 +  Parameters
.head 7 -  Boolean: AlignWidth
.head 7 -  Boolean: AlignHeight
.head 6 -  Static Variables
.head 6 +  Local variables
.head 7 -  ! helpers:
.head 7 -  Number: x
.head 7 -  Number: y
.head 7 -  Number: w
.head 7 -  Number: h
.head 7 -  Number: pw
.head 7 -  Number: ph
.head 6 +  Actions
.head 7 -  ! set Style according to parameters:
.head 7 -  Set m_AlignWidth = AlignWidth
.head 7 -  Set m_AlignHeight = AlignHeight
.head 7 -  ! where am I, who's my parent form and how big am I?
.head 7 -  Call SalGetWindowLoc( hWndItem, x, y )
.head 7 -  Call SalGetWindowSize( SalParentWindow( hWndItem ), pw, ph )
.head 7 -  Call SalGetWindowSize( hWndItem, w, h )
.head 7 -  ! store distance from borders:
.head 7 -  Set m_DX = pw - (x + w)
.head 7 -  Set m_DY = ph - (y + h)
.head 7 -  ! set minimum values to default:
.head 7 -  Set m_MinX = 0.2
.head 7 -  Set m_MinY = 0.2
.head 5 -  !
.head 5 -  ! set the minimum X/Y positions or minimum width/height:
.head 5 +  Function: SetMinInfo
.head 6 -  Description: Call SetMinInfo( nMinX, nMinY )
if initialized via InitResize, MinX/MinY are minimum positions
if initialized via InitAlign, MinX/MinY are minimum sizes
.head 6 -  Returns
.head 6 +  Parameters
.head 7 -  Number: MinX
.head 7 -  Number: MinY
.head 6 -  Static Variables
.head 6 -  Local variables
.head 6 +  Actions
.head 7 -  Set m_MinX = MinX
.head 7 -  Set m_MinY = MinY
.head 5 -  !
.head 5 -  ! internal:
.head 5 +  Function: __OnFormResize
.head 6 -  Description:
.head 6 -  Returns
.head 6 -  Parameters
.head 6 -  Static Variables
.head 6 +  Local variables
.head 7 -  ! and again we need some helpers:
.head 7 -  Number: w
.head 7 -  Number: h
.head 7 -  Number: NewX
.head 7 -  Number: NewY
.head 7 -  Number: NewW
.head 7 -  Number: NewH
.head 6 +  Actions
.head 7 -  ! At first we need the current size of our parent window:
.head 7 -  Call SalGetWindowSize( SalParentWindow( hWndItem ), w, h )
.head 7 -  ! I that size didn't change, we don't need to do anything:
.head 7 +  If (w != m_LastW) or (h != m_LastH)
.head 8 -  ! save current width/height of parent form for the next time:
.head 8 -  Set m_LastW = w
.head 8 -  Set m_LastH = h
.head 8 -  ! Is this a "glue" control?
.head 8 +  If m_ResizeRight or m_ResizeBottom
.head 9 -  ! where am I?
.head 9 -  Call SalGetWindowLoc( hWndItem, NewX, NewY )
.head 9 -  ! if glued to right border, then calculate new x-position
.head 9 +  If m_ResizeRight
.head 10 -  Set NewX = w - m_DX
.head 10 +  If (m_MinX > 0) and (NewX < m_MinX)
.head 11 -  Set NewX = m_MinX
.head 9 -  ! if glued to bottomt border, then calculate new y-position
.head 9 +  If m_ResizeBottom
.head 10 -  Set NewY = h - m_DY
.head 10 +  If (m_MinY > 0) and (NewY < m_MinY)
.head 11 -  Set NewY = m_MinY
.head 9 -  ! now set the new position and repaint myself:
.head 9 -  Call SalSetWindowLoc( hWndItem, NewX, NewY )
.head 9 -  Call SalInvalidateWindow( hWndItem )
.head 8 -  ! is this a "resize" control?
.head 8 +  If m_AlignWidth or m_AlignHeight
.head 9 -  ! where am I and how big am I?
.head 9 -  Call SalGetWindowSize( hWndItem, NewW, NewH )
.head 9 -  Call SalGetWindowLoc( hWndItem, NewX, NewY )
.head 9 -  ! if width aligned, then calculate new width
.head 9 +  If m_AlignWidth
.head 10 -  Set NewW = __Max( m_MinX, w - NewX - m_DX )
.head 9 -  ! if height aligned, then calculate new height
.head 9 +  If m_AlignHeight
.head 10 -  Set NewH = __Max( m_MinY, h - NewY - m_DY )
.head 9 -  ! now set the new width and repaint myself:
.head 9 -  Call SalSetWindowSize( hWndItem, NewW, NewH )
.head 9 -  Call SalInvalidateWindow( hWndItem )
.head 8 -  ! we're done.
.head 5 +  Function: __Max
.head 6 -  Description: returns the higher one of two given numbers
.head 6 +  Returns
.head 7 -  Number:
.head 6 +  Parameters
.head 7 -  Number: N1
.head 7 -  Number: N2
.head 6 -  Static Variables
.head 6 -  Local variables
.head 6 +  Actions
.head 7 +  If N1 > N2
.head 8 -  Return N1
.head 7 -  Return N2
.head 4 +  Message Actions
.head 5 +  On PM_FORM_RESIZED
.head 6 -  ! This Message handler get's called by the parent form (if the
  form is derived from cFormWindow) every time, the size of
  the parent form has changed.
.head 6 -  Call __OnFormResize()
.head 3 +  Form Window Class: cFormWindow
.head 4 -  Title:
.head 4 -  Icon File:
.head 4 -  Accessories Enabled? Class Default
.head 4 -  Visible? Class Default
.head 4 -  Display Settings
.head 5 -  Display Style? Class Default
.head 5 -  Visible at Design time? Yes
.head 5 -  Automatically Created at Runtime? Class Default
.head 5 -  Initial State: Class Default
.head 5 -  Maximizable? Class Default
.head 5 -  Minimizable? Class Default
.head 5 -  Allow Child Docking? Class Default
.head 5 -  Docking Orientation: Class Default
.head 5 -  System Menu? Class Default
.head 5 -  Resizable? Class Default
.head 5 -  Window Location and Size
.head 6 -  Left:
.head 6 -  Top:
.head 6 -  Width:  Class Default
.head 6 -  Width Editable? Class Default
.head 6 -  Height: Class Default
.head 6 -  Height Editable? Class Default
.head 5 -  Form Size
.head 6 -  Width:  Class Default
.head 6 -  Height: Class Default
.head 6 -  Number of Pages: Class Default
.head 5 -  Font Name: Class Default
.head 5 -  Font Size: Class Default
.head 5 -  Font Enhancement: Class Default
.head 5 -  Text Color: Class Default
.head 5 -  Background Color: Class Default
.head 4 -  Next Class Child Key: 0
.head 4 -  List in Tool Palette? Yes
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Description: Class to be used as the parent of a resizable form.
It handles the WM_SIZE (0x0005) message and informs all the child
controls when the parent size has changed. It also avoids
unnecessary resizing during the creation process.

Important:
  SAM_Create and SAM_CreateComplete are implemented which means
  you have to place SalSendClassMessage( SAM_..., wParam, lParam )
  in overriden message actions.
.head 4 -  Derived From
.head 4 -  Menu
.head 4 +  Tool Bar
.head 5 -  Display Settings
.head 6 -  Display Style? Class Default
.head 6 -  Location? Class Default
.head 6 -  Visible? Class Default
.head 6 -  Size: Class Default
.head 6 -  Size Editable? Class Default
.head 6 -  Docking Toolbar? Class Default
.head 6 -  Toolbar Docking Orientation: Class Default
.head 6 -  Font Name: Class Default
.head 6 -  Font Size: Class Default
.head 6 -  Font Enhancement: Class Default
.head 6 -  Text Color: Class Default
.head 6 -  Background Color: Class Default
.head 6 -  Resizable? Class Default
.head 5 -  Contents
.head 4 -  Contents
.head 4 -  Class Variables
.head 4 +  Instance Variables
.head 5 -  ! needed to suppress resizing during creation of the parent form:
.head 5 -  Boolean: __bCreating
.head 4 -  Functions
.head 4 +  Message Actions
.head 5 +  On 0x0005
.head 6 -  ! Windows message: WM_SIZE = 0x0005. You can create a constant if you like
.head 6 -  ! This message handler doesn't do anything while the parent form
  is inside the creation process.
.head 6 +  If not __bCreating
.head 7 -  ! inform all child controls about the resizing of the parent form:
.head 7 -  Call SalSendMsgToChildren( hWndForm, PM_FORM_RESIZED, 0, 0 )
.head 5 +  On SAM_Create
.head 6 -  ! Set the flag that's used in the WM_SIZE message handler to avoid
unnecessary resizing during the creation process. The form is not yet visible.
.head 6 -  Set __bCreating = TRUE
.head 5 +  On SAM_CreateComplete
.head 6 -  ! Reset the flag that's used in the WM_SIZE message handler to avoid
unnecessary resizing during the creation process. The form is visible now.
.head 6 -  Set __bCreating = FALSE
.head 3 +  Child Table Class: cChildTable
.head 4 -  Display Settings
.head 5 -  Window Location and Size
.head 6 -  Left:
.head 6 -  Top:
.head 6 -  Width:  Class Default
.head 6 -  Width Editable? Class Default
.head 6 -  Height: Class Default
.head 6 -  Height Editable? Class Default
.head 5 -  Visible? Class Default
.head 5 -  Font Name: Class Default
.head 5 -  Font Size: Class Default
.head 5 -  Font Enhancement: Class Default
.head 5 -  Text Color: Class Default
.head 5 -  Background Color: Class Default
.head 5 -  View: Class Default
.head 5 -  Allow Row Sizing? Class Default
.head 5 -  Lines Per Row: Class Default
.head 4 -  Memory Settings
.head 5 -  Maximum Rows in Memory: Class Default
.head 5 -  Discardable? Class Default
.head 4 -  Next Class Child Key: 0
.head 4 -  List in Tool Palette? Yes
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Description:
.head 4 +  Derived From
.head 5 -  Class: cControlParent
.head 4 -  Contents
.head 4 -  Class Variables
.head 4 -  Instance Variables
.head 4 -  Functions
.head 4 -  Message Actions
.head 3 +  List Box Class: cListBox
.head 4 -  Window Location and Size
.head 5 -  Left:
.head 5 -  Top:
.head 5 -  Width:  Class Default
.head 5 -  Width Editable? Class Default
.head 5 -  Height: Class Default
.head 5 -  Height Editable? Class Default
.head 4 -  Visible? Class Default
.head 4 -  Multiple selection? Class Default
.head 4 -  Sorted? Class Default
.head 4 -  Vertical Scroll? Class Default
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Class Default
.head 4 -  Text Color: Class Default
.head 4 -  Background Color: Class Default
.head 4 -  List in Tool Palette? Yes
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Description:
.head 4 +  Derived From
.head 5 -  Class: cControlParent
.head 4 -  Class Variables
.head 4 -  Instance Variables
.head 4 -  Functions
.head 4 -  List Initialization
.head 4 -  Message Actions
.head 3 +  Pushbutton Class: cPushButton
.head 4 -  Title:
.head 4 -  Window Location and Size
.head 5 -  Left:
.head 5 -  Top:
.head 5 -  Width:  Class Default
.head 5 -  Width Editable? Class Default
.head 5 -  Height: Class Default
.head 5 -  Height Editable? Class Default
.head 4 -  Visible? Class Default
.head 4 -  Keyboard Accelerator: Class Default
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Class Default
.head 4 -  Picture File Name:
.head 4 -  Picture Transparent Color: Class Default
.head 4 -  Image Style: Class Default
.head 4 -  Text Color: Class Default
.head 4 -  Background Color: Class Default
.head 4 -  List in Tool Palette? Yes
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Button Appearance: Class Default
.head 4 -  Description:
.head 4 +  Derived From
.head 5 -  Class: cControlParent
.head 4 -  Class Variables
.head 4 -  Instance Variables
.head 4 -  Functions
.head 4 -  Message Actions
.head 3 +  Check Box Class: cCheckBox
.head 4 -  Title:
.head 4 -  Window Location and Size
.head 5 -  Left:
.head 5 -  Top:
.head 5 -  Width:  Class Default
.head 5 -  Width Editable? Class Default
.head 5 -  Height: Class Default
.head 5 -  Height Editable? Class Default
.head 4 -  Visible? Class Default
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Class Default
.head 4 -  Text Color: Class Default
.head 4 -  Background Color: Class Default
.head 4 -  List in Tool Palette? Yes
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Description:
.head 4 +  Derived From
.head 5 -  Class: cControlParent
.head 4 -  Class Variables
.head 4 -  Instance Variables
.head 4 -  Functions
.head 4 -  Message Actions
.head 3 +  Multiline Field Class: cMultilineField
.head 4 -  Data
.head 5 -  Maximum Data Length: 10000
.head 5 -  String Type: Long String
.head 5 -  Editable? Yes
.head 4 -  Display Settings
.head 5 -  Border? Yes
.head 5 -  Word Wrap? Yes
.head 5 -  Vertical Scroll? Yes
.head 5 -  Window Location and Size
.head 6 -  Left:
.head 6 -  Top:
.head 6 -  Width:  Class Default
.head 6 -  Width Editable? Class Default
.head 6 -  Height: Class Default
.head 6 -  Height Editable? Class Default
.head 5 -  Visible? Class Default
.head 5 -  Font Name: Class Default
.head 5 -  Font Size: Class Default
.head 5 -  Font Enhancement: Class Default
.head 5 -  Text Color: Class Default
.head 5 -  Background Color: White
.head 4 -  List in Tool Palette? Yes
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Description:
.head 4 +  Derived From
.head 5 -  Class: cControlParent
.head 4 -  Class Variables
.head 4 -  Instance Variables
.head 4 -  Functions
.head 4 -  Message Actions
.head 3 +  Combo Box Class: cComboBox
.head 4 -  Window Location and Size
.head 5 -  Left:
.head 5 -  Top:
.head 5 -  Width:  Class Default
.head 5 -  Width Editable? Class Default
.head 5 -  Height: Class Default
.head 5 -  Height Editable? Class Default
.head 4 -  Visible? Class Default
.head 4 -  Editable? Class Default
.head 4 -  String Type: Class Default
.head 4 -  Maximum Data Length: Class Default
.head 4 -  Sorted? Class Default
.head 4 -  Always Show List? Class Default
.head 4 -  Vertical Scroll? Class Default
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Class Default
.head 4 -  Text Color: Class Default
.head 4 -  Background Color: Class Default
.head 4 -  Input Mask: Class Default
.head 4 -  List in Tool Palette? Yes
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Description:
.head 4 +  Derived From
.head 5 -  Class: cControlParent
.head 4 -  Class Variables
.head 4 -  Instance Variables
.head 4 -  Functions
.head 4 -  List Initialization
.head 4 -  Message Actions
.head 3 +  Radio Button Class: cRadioButton
.head 4 -  Title:
.head 4 -  Window Location and Size
.head 5 -  Left:
.head 5 -  Top:
.head 5 -  Width:  Class Default
.head 5 -  Width Editable? Class Default
.head 5 -  Height: Class Default
.head 5 -  Height Editable? Class Default
.head 4 -  Visible? Class Default
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Class Default
.head 4 -  Text Color: Class Default
.head 4 -  Background Color: Class Default
.head 4 -  List in Tool Palette? Yes
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Description:
.head 4 +  Derived From
.head 5 -  Class: cControlParent
.head 4 -  Class Variables
.head 4 -  Instance Variables
.head 4 -  Functions
.head 4 -  Message Actions
.head 3 +  Combo Box Class: clsCmbAutoComplete
.head 4 -  Window Location and Size
.head 5 -  Left:
.head 5 -  Top:
.head 5 -  Width:  Class Default
.head 5 -  Width Editable? Class Default
.head 5 -  Height: Class Default
.head 5 -  Height Editable? Class Default
.head 4 -  Visible? Class Default
.head 4 -  Editable? Class Default
.head 4 -  String Type: Class Default
.head 4 -  Maximum Data Length: Class Default
.head 4 -  Sorted? Class Default
.head 4 -  Always Show List? Class Default
.head 4 -  Vertical Scroll? Class Default
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Class Default
.head 4 -  Text Color: Class Default
.head 4 -  Background Color: Class Default
.head 4 -  Input Mask: Class Default
.head 4 -  List in Tool Palette? Yes
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Description: Creates a 'Type Ahead' style combo box.
.head 4 -  Derived From
.head 4 -  Class Variables
.head 4 +  Instance Variables
.head 5 -  String: sCurValue
.head 5 -  Number: nSelection
.head 5 -  Number: nIndex
.head 5 -  Boolean: bAllowNewValues
.head 5 -  Boolean: bInBackspace
.head 4 -  Functions
.head 4 -  List Initialization
.head 4 +  Message Actions
.head 5 +  On SAM_AnyEdit
.head 6 +  If bInBackspace = FALSE
.head 7 -  Set nSelection = SalSendMsg( hWndItem, CB_GETEDITSEL, 0, 0 )
.head 7 -  Set sCurValue = MyValue
.head 7 -  Set nIndex = SalListSelectString( hWndItem, -1, sCurValue )
.head 7 +  If nIndex != LB_Err
.head 8 -  Call SalListSetSelect( hWndItem, nIndex )
.head 8 -  Call SalSendMsg( hWndItem, CB_SETEDITSEL, 0, SalNumberLow ( nSelection ) + ( 0x10000 * -1 ))
.head 7 +  Else
.head 8 -  Set MyValue = sCurValue
.head 8 -  Call SalSendMsg( hWndItem, CB_SETEDITSEL, 0, nSelection )
.head 7 -  Call SalSetFieldEdit( hWndItem, TRUE )
.head 6 +  Else
.head 7 -  Set bInBackspace = FALSE
.head 5 +  On WM_KEYDOWN
.head 6 +  If wParam = VK_Backspace
.head 7 +  If SalStrLength( MyValue ) > 0
.head 8 -  Set nSelection = SalSendMsg( hWndItem, CB_GETEDITSEL, 0, 0 )
.head 8 +  If SalNumberHigh( nSelection ) = SalStrLength( MyValue )
.head 9 +  If SalNumberLow( nSelection ) = 0 OR SalNumberLow( nSelection ) = 1
.head 10 -  Set MyValue = STRING_Null
.head 10 -  Call SalSetFieldEdit( hWndItem, TRUE )
.head 9 +  Else If SalNumberLow( nSelection ) != SalNumberHigh( nSelection )
.head 10 -  Call SalSendMsg( hWndItem, CB_SETEDITSEL, 0, SalNumberLow( nSelection ) -1 + ( 0x10000 * -1 ))
.head 8 +  Else
.head 9 -  If SalNumberLow( nSelection ) != SalNumberHigh( nSelection )
.head 9 -  Set MyValue = SalStrLeftX( MyValue, SalNumberLow( nSelection ) +1 ) ||
SalStrRightX( MyValue, SalStrLength( MyValue ) - SalNumberHigh( nSelection ))
.head 9 -  Call SalSendMsg( hWndItem, CB_SETEDITSEL, 0, SalNumberLow( nSelection ) + 1 + SalNumberLow( nSelection + 1 ) * 0x10000 )
.head 9 -  Set bInBackspace = TRUE
.head 8 -  Call SalSetFieldEdit( hWndItem, TRUE )
.head 7 -  Return FALSE
.head 6 -  !
.head 6 +  Else If wParam = VK_Delete
.head 7 -  Set nSelection = SalSendMsg( hWndItem, CB_GETEDITSEL, 0, 0 )
.head 7 -  Set MyValue = SalStrLeftX( MyValue, SalNumberLow( nSelection )) ||
SalStrRightX( MyValue, SalStrLength( MyValue ) - SalNumberHigh( nSelection ))
.head 7 -  Call SalSendMsg( hWndItem, CB_SETEDITSEL, 0, SalNumberLow( nSelection ) + SalNumberLow( nSelection ) * 0x10000 )
.head 7 -  Call SalSetFieldEdit( hWndItem, TRUE )
.head 7 -  !
.head 6 -  !
.head 5 +  On SAM_KillFocus
.head 6 +  If NOT bAllowNewValues
.head 7 +  If SalListSelectString( hWndItem, -1, MyValue ) = LB_Err
.head 8 -  Set MyValue = STRING_Null
.head 2 +  Default Classes
.head 3 -  MDI Window: cBaseMDI
.head 3 -  Form Window:
.head 3 -  Dialog Box:
.head 3 -  Table Window:
.head 3 -  Quest Window:
.head 3 -  Data Field:
.head 3 -  Spin Field:
.head 3 -  Multiline Field:
.head 3 -  Pushbutton:
.head 3 -  Radio Button:
.head 3 -  Option Button:
.head 3 -  Check Box:
.head 3 -  Child Table:
.head 3 -  Quest Child Window: cQuickDatabase
.head 3 -  List Box:
.head 3 -  Combo Box:
.head 3 -  Picture:
.head 3 -  Vertical Scroll Bar:
.head 3 -  Horizontal Scroll Bar:
.head 3 -  Column:
.head 3 -  Background Text:
.head 3 -  Group Box:
.head 3 -  Line:
.head 3 -  Frame:
.head 3 -  Custom Control:
.head 3 -  ActiveX: MSComctlLib_ProgressBar
.head 2 +  Application Actions
.head 3 +  On SAM_AppStartup						! At initial execution...
.head 4 +  If SalAppFind( 'Problem', TRUE ) != hWndNULL				! Ensure this is the only program instance running	
.head 5 -  Call SalQuit(  )							! Quit if another already open
.head 4 +  If SalStrUpperX( SalStrRightX( strArgArray[0],3 ) ) = 'EXE'			! If run in normal mode
.head 5 -  ! Set SqlDatabase = strArgArray[1]					! Get the current DB details
.head 5 -  Set SqlDatabase = 'SERRC'						! Set SERRC Database Name
.head 5 -  Set SqlUser = strArgArray[2]						! Get the current user details
.head 5 -  Set SqlPassword = strArgArray[3]					! Get the current password details
.head 4 +  Else
.head 5 -  ! Set SqlDatabase = 'SERRC'						! Default DB for LIVE testing
.head 5 -  Set SqlDatabase = 'SERRCDEV'					! Default DB for testing
.head 5 -  Set SqlUser = 'PDUNLOP'						! Default Username for testing
.head 5 -  Set SqlPassword = 'PDUNLOP'					! Default Password for testing
.head 4 -  Call SalCreateWindow (frmMainScreen, hWndNULL)			! Create the initial selection panel				
.head 4 -  Call SalModalDialog ( dlgSplashScreen, hWndForm )			! Call the initial splash screen				
.head 3 +  On SAM_AppExit							! Farewell
.head 4 -  Call SalQuit(  )							! Terminated
.head 3 +  On SAM_SqlError							! In the unlikely event of any errors....
.head 4 -  Call SqlExtractArgs( wParam, lParam, hSqlError, nSqlError, nErrorPos )	! Get error details
.head 4 -  Call SqlGetErrorText( nSqlError, sErrmsg )				! Get message associated with error number
.head 4 -  Call SalNumberToStr( nSqlError, 0, sNum )				! Convert error number to readable format
.head 4 -  Call SalMessageBox( sNum || '-' || sErrmsg || '.		
Choose OK to quit.', 'SERRC Database', MB_Ok | MB_IconStop )		! Display error message
.head 4 -  Return FALSE							! Return to calling program
.head 1 +  Dialog Box: dlgSearchParms
.head 2 -  Class:
.head 2 -  Property Template:
.head 2 -  Class DLL Name:
.head 2 -  Title: Search Criteria
.head 2 -  Accessories Enabled? No
.head 2 -  Visible? Yes
.head 2 -  Display Settings
.head 3 -  Display Style? Default
.head 3 -  Visible at Design time? Yes
.head 3 -  Type of Dialog: System Modal
.head 3 -  Allow Dock to Parent? No
.head 3 -  Docking Orientation: All
.head 3 -  Window Location and Size
.head 4 -  Left: 1.2"
.head 4 -  Top: 0.844"
.head 4 -  Width:  6.417"
.head 4 -  Width Editable? Yes
.head 4 -  Height: 3.643"
.head 4 -  Height Editable? Yes
.head 3 -  Absolute Screen Location? Yes
.head 3 -  Font Name: Default
.head 3 -  Font Size: Default
.head 3 -  Font Enhancement: Default
.head 3 -  Text Color: Default
.head 3 -  Background Color: Default
.head 3 -  Resizable? No
.head 3 -  Vertical Scroll? Yes
.head 3 -  Horizontal Scroll? Yes
.head 2 -  Description: Creates an input selection panel for choosing the desired search criteria
.head 2 +  Tool Bar
.head 3 -  Display Settings
.head 4 -  Display Style? Default
.head 4 -  Location? Top
.head 4 -  Visible? Yes
.head 4 -  Size: Default
.head 4 -  Size Editable? Yes
.head 4 -  Docking Toolbar? No
.head 4 -  Toolbar Docking Orientation: Top | Bottom
.head 4 -  Font Name: Default
.head 4 -  Font Size: Default
.head 4 -  Font Enhancement: Default
.head 4 -  Text Color: Default
.head 4 -  Background Color: Default
.head 4 -  Resizable? No
.head 3 -  Contents
.head 2 +  Contents
.head 3 -  Group Box: Search by
.head 4 -  Resource Id: 61729
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class:
.head 4 -  Window Location and Size
.head 5 -  Left: 0.183"
.head 5 -  Top: 0.155"
.head 5 -  Width:  2.6"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 3.25"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? Yes
.head 4 -  Font Name: Default
.head 4 -  Font Size: Default
.head 4 -  Font Enhancement: Default
.head 4 -  Text Color: Default
.head 4 -  Background Color: Default
.head 3 +  Radio Button: rbSearchProbNo					! Select search by Problem Number
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class:
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title: Problem Number
.head 4 -  Window Location and Size
.head 5 -  Left: 0.483"
.head 5 -  Top: 0.405"
.head 5 -  Width:  1.7"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 0.25"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? Yes
.head 4 -  Font Name: Default
.head 4 -  Font Size: Default
.head 4 -  Font Enhancement: Default
.head 4 -  Text Color: Default
.head 4 -  Background Color: Default
.head 4 +  Message Actions
.head 5 +  On SAM_Create				
.head 6 -  Call SalSendMsg( rbSearchProbNo, SAM_Click, 0, 0 )			! Set focus on this search button
.head 5 +  On SAM_Click					
.head 6 -  Set sColumn = 'PROB_ID'						! Nominate Search Column
.head 6 -  Set sTable = 'PROBLEM'						! Nominate Search Table
.head 6 -  Set sOrder = 'PROB_ID DESC'					! Set order of results
.head 6 -  Set nSearchType = 1						! Set search type value
.head 6 -  Set cmbValue = ''							! Clear out any old data results
.head 5 +  On PAM_DISABLE
.head 6 -  Call SalDisableWindow( hWndItem )					! Disable item selection
.head 5 +  On PAM_ENABLE
.head 6 -  Call SalEnableWindow( hWndItem )					! Enable item selection
.head 3 +  Radio Button: rbSearchStatus					! Select search by Status
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class:
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title: Status
.head 4 -  Window Location and Size
.head 5 -  Left: 0.483"
.head 5 -  Top: 0.738"
.head 5 -  Width:  1.4"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 0.25"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? Yes
.head 4 -  Font Name: Default
.head 4 -  Font Size: Default
.head 4 -  Font Enhancement: Default
.head 4 -  Text Color: Default
.head 4 -  Background Color: Default
.head 4 +  Message Actions
.head 5 +  On SAM_Create						
.head 6 -  Set rbSearchStatus = FALSE					! Set off search button
.head 5 +  On SAM_Click		
.head 6 -  Set sColumn = 'STAT_NAME'					! Nominate Search Column
.head 6 -  Set sTable = 'STATUS'						! Nominate Search Table
.head 6 -  Set sOrder = 'STAT_ID'						! Set order of results
.head 6 -  Set nSearchType = 2						! Set search type value
.head 6 -  Set cmbValue = ''							! Clear out any old data results
.head 5 +  On PAM_DISABLE
.head 6 -  Call SalDisableWindow( hWndItem )					! Disable item selection
.head 5 +  On PAM_ENABLE
.head 6 -  Call SalEnableWindow( hWndItem )					! Enable item selection
.head 3 +  Radio Button: rbSearchType						! Select search by Problem Type
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class:
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title: Type
.head 4 -  Window Location and Size
.head 5 -  Left: 0.483"
.head 5 -  Top: 1.071"
.head 5 -  Width:  1.4"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 0.25"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? Yes
.head 4 -  Font Name: Default
.head 4 -  Font Size: Default
.head 4 -  Font Enhancement: Default
.head 4 -  Text Color: Default
.head 4 -  Background Color: Default
.head 4 +  Message Actions
.head 5 +  On SAM_Create
.head 6 -  Set rbSearchType = FALSE						! Set off search button
.head 5 +  On SAM_Click
.head 6 -  Set sColumn = 'TYPE_NAME'					! Nominate Search Column
.head 6 -  Set sTable = 'TYPE'						! Nominate Search Table
.head 6 -  Set sOrder = 'TYPE_ID'						! Set order of results
.head 6 -  Set nSearchType = 3						! Set search type value
.head 6 -  Set cmbValue = ''							! Clear out any old data results
.head 5 +  On PAM_DISABLE
.head 6 -  Call SalDisableWindow( hWndItem )					! Disable item selection
.head 5 +  On PAM_ENABLE
.head 6 -  Call SalEnableWindow( hWndItem )					! Enable item selection
.head 3 +  Radio Button: rbSearchPriority					! Select search by Priority
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class:
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title: Priority
.head 4 -  Window Location and Size
.head 5 -  Left: 0.483"
.head 5 -  Top: 1.405"
.head 5 -  Width:  1.4"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 0.25"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? Yes
.head 4 -  Font Name: Default
.head 4 -  Font Size: Default
.head 4 -  Font Enhancement: Default
.head 4 -  Text Color: Default
.head 4 -  Background Color: Default
.head 4 +  Message Actions
.head 5 +  On SAM_Create
.head 6 -  Set rbSearchPriority = FALSE					! Set off search button
.head 5 +  On SAM_Click
.head 6 -  Set sColumn = 'PRTY_NAME'					! Nominate Search Column
.head 6 -  Set sTable = 'PRIORITY'						! Nominate Search Table
.head 6 -  Set sOrder = 'PRTY_ID'						! Set order of results
.head 6 -  Set nSearchType = 4						! Set search type value
.head 6 -  Set cmbValue = ''							! Clear out any old data results
.head 5 +  On PAM_DISABLE
.head 6 -  Call SalDisableWindow( hWndItem )					! Disable item selection
.head 5 +  On PAM_ENABLE
.head 6 -  Call SalEnableWindow( hWndItem )					! Enable item selection
.head 3 +  Radio Button: rbSearchRaised					! Select search by Person who raised problem
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class:
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title: Raised By
.head 4 -  Window Location and Size
.head 5 -  Left: 0.483"
.head 5 -  Top: 1.738"
.head 5 -  Width:  1.4"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 0.25"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? Yes
.head 4 -  Font Name: Default
.head 4 -  Font Size: Default
.head 4 -  Font Enhancement: Default
.head 4 -  Text Color: Default
.head 4 -  Background Color: Default
.head 4 +  Message Actions
.head 5 +  On SAM_Create
.head 6 -  Set rbSearchRaised = FALSE					! Set off search button
.head 5 +  On SAM_Click
.head 6 -  Set sColumn = 'USER_NAME'					! Nominate Search Column
.head 6 -  Set sTable = 'USERS'						! Nominate Search Table
.head 6 -  Set sOrder = 'USER_NAME'						! Set order of results
.head 6 -  Set nSearchType = 5						! Set search type value
.head 6 -  Set cmbValue = ''							! Clear out any old data results
.head 5 +  On PAM_DISABLE
.head 6 -  Call SalDisableWindow( hWndItem )					! Disable item selection
.head 5 +  On PAM_ENABLE
.head 6 -  Call SalEnableWindow( hWndItem )					! Enable item selection
.head 3 +  Radio Button: rbSearchDate						! Select search by Date raised
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class:
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title: Raised Date
.head 4 -  Window Location and Size
.head 5 -  Left: 0.483"
.head 5 -  Top: 2.071"
.head 5 -  Width:  1.4"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 0.25"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? Yes
.head 4 -  Font Name: Default
.head 4 -  Font Size: Default
.head 4 -  Font Enhancement: Default
.head 4 -  Text Color: Default
.head 4 -  Background Color: Default
.head 4 +  Message Actions
.head 5 +  On SAM_Create
.head 6 -  Set rbSearchDate = FALSE						! Set off search button
.head 5 +  On SAM_Click
.head 6 -  Set sColumn = 'DISTINCT RAISED_DATE'				! Nominate Search Column
.head 6 -  Set sTable = 'PROBLEM'						! Nominate Search Table
.head 6 -  Set sOrder = 'RAISED_DATE DESC'					! Set order of results
.head 6 -  Set nSearchType = 6						! Set search type value
.head 6 -  Set cmbValue = ''							! Clear out any old data results
.head 5 +  On PAM_DISABLE
.head 6 -  Call SalDisableWindow( hWndItem )					! Disable item selection
.head 5 +  On PAM_ENABLE
.head 6 -  Call SalEnableWindow( hWndItem )					! Enable item selection
.head 3 +  Radio Button: rbSearchProgram					! Select search by a Program
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class:
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title: Area
.head 4 -  Window Location and Size
.head 5 -  Left: 0.483"
.head 5 -  Top: 2.405"
.head 5 -  Width:  1.3"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 0.25"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? Yes
.head 4 -  Font Name: Default
.head 4 -  Font Size: Default
.head 4 -  Font Enhancement: Default
.head 4 -  Text Color: Default
.head 4 -  Background Color: Default
.head 4 +  Message Actions
.head 5 +  On SAM_Create
.head 6 -  Set rbSearchProgram = FALSE					! Set off search button
.head 5 +  On SAM_Click
.head 6 -  Set sColumn = 'PROG_NAME'					! Nominate Search Column
.head 6 -  Set sTable = 'PROGRAM'						! Nominate Search Table
.head 6 -  Set sOrder = 'PROG_ID'						! Set order of results
.head 6 -  Set nSearchType = 7						! Set search type value
.head 6 -  Set cmbValue = ''							! Clear out any old data results
.head 5 +  On PAM_DISABLE
.head 6 -  Call SalDisableWindow( hWndItem )					! Disable item selection
.head 5 +  On PAM_ENABLE
.head 6 -  Call SalEnableWindow( hWndItem )					! Enable item selection
.head 3 +  Radio Button: rbSearchAssigned					! Select search by person assigned to fix it
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class:
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title: Assigned To
.head 4 -  Window Location and Size
.head 5 -  Left: 0.483"
.head 5 -  Top: 2.738"
.head 5 -  Width:  1.4"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 0.25"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? Yes
.head 4 -  Font Name: Default
.head 4 -  Font Size: Default
.head 4 -  Font Enhancement: Default
.head 4 -  Text Color: Default
.head 4 -  Background Color: Default
.head 4 +  Message Actions
.head 5 +  On SAM_Create
.head 6 -  Set rbSearchAssigned = FALSE					! Set off search button
.head 5 +  On SAM_Click
.head 6 -  Set sColumn = 'PGMR_NAME'					! Nominate Search Column
.head 6 -  Set sTable = 'PROGRAMMERS'					! Nominate Search Table
.head 6 -  Set sOrder = 'PGMR_ID'						! Set order of results
.head 6 -  Set nSearchType = 8						! Set search type value
.head 6 -  Set cmbValue = ''							! Clear out any old data results
.head 5 +  On PAM_DISABLE
.head 6 -  Call SalDisableWindow( hWndItem )					! Disable item selection
.head 5 +  On PAM_ENABLE
.head 6 -  Call SalEnableWindow( hWndItem )					! Enable item selection
.head 3 +  Radio Button: rbSearchUpdated					! Select search by record modification date order
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class:
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title: Last Updated
.head 4 -  Window Location and Size
.head 5 -  Left: 0.483"
.head 5 -  Top: 3.071"
.head 5 -  Width:  1.4"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 0.25"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? Yes
.head 4 -  Font Name: Default
.head 4 -  Font Size: Default
.head 4 -  Font Enhancement: Default
.head 4 -  Text Color: Default
.head 4 -  Background Color: Default
.head 4 +  Message Actions
.head 5 +  On SAM_Create
.head 6 -  Set rbSearchUpdated = FALSE					! Set off search button
.head 5 +  On SAM_Click
.head 6 -  Set sColumn = 'LAST_UPDATED'					! Nominate Search Column
.head 6 -  Set sTable = 'PROBLEM WHERE LAST_UPDATED IS NOT NULL'		! Nominate Search Table
.head 6 -  Set sOrder = 'LAST_UPDATED DESC'					! Set order of results
.head 6 -  Set nSearchType = 10						! Set search type value
.head 6 -  Set cmbValue = ''							! Clear out any old data results
.head 5 +  On PAM_DISABLE
.head 6 -  Call SalDisableWindow( hWndItem )					! Disable item selection
.head 5 +  On PAM_ENABLE
.head 6 -  Call SalEnableWindow( hWndItem )					! Enable item selection
.head 3 +  Combo Box: cmbValue					! This is where the choice of search data is made
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsCmbAutoComplete
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Window Location and Size
.head 5 -  Left: 3.1"
.head 5 -  Top: 1.0"
.head 5 -  Width:  2.883"
.head 5 -  Width Editable? Class Default
.head 5 -  Height: 1.202"
.head 5 -  Height Editable? Class Default
.head 4 -  Visible? Class Default
.head 4 -  Editable? Class Default
.head 4 -  String Type: Class Default
.head 4 -  Maximum Data Length: Class Default
.head 4 -  Sorted? Class Default
.head 4 -  Always Show List? Class Default
.head 4 -  Vertical Scroll? Class Default
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Class Default
.head 4 -  Text Color: Class Default
.head 4 -  Background Color: Class Default
.head 4 -  Input Mask: Class Default
.head 4 -  List Initialization
.head 4 +  Message Actions
.head 5 +  On SAM_SetFocus
.head 6 -  Call SalWaitCursor( TRUE )
.head 6 -  Set sSqlList = 'SELECT '||sColumn||' FROM '||sTable||' ORDER BY '||sOrder||''	! Use items from the predefined table and column
.head 6 -  Call SqlConnect( hSqlList )						! Connect to Database
.head 6 -  Call SalListPopulate ( hWndItem, hSqlList, sSqlList )			! Return the results to the combo box
.head 6 -  Call SqlDisconnect ( hSqlList )					! Disconnect from Database
.head 6 -  Set sSqlList = ''
.head 6 -  Call SalWaitCursor( FALSE )
.head 5 +  On PAM_DISABLE
.head 6 -  Call SalDisableWindow( hWndItem )					! Disable item selection
.head 5 +  On PAM_ENABLE
.head 6 -  Call SalEnableWindow( hWndItem )					! Enable item selection
.head 5 +  On PAM_CLEARFIELD
.head 6 -  Call SalClearField( hWndItem )
.head 3 -  Background Text: Search Value
.head 4 -  Resource Id: 61730
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class:
.head 4 -  Window Location and Size
.head 5 -  Left: 3.083"
.head 5 -  Top: 0.762"
.head 5 -  Width:  1.7"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 0.167"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? Yes
.head 4 -  Justify: Left
.head 4 -  Font Name: Default
.head 4 -  Font Size: Default
.head 4 -  Font Enhancement: Default
.head 4 -  Text Color: Default
.head 4 -  Background Color: Default
.head 3 +  Pushbutton: pbOk							! Process the selected search criteria
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class:
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title: Ok
.head 4 -  Window Location and Size
.head 5 -  Left: 3.283"
.head 5 -  Top: 2.821"
.head 5 -  Width:  1.2"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 0.298"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? Yes
.head 4 -  Keyboard Accelerator: Enter
.head 4 -  Font Name: Default
.head 4 -  Font Size: Default
.head 4 -  Font Enhancement: Default
.head 4 -  Picture File Name:
.head 4 -  Picture Transparent Color: None
.head 4 -  Image Style: Single
.head 4 -  Text Color: Default
.head 4 -  Background Color: Default
.head 4 -  Button Appearance: Standard
.head 4 +  Message Actions
.head 5 +  On SAM_Click	
.head 6 -  Set sSearchString = ''						! Set default search string value
.head 6 -  Set nCmbIndexNo = SalListQuerySelection ( cmbValue )			! Get the index of the selected combo box item
.head 6 +  If nCmbIndexNo != LB_Err						! If an item is selected...
.head 7 -  Set sSearchString = SalListQueryTextX( cmbValue, nCmbIndexNo )	! Get the combo box item value
.head 6 +  Else If cbTextSearch = TRUE
.head 7 -  Set sSearchString = dfTextSearch					! Get the search text value
.head 6 -  Set bOk = TRUE							! Flag that the OK button was pressed
.head 6 -  Call SalEndDialog( hWndForm, 1 )					! Finished with the dialogue box - close it
.head 3 +  Pushbutton: pbCancel						! Kill the search window
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class:
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title: Cancel
.head 4 -  Window Location and Size
.head 5 -  Left: 4.75"
.head 5 -  Top: 2.821"
.head 5 -  Width:  1.2"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 0.298"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? Yes
.head 4 -  Keyboard Accelerator: (none)
.head 4 -  Font Name: Default
.head 4 -  Font Size: Default
.head 4 -  Font Enhancement: Default
.head 4 -  Picture File Name:
.head 4 -  Picture Transparent Color: None
.head 4 -  Image Style: Single
.head 4 -  Text Color: Default
.head 4 -  Background Color: Default
.head 4 -  Button Appearance: Standard
.head 4 +  Message Actions
.head 5 +  On SAM_Click
.head 6 -  Call SalEndDialog( hWndForm, 1 )					! Kill the current search window
.head 3 +  Check Box: cbNotEqualTo
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class:
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title: is NOT equal to
.head 4 -  Window Location and Size
.head 5 -  Left: 3.083"
.head 5 -  Top: 0.321"
.head 5 -  Width:  1.6"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 0.25"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? Yes
.head 4 -  Font Name: Default
.head 4 -  Font Size: Default
.head 4 -  Font Enhancement: Default
.head 4 -  Text Color: Default
.head 4 -  Background Color: Default
.head 4 +  Message Actions
.head 5 +  On SAM_Create
.head 6 -  Set bNotEqualToFlag = FALSE
.head 5 +  On SAM_Click
.head 6 +  If bNotEqualToFlag = FALSE
.head 7 -  Set bNotEqualToFlag = TRUE
.head 6 +  Else
.head 7 -  Set bNotEqualToFlag = FALSE
.head 5 +  On PAM_DISABLE
.head 6 -  Call SalDisableWindow( hWndItem )					! Disable item selection
.head 5 +  On PAM_ENABLE
.head 6 -  Call SalEnableWindow( hWndItem )					! Enable item selection
.head 3 -  Frame
.head 4 -  Resource Id: 41754
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class:
.head 4 -  Window Location and Size
.head 5 -  Left: 3.083"
.head 5 -  Top: 1.655"
.head 5 -  Width:  2.9"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 0.917"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? Yes
.head 4 -  Corners: Square
.head 4 -  Border Style: Etched
.head 4 -  Border Thickness: 1
.head 4 -  Border Color: Default
.head 4 -  Background Color: Default
.head 3 +  Check Box: cbTextSearch
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class:
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title: Search for problem text
.head 4 -  Window Location and Size
.head 5 -  Left: 3.383"
.head 5 -  Top: 1.821"
.head 5 -  Width:  2.3"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 0.25"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? Yes
.head 4 -  Font Name: Default
.head 4 -  Font Size: Default
.head 4 -  Font Enhancement: Default
.head 4 -  Text Color: Default
.head 4 -  Background Color: Default
.head 4 +  Message Actions
.head 5 +  On SAM_Create
.head 6 -  Set cbTextSearch = FALSE						! Default with check box set off
.head 6 -  Call SalSendMsg ( dfTextSearch, PAM_DISABLE, 0, 0)			! Disable the Search dialog box
.head 5 +  On SAM_Click
.head 6 +  If cbTextSearch = TRUE						! When check box is selected
.head 7 -  Call SalSendMsg ( hWndForm, PAM_DISABLE, 0, 0)			! Disable all other options
.head 7 -  Call SalSendMsg ( dfTextSearch, PAM_ENABLE, 0, 0)			! Enable the Search dialog box
.head 7 -  Call SalSendMsg ( cmbValue, PAM_CLEARFIELD, 0, 0)			! Enable the Search dialog box
.head 7 -  Set nSearchType = 9						! Set search type value
.head 7 -  Set cmbValue = ''							! Clear out any old data results
.head 6 +  Else
.head 7 -  Call SalSendMsg ( hWndForm, PAM_ENABLE, 0, 0)			! Disable all other options
.head 7 -  Call SalSendMsg ( dfTextSearch, PAM_DISABLE, 0, 0)			! Disable the Search dialog box
.head 3 +  Data Field: dfTextSearch
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class:
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Data
.head 5 -  Maximum Data Length: Default
.head 5 -  Data Type: String
.head 5 -  Editable? Yes
.head 4 -  Display Settings
.head 5 -  Window Location and Size
.head 6 -  Left: 3.383"
.head 6 -  Top: 2.155"
.head 6 -  Width:  2.3"
.head 6 -  Width Editable? Yes
.head 6 -  Height: 0.25"
.head 6 -  Height Editable? Yes
.head 5 -  Visible? Yes
.head 5 -  Border? Yes
.head 5 -  Justify: Left
.head 5 -  Format: Unformatted
.head 5 -  Country: Default
.head 5 -  Font Name: Default
.head 5 -  Font Size: Default
.head 5 -  Font Enhancement: Default
.head 5 -  Text Color: Default
.head 5 -  Background Color: Default
.head 5 -  Input Mask: Unformatted
.head 4 +  Message Actions
.head 5 +  On PAM_DISABLE
.head 6 -  Call SalDisableWindow( hWndItem )					! Disable item selection
.head 5 +  On PAM_ENABLE
.head 6 -  Call SalEnableWindow( hWndItem )					! Enable item selection
.head 6 -  Call SalSetFocus( hWndItem )
.head 2 -  Functions
.head 2 +  Window Parameters
.head 3 -  Receive String: sColumn
.head 3 -  Receive String: sTable
.head 3 -  Receive String: sOrder
.head 3 -  Receive Number: nSearchType
.head 3 -  Receive String: sSearchString
.head 3 -  Receive Boolean: bNotEqualToFlag
.head 3 -  Receive Boolean: bOk
.head 2 +  Window Variables
.head 3 -  Sql Handle: hSqlList						! Handle for SQL search statement
.head 3 -  Window Handle: hWndList						! Populate this item with the results
.head 3 -  String: sSqlList							! The SQL statement itself
.head 3 -  Number: nCmbIndexNo						! The index number of the item within the combo box
.head 3 -  ! String: sColumn
.head 3 -  ! String: sTable
.head 3 -  ! String: sOrder
.head 3 -  ! Number: nSearchType
.head 3 -  ! String: sSearchString
.head 3 -  ! Boolean: bOk
.head 3 -  ! Boolean: bNotEqualToFlag
.head 2 +  Message Actions
.head 3 +  On PAM_DISABLE
.head 4 -  Call SalSendMsgToChildren( hWndForm, PAM_DISABLE, 0, 0 )
.head 3 +  On PAM_ENABLE
.head 4 -  Call SalSendMsgToChildren( hWndForm, PAM_ENABLE, 0, 0 )
.head 1 +  Dialog Box: dlgEmailSentSplash
.head 2 -  Class:
.head 2 -  Property Template:
.head 2 -  Class DLL Name:
.head 2 -  Title: Transmission in progress
.head 2 -  Accessories Enabled? No
.head 2 -  Visible? Yes
.head 2 -  Display Settings
.head 3 -  Display Style? Default
.head 3 -  Visible at Design time? Yes
.head 3 -  Type of Dialog: System Modal
.head 3 -  Allow Dock to Parent? No
.head 3 -  Docking Orientation: All
.head 3 -  Window Location and Size
.head 4 -  Left: 3.763"
.head 4 -  Top: 3.302"
.head 4 -  Width:  3.033"
.head 4 -  Width Editable? Yes
.head 4 -  Height: 0.56"
.head 4 -  Height Editable? Yes
.head 3 -  Absolute Screen Location? Yes
.head 3 -  Font Name: Default
.head 3 -  Font Size: Default
.head 3 -  Font Enhancement: Default
.head 3 -  Text Color: Default
.head 3 -  Background Color: Default
.head 3 -  Resizable? No
.head 3 -  Vertical Scroll? Yes
.head 3 -  Horizontal Scroll? Yes
.head 2 -  Description: 'Email sent' splash screen - lasts for 1.2 seconds
.head 2 +  Tool Bar
.head 3 -  Display Settings
.head 4 -  Display Style? Default
.head 4 -  Location? Top
.head 4 -  Visible? Yes
.head 4 -  Size: Default
.head 4 -  Size Editable? Yes
.head 4 -  Docking Toolbar? No
.head 4 -  Toolbar Docking Orientation: Top | Bottom
.head 4 -  Font Name: Default
.head 4 -  Font Size: Default
.head 4 -  Font Enhancement: Default
.head 4 -  Text Color: Default
.head 4 -  Background Color: Default
.head 4 -  Resizable? No
.head 3 -  Contents
.head 2 +  Contents
.head 3 -  Background Text: Sending Email....
.head 4 -  Resource Id: 61731
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class:
.head 4 -  Window Location and Size
.head 5 -  Left: 0.383"
.head 5 -  Top: 0.155"
.head 5 -  Width:  2.0"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 0.25"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? Yes
.head 4 -  Justify: Center
.head 4 -  Font Name: Default
.head 4 -  Font Size: 10
.head 4 -  Font Enhancement: Default
.head 4 -  Text Color: Blue
.head 4 -  Background Color: Default
.head 2 -  Functions
.head 2 -  Window Parameters
.head 2 +  Window Variables
.head 3 -  Number: nReturnCode
.head 2 +  Message Actions
.head 3 +  On SAM_CreateComplete						! When the splash screen is displayed
.head 4 -  Call SalWaitCursor( TRUE )						! Set on hourglass cursor
.head 4 -  Call SalTimerSet( dlgEmailSentSplash, 1, 1200 )			! Set a delay of 1200 milli-seconds
.head 3 +  On SAM_Timer							! When the delay timer is triggered
.head 4 -  Call SalTimerKill ( dlgEmailSentSplash, 1 )				! Kill off the timer
.head 4 -  Call SalEndDialog ( dlgEmailSentSplash, nReturnCode )			! Close the splash screen
.head 4 -  Call SalWaitCursor( FALSE )					! Set off hourglass
.head 1 +  Form Window: frmScreenImage
.head 2 -  Class:
.head 2 -  Property Template:
.head 2 -  Class DLL Name:
.head 2 -  Title: Screen Image Capture
.head 2 -  Icon File: BUGS.ICO
.data RESOURCE 2 0 1 1141203523
0000: FE02000059010000 0000000000000000 0200A20001000120 3010000000D80200
0020: 0000160000002800 0000002000000040 0008000001040000 00A380020000FFFF
0040: 8F80000003008080 0080006800008080 800D008000C0C080 C0000000FF000003
0060: 00FFFF00FF006800 00FFFFFF8D00FF00 FFFEFFFFFFFF07F9 9FF99FFFFCFFFF82
0080: 00F9999FF999FAFF FF40F00F99999FF9 99E4FF00FFFFE100 99999FE0900FFFFF
00A0: FFEDF99FF090FFFF FFEDF99FF5FFFFC1 9999999FF9F099FF FFFFE599999FF499
00C0: FFFFE599999FF499 FFFFE599999F7499 FFFFF0E40099999F D099000FFFFFE599
00E0: 999FF499FFFFE599 999FF499FFFFE599 999FF499FFFFEDF9 9FF5FFFFDDF9F9F5
0100: FFFFD1099999F9F5 FFFFDCF00FF9F400 FFFFE8F0FFF99FE8 F00FFFFF87F00000
0120: 0FFDFFF7F0FDFF0F CCCCFFFFFEFFEFCC FEFFEFCCFEFF07F0 0FF00FFFFDFFF300
0140: 0FFBFF5D00FF00F7 FFEEF0FFEE00FFF4 0FFFFFED0FFFFF3F 0000FE00FFFFFFFF
0160: FFFFFFFFFFFFFFFF FFFF3F
.enddata
.head 2 -  Accessories Enabled? No
.head 2 -  Visible? Yes
.head 2 -  Display Settings
.head 3 -  Display Style? Default
.head 3 -  Visible at Design time? Yes
.head 3 -  Automatically Created at Runtime? No
.head 3 -  Initial State: Maximized
.head 3 -  Maximizable? Yes
.head 3 -  Minimizable? Yes
.head 3 -  Allow Child Docking? No
.head 3 -  Docking Orientation: All
.head 3 -  System Menu? Yes
.head 3 -  Resizable? Yes
.head 3 -  Window Location and Size
.head 4 -  Left: 0.113"
.head 4 -  Top: 0.094"
.head 4 -  Width:  12.467"
.head 4 -  Width Editable? Yes
.head 4 -  Height: 6.155"
.head 4 -  Height Editable? Yes
.head 3 -  Form Size
.head 4 -  Width:  Default
.head 4 -  Height: Default
.head 4 -  Number of Pages: Dynamic
.head 3 -  Font Name: Default
.head 3 -  Font Size: Default
.head 3 -  Font Enhancement: Default
.head 3 -  Text Color: Default
.head 3 -  Background Color: Default
.head 2 -  Description: This allows any screen images of errors to be pasted into the problem
.head 2 -  Named Menus
.head 2 -  Menu
.head 2 +  Tool Bar
.head 3 -  Display Settings
.head 4 -  Display Style? Default
.head 4 -  Location? Top
.head 4 -  Visible? Yes
.head 4 -  Size: Default
.head 4 -  Size Editable? Yes
.head 4 -  Docking Toolbar? No
.head 4 -  Toolbar Docking Orientation: Top | Bottom
.head 4 -  Font Name: Default
.head 4 -  Font Size: Default
.head 4 -  Font Enhancement: Default
.head 4 -  Text Color: Default
.head 4 -  Background Color: Default
.head 4 -  Resizable? No
.head 3 -  Contents
.head 2 +  Contents
.head 3 +  Picture: picImage							! Bitmap save area
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class:
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Window Location and Size
.head 5 -  Left: 0.383"
.head 5 -  Top: 0.071"
.head 5 -  Width:  16.0"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 8.0"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? Yes
.head 4 -  Editable? Yes
.head 4 -  File Name:
.head 4 -  Storage: Internal
.head 4 -  Picture Transparent Color: None
.head 4 -  Fit: Scale
.head 4 -  Scaling
.head 5 -  Width:  100
.head 5 -  Height:  100
.head 4 -  Corners: Square
.head 4 -  Border Style: Solid
.head 4 -  Border Thickness: 1
.head 4 -  Tile To Parent? No
.head 4 -  Border Color: Default
.head 4 -  Background Color: Default
.head 4 -  Message Actions
.head 3 +  Pushbutton: pbOK							! Finished in this panel
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class:
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title: Ok
.head 4 -  Window Location and Size
.head 5 -  Left: 13.4"
.head 5 -  Top: 8.25"
.head 5 -  Width:  1.083"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 0.298"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? Yes
.head 4 -  Keyboard Accelerator: Enter
.head 4 -  Font Name: Default
.head 4 -  Font Size: Default
.head 4 -  Font Enhancement: Default
.head 4 -  Picture File Name:
.head 4 -  Picture Transparent Color: None
.head 4 -  Image Style: Single
.head 4 -  Text Color: Default
.head 4 -  Background Color: Default
.head 4 -  Button Appearance: Standard
.head 4 +  Message Actions
.head 5 +  On SAM_Click
.head 6 +  If bImageSaved = TRUE						! If an image was pasted in
.head 7 -  Set lsImageData = lsImageInput					! Save new / revised picture if applicable
.head 6 -  Call SalDestroyWindow( hWndForm )					! Close the window
.head 3 +  Pushbutton: pbPasteImage						! Paste any captured image
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class:
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title: Paste
.head 4 -  Window Location and Size
.head 5 -  Left: 10.8"
.head 5 -  Top: 8.25"
.head 5 -  Width:  0.983"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 0.298"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? Yes
.head 4 -  Keyboard Accelerator: (none)
.head 4 -  Font Name: Default
.head 4 -  Font Size: Default
.head 4 -  Font Enhancement: Default
.head 4 -  Picture File Name:
.head 4 -  Picture Transparent Color: None
.head 4 -  Image Style: Single
.head 4 -  Text Color: Default
.head 4 -  Background Color: Default
.head 4 -  Button Appearance: Standard
.head 4 +  Message Actions
.head 5 +  On SAM_Create							
.head 6 +  If bViewOnly = TRUE						! Display only mode?
.head 7 -  Call SalDisableWindow( hWndItem )					! Disable Item Selection	
.head 7 -  Call SalHideWindow( hWndItem )					! Hide Item 	
.head 5 +  On SAM_Click
.head 6 -  Call SalSetFocus(picImage)						! Point to the save area
.head 6 -  ! 11/09/2003 (PXD) Given up on trying to get this paste from clipboard working with SAL. Now using external MIng.apl.				! Point to the save area
.head 6 +  ! If SalEditCanPaste ( )						! Anything to paste?
.head 7 -  Call SalEditPaste( )						! Yes - Paste it in
.head 7 -  Set bImageSaved = TRUE						! Set on image pasted flag
.head 6 +  ! Else
.head 7 -  Call SalMessageBox( 'There is nothing to paste. Please try to copy the image again', 'Add Image', MB_Ok )
.head 6 -  Set hImage = MImgLoadFromClipboard()					! Get clipboard image handle
.head 6 +  If hImage > 0							! Anything to paste?
.head 7 -  Call MImgGetString( hImage, lsImageInput, MIMG_TYPE_BMP )		! Read it into a string
.head 7 -  Call SalPicSetString ( picImage, PIC_FormatBitmap, lsImageInput )		! Paste it into the picture area
.head 7 -  ! Call SalPicSetFit ( picImage, PIC_FitBestFit, 0, 0 )			! Resize it to suit
.head 7 -  Call MImgDelete( hImage )						! Delete the clipboard image
.head 7 -  Set bImageSaved = TRUE						! Set on image pasted flag
.head 6 +  Else
.head 7 -  Call SalMessageBox( 'There is nothing to paste. Please try to copy the image again', 'Add Image', MB_Ok )
.head 3 +  Data Field: dfTextLine1
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class:
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Data
.head 5 -  Maximum Data Length: Default
.head 5 -  Data Type: String
.head 5 -  Editable? No
.head 4 -  Display Settings
.head 5 -  Window Location and Size
.head 6 -  Left: 1.183"
.head 6 -  Top: 8.095"
.head 6 -  Width:  8.5"
.head 6 -  Width Editable? Yes
.head 6 -  Height: 0.25"
.head 6 -  Height Editable? Yes
.head 5 -  Visible? Yes
.head 5 -  Border? No
.head 5 -  Justify: Left
.head 5 -  Format: Unformatted
.head 5 -  Country: Default
.head 5 -  Font Name: Default
.head 5 -  Font Size: Default
.head 5 -  Font Enhancement: Default
.head 5 -  Text Color: Default
.head 5 -  Background Color: 3D Face Color
.head 5 -  Input Mask: Unformatted
.head 4 +  Message Actions
.head 5 +  On SAM_Create
.head 6 -  Set dfTextLine1 = "To add an image, go to the desired screen and press the 'Print Screen' button on your keyboard."
.head 6 +  If bViewOnly = TRUE
.head 7 -  Call SalHideWindow( hWndItem )					! Disable Item Selection	
.head 3 +  Data Field: dfTextLine2
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class:
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Data
.head 5 -  Maximum Data Length: Default
.head 5 -  Data Type: String
.head 5 -  Editable? No
.head 4 -  Display Settings
.head 5 -  Window Location and Size
.head 6 -  Left: 1.183"
.head 6 -  Top: 8.345"
.head 6 -  Width:  8.5"
.head 6 -  Width Editable? Yes
.head 6 -  Height: 0.25"
.head 6 -  Height Editable? Yes
.head 5 -  Visible? Yes
.head 5 -  Border? No
.head 5 -  Justify: Left
.head 5 -  Format: Unformatted
.head 5 -  Country: Default
.head 5 -  Font Name: Default
.head 5 -  Font Size: Default
.head 5 -  Font Enhancement: Default
.head 5 -  Text Color: Default
.head 5 -  Background Color: 3D Face Color
.head 5 -  Input Mask: Unformatted
.head 4 +  Message Actions
.head 5 +  On SAM_Create
.head 6 -  Set dfTextLine2 = "Then come back to this panel and press the 'Paste' button to add the image. Click 'Ok' when finished."
.head 6 +  If bViewOnly = TRUE
.head 7 -  Call SalHideWindow( hWndItem )					! Disable Item Selection	
.head 3 +  Pushbutton: pbResize
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class:
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title: Resize
.head 4 -  Window Location and Size
.head 5 -  Left: 12.0"
.head 5 -  Top: 8.25"
.head 5 -  Width:  1.2"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 0.298"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? Yes
.head 4 -  Keyboard Accelerator: (none)
.head 4 -  Font Name: Default
.head 4 -  Font Size: Default
.head 4 -  Font Enhancement: Default
.head 4 -  Picture File Name:
.head 4 -  Picture Transparent Color: None
.head 4 -  Image Style: Single
.head 4 -  Text Color: Default
.head 4 -  Background Color: Default
.head 4 -  Button Appearance: Standard
.head 4 +  Message Actions
.head 5 +  On SAM_Click
.head 6 +  If bResized = TRUE						! If already resized
.head 7 -  Set bResized = FALSE						! Set off Flag
.head 7 -  Call SalPicSetFit ( picImage, PIC_FitScale, 100, 100 )			! Rescale to 100%
.head 6 +  Else
.head 7 -  Set bResized = TRUE						! Set on resized flag
.head 7 -  Call SalPicSetFit ( picImage, PIC_FitBestFit, 0, 0 )			! Resize it to suit window
.head 2 -  Functions
.head 2 +  Window Parameters
.head 3 -  Boolean: bViewOnly							! Show data only - No editing
.head 3 -  Receive Long String: lsImageData					! Long string seems to be required for the image
.head 3 -  Receive Boolean: bImageSaved					! Flag to say that an image was pasted in
.head 2 +  Window Variables
.head 3 -  ! Boolean: bImageSaved						! Flag to say that an image was pasted in
.head 3 -  Number: hImage							! Handle of clipboard image
.head 3 -  Long String: lsImageInput						! Temp sting value of image
.head 3 -  Boolean: bResized							! Image resize flag
.head 3 -  ! Long String: sImageData						! String representation of Image relating to problem
.head 3 -  ! Boolean: SaveImageData
.head 3 -  ! Boolean: bSaveImageToDB
.head 2 +  Message Actions
.head 3 +  On SAM_Create
.head 4 +  If lsImageData != STRING_Null					! If an image exists for this record
.head 5 -  Call MImgLoadFromString( lsImageData, MIMG_TYPE_BMP, 0 )		! Load it up
.head 5 -  Call SalPicSetString ( picImage, PIC_FormatBitmap, lsImageData )		! Paste it into the picture area
.head 1 +  Form Window: frmMainScreen
.head 2 -  Class: cFormWindow
.head 2 -  Property Template:
.head 2 -  Class DLL Name:
.head 2 -  Title: Problem Details
.head 2 -  Icon File: BUGS.ICO
.data RESOURCE 2 0 1 1141203523
0000: FE02000059010000 0000000000000000 0200A20001000120 3010000000D80200
0020: 0000160000002800 0000002000000040 0008000001040000 00A380020000FFFF
0040: 8F80000003008080 0080006800008080 800D008000C0C080 C0000000FF000003
0060: 00FFFF00FF006800 00FFFFFF8D00FF00 FFFEFFFFFFFF07F9 9FF99FFFFCFFFF82
0080: 00F9999FF999FAFF FF40F00F99999FF9 99E4FF00FFFFE100 99999FE0900FFFFF
00A0: FFEDF99FF090FFFF FFEDF99FF5FFFFC1 9999999FF9F099FF FFFFE599999FF499
00C0: FFFFE599999FF499 FFFFE599999F7499 FFFFF0E40099999F D099000FFFFFE599
00E0: 999FF499FFFFE599 999FF499FFFFE599 999FF499FFFFEDF9 9FF5FFFFDDF9F9F5
0100: FFFFD1099999F9F5 FFFFDCF00FF9F400 FFFFE8F0FFF99FE8 F00FFFFF87F00000
0120: 0FFDFFF7F0FDFF0F CCCCFFFFFEFFEFCC FEFFEFCCFEFF07F0 0FF00FFFFDFFF300
0140: 0FFBFF5D00FF00F7 FFEEF0FFEE00FFF4 0FFFFFED0FFFFF3F 0000FE00FFFFFFFF
0160: FFFFFFFFFFFFFFFF FFFF3F
.enddata
.head 2 -  Accessories Enabled? Yes
.head 2 -  Visible? Yes
.head 2 -  Display Settings
.head 3 -  Display Style? Class Default
.head 3 -  Visible at Design time? Yes
.head 3 -  Automatically Created at Runtime? No
.head 3 -  Initial State: Class Default
.head 3 -  Maximizable? Class Default
.head 3 -  Minimizable? Class Default
.head 3 -  Allow Child Docking? No
.head 3 -  Docking Orientation: All
.head 3 -  System Menu? Class Default
.head 3 -  Resizable? Class Default
.head 3 -  Window Location and Size
.head 4 -  Left: 0.788"
.head 4 -  Top: 0.365"
.head 4 -  Width:  13.233"
.head 4 -  Width Editable? Class Default
.head 4 -  Height: 7.369"
.head 4 -  Height Editable? Class Default
.head 3 -  Form Size
.head 4 -  Width:  Class Default
.head 4 -  Height: Class Default
.head 4 -  Number of Pages: Class Default
.head 3 -  Font Name: Class Default
.head 3 -  Font Size: Class Default
.head 3 -  Font Enhancement: Class Default
.head 3 -  Text Color: Class Default
.head 3 -  Background Color: Class Default
.head 2 -  Description: Shows a detailed view of the problem and allows item addition and editing
.head 2 -  Named Menus
.head 2 -  Menu
.head 2 +  Tool Bar
.head 3 -  Display Settings
.head 4 -  Display Style? Class Default
.head 4 -  Location? Class Default
.head 4 -  Visible? No
.head 4 -  Size: Class Default
.head 4 -  Size Editable? Class Default
.head 4 -  Docking Toolbar? Class Default
.head 4 -  Toolbar Docking Orientation: Class Default
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Class Default
.head 4 -  Text Color: Class Default
.head 4 -  Background Color: Class Default
.head 4 -  Resizable? Class Default
.head 3 -  Contents
.head 2 +  Contents
.head 3 +  Child Table: tblSorted
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: cChildTable
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Display Settings
.head 5 -  Window Location and Size
.head 6 -  Left: 0.083"
.head 6 -  Top: 4.417"
.head 6 -  Width:  12.5"
.head 6 -  Width Editable? Class Default
.head 6 -  Height: 2.405"
.head 6 -  Height Editable? Class Default
.head 5 -  Visible? Class Default
.head 5 -  Font Name: Class Default
.head 5 -  Font Size: Class Default
.head 5 -  Font Enhancement: Class Default
.head 5 -  Text Color: Class Default
.head 5 -  Background Color: Class Default
.head 5 -  View: Class Default
.head 5 -  Allow Row Sizing? Class Default
.head 5 -  Lines Per Row: Class Default
.head 4 -  Memory Settings
.head 5 -  Maximum Rows in Memory: 5000
.head 5 -  Discardable? No
.head 4 +  Contents
.head 5 +  Column: colProbNo
.head 6 -  Class Child Ref Key: 0
.head 6 -  Class ChildKey: 0
.head 6 -  Class:
.head 6 -  Property Template:
.head 6 -  Class DLL Name:
.head 6 -  Title: #
.head 6 -  Visible? Yes
.head 6 -  Editable? No
.head 6 -  Maximum Data Length: Default
.head 6 -  Data Type: Number
.head 6 -  Justify: Left
.head 6 -  Width:  0.5"
.head 6 -  Width Editable? Yes
.head 6 -  Format: Unformatted
.head 6 -  Country: Default
.head 6 -  Input Mask: Unformatted
.head 6 -  Cell Options
.head 7 -  Cell Type? Standard
.head 7 -  Multiline Cell? No
.head 7 -  Cell DropDownList
.head 8 -  Sorted? Yes
.head 8 -  Vertical Scroll? Yes
.head 8 -  Auto Drop Down? No
.head 8 -  Allow Text Editing? Yes
.head 7 -  Cell CheckBox
.head 8 -  Check Value:
.head 8 -  Uncheck Value:
.head 8 -  Ignore Case? Yes
.head 6 -  List Values
.head 6 -  Message Actions
.head 5 +  Column: colPriority
.head 6 -  Class Child Ref Key: 0
.head 6 -  Class ChildKey: 0
.head 6 -  Class:
.head 6 -  Property Template:
.head 6 -  Class DLL Name:
.head 6 -  Title: Priority
.head 6 -  Visible? Yes
.head 6 -  Editable? No
.head 6 -  Maximum Data Length: Default
.head 6 -  Data Type: String
.head 6 -  Justify: Left
.head 6 -  Width:  0.6"
.head 6 -  Width Editable? Yes
.head 6 -  Format: Unformatted
.head 6 -  Country: Default
.head 6 -  Input Mask: Unformatted
.head 6 -  Cell Options
.head 7 -  Cell Type? Standard
.head 7 -  Multiline Cell? No
.head 7 -  Cell DropDownList
.head 8 -  Sorted? Yes
.head 8 -  Vertical Scroll? Yes
.head 8 -  Auto Drop Down? No
.head 8 -  Allow Text Editing? Yes
.head 7 -  Cell CheckBox
.head 8 -  Check Value:
.head 8 -  Uncheck Value:
.head 8 -  Ignore Case? Yes
.head 6 -  List Values
.head 6 -  Message Actions
.head 5 +  Column: colPriorityId
.head 6 -  Class Child Ref Key: 0
.head 6 -  Class ChildKey: 0
.head 6 -  Class:
.head 6 -  Property Template:
.head 6 -  Class DLL Name:
.head 6 -  Title:
.head 6 -  Visible? No
.head 6 -  Editable? No
.head 6 -  Maximum Data Length: Default
.head 6 -  Data Type: Number
.head 6 -  Justify: Left
.head 6 -  Width:  Default
.head 6 -  Width Editable? Yes
.head 6 -  Format: Unformatted
.head 6 -  Country: Default
.head 6 -  Input Mask: Unformatted
.head 6 -  Cell Options
.head 7 -  Cell Type? Standard
.head 7 -  Multiline Cell? No
.head 7 -  Cell DropDownList
.head 8 -  Sorted? Yes
.head 8 -  Vertical Scroll? Yes
.head 8 -  Auto Drop Down? No
.head 8 -  Allow Text Editing? Yes
.head 7 -  Cell CheckBox
.head 8 -  Check Value:
.head 8 -  Uncheck Value:
.head 8 -  Ignore Case? Yes
.head 6 -  List Values
.head 6 -  Message Actions
.head 5 +  Column: colStatus
.head 6 -  Class Child Ref Key: 0
.head 6 -  Class ChildKey: 0
.head 6 -  Class:
.head 6 -  Property Template:
.head 6 -  Class DLL Name:
.head 6 -  Title: Status
.head 6 -  Visible? Yes
.head 6 -  Editable? No
.head 6 -  Maximum Data Length: Default
.head 6 -  Data Type: String
.head 6 -  Justify: Left
.head 6 -  Width:  1.017"
.head 6 -  Width Editable? Yes
.head 6 -  Format: Unformatted
.head 6 -  Country: Default
.head 6 -  Input Mask: Unformatted
.head 6 -  Cell Options
.head 7 -  Cell Type? Standard
.head 7 -  Multiline Cell? No
.head 7 -  Cell DropDownList
.head 8 -  Sorted? Yes
.head 8 -  Vertical Scroll? Yes
.head 8 -  Auto Drop Down? No
.head 8 -  Allow Text Editing? Yes
.head 7 -  Cell CheckBox
.head 8 -  Check Value:
.head 8 -  Uncheck Value:
.head 8 -  Ignore Case? Yes
.head 6 -  List Values
.head 6 -  Message Actions
.head 5 +  Column: colStatusId
.head 6 -  Class Child Ref Key: 0
.head 6 -  Class ChildKey: 0
.head 6 -  Class:
.head 6 -  Property Template:
.head 6 -  Class DLL Name:
.head 6 -  Title:
.head 6 -  Visible? No
.head 6 -  Editable? No
.head 6 -  Maximum Data Length: Default
.head 6 -  Data Type: Number
.head 6 -  Justify: Left
.head 6 -  Width:  Default
.head 6 -  Width Editable? Yes
.head 6 -  Format: Unformatted
.head 6 -  Country: Default
.head 6 -  Input Mask: Unformatted
.head 6 -  Cell Options
.head 7 -  Cell Type? Standard
.head 7 -  Multiline Cell? No
.head 7 -  Cell DropDownList
.head 8 -  Sorted? Yes
.head 8 -  Vertical Scroll? Yes
.head 8 -  Auto Drop Down? No
.head 8 -  Allow Text Editing? Yes
.head 7 -  Cell CheckBox
.head 8 -  Check Value:
.head 8 -  Uncheck Value:
.head 8 -  Ignore Case? Yes
.head 6 -  List Values
.head 6 -  Message Actions
.head 5 +  Column: colType
.head 6 -  Class Child Ref Key: 0
.head 6 -  Class ChildKey: 0
.head 6 -  Class:
.head 6 -  Property Template:
.head 6 -  Class DLL Name:
.head 6 -  Title: Type
.head 6 -  Visible? Yes
.head 6 -  Editable? No
.head 6 -  Maximum Data Length: Default
.head 6 -  Data Type: String
.head 6 -  Justify: Left
.head 6 -  Width:  1.033"
.head 6 -  Width Editable? Yes
.head 6 -  Format: Unformatted
.head 6 -  Country: Default
.head 6 -  Input Mask: Unformatted
.head 6 -  Cell Options
.head 7 -  Cell Type? Standard
.head 7 -  Multiline Cell? No
.head 7 -  Cell DropDownList
.head 8 -  Sorted? Yes
.head 8 -  Vertical Scroll? Yes
.head 8 -  Auto Drop Down? No
.head 8 -  Allow Text Editing? Yes
.head 7 -  Cell CheckBox
.head 8 -  Check Value:
.head 8 -  Uncheck Value:
.head 8 -  Ignore Case? Yes
.head 6 -  List Values
.head 6 -  Message Actions
.head 5 +  Column: colTypeId
.head 6 -  Class Child Ref Key: 0
.head 6 -  Class ChildKey: 0
.head 6 -  Class:
.head 6 -  Property Template:
.head 6 -  Class DLL Name:
.head 6 -  Title:
.head 6 -  Visible? No
.head 6 -  Editable? No
.head 6 -  Maximum Data Length: Default
.head 6 -  Data Type: Number
.head 6 -  Justify: Left
.head 6 -  Width:  Default
.head 6 -  Width Editable? Yes
.head 6 -  Format: Unformatted
.head 6 -  Country: Default
.head 6 -  Input Mask: Unformatted
.head 6 -  Cell Options
.head 7 -  Cell Type? Standard
.head 7 -  Multiline Cell? No
.head 7 -  Cell DropDownList
.head 8 -  Sorted? Yes
.head 8 -  Vertical Scroll? Yes
.head 8 -  Auto Drop Down? No
.head 8 -  Allow Text Editing? Yes
.head 7 -  Cell CheckBox
.head 8 -  Check Value:
.head 8 -  Uncheck Value:
.head 8 -  Ignore Case? Yes
.head 6 -  List Values
.head 6 -  Message Actions
.head 5 +  Column: colRaisedBy
.head 6 -  Class Child Ref Key: 0
.head 6 -  Class ChildKey: 0
.head 6 -  Class:
.head 6 -  Property Template:
.head 6 -  Class DLL Name:
.head 6 -  Title: Raised By
.head 6 -  Visible? Yes
.head 6 -  Editable? No
.head 6 -  Maximum Data Length: Default
.head 6 -  Data Type: String
.head 6 -  Justify: Left
.head 6 -  Width:  1.033"
.head 6 -  Width Editable? Yes
.head 6 -  Format: Unformatted
.head 6 -  Country: Default
.head 6 -  Input Mask: Unformatted
.head 6 -  Cell Options
.head 7 -  Cell Type? Standard
.head 7 -  Multiline Cell? No
.head 7 -  Cell DropDownList
.head 8 -  Sorted? Yes
.head 8 -  Vertical Scroll? Yes
.head 8 -  Auto Drop Down? No
.head 8 -  Allow Text Editing? Yes
.head 7 -  Cell CheckBox
.head 8 -  Check Value:
.head 8 -  Uncheck Value:
.head 8 -  Ignore Case? Yes
.head 6 -  List Values
.head 6 -  Message Actions
.head 5 +  Column: colRaisedId
.head 6 -  Class Child Ref Key: 0
.head 6 -  Class ChildKey: 0
.head 6 -  Class:
.head 6 -  Property Template:
.head 6 -  Class DLL Name:
.head 6 -  Title:
.head 6 -  Visible? No
.head 6 -  Editable? No
.head 6 -  Maximum Data Length: Default
.head 6 -  Data Type: Number
.head 6 -  Justify: Left
.head 6 -  Width:  Default
.head 6 -  Width Editable? Yes
.head 6 -  Format: Unformatted
.head 6 -  Country: Default
.head 6 -  Input Mask: Unformatted
.head 6 -  Cell Options
.head 7 -  Cell Type? Standard
.head 7 -  Multiline Cell? No
.head 7 -  Cell DropDownList
.head 8 -  Sorted? Yes
.head 8 -  Vertical Scroll? Yes
.head 8 -  Auto Drop Down? No
.head 8 -  Allow Text Editing? Yes
.head 7 -  Cell CheckBox
.head 8 -  Check Value:
.head 8 -  Uncheck Value:
.head 8 -  Ignore Case? Yes
.head 6 -  List Values
.head 6 -  Message Actions
.head 5 +  Column: colRaisedDate
.head 6 -  Class Child Ref Key: 0
.head 6 -  Class ChildKey: 0
.head 6 -  Class:
.head 6 -  Property Template:
.head 6 -  Class DLL Name:
.head 6 -  Title: Raised Date
.head 6 -  Visible? Yes
.head 6 -  Editable? No
.head 6 -  Maximum Data Length: Default
.head 6 -  Data Type: Date/Time
.head 6 -  Justify: Left
.head 6 -  Width:  1.133"
.head 6 -  Width Editable? Yes
.head 6 -  Format: dd-MMM-yyyy
.head 6 -  Country: Default
.head 6 -  Input Mask: Unformatted
.head 6 -  Cell Options
.head 7 -  Cell Type? Standard
.head 7 -  Multiline Cell? No
.head 7 -  Cell DropDownList
.head 8 -  Sorted? Yes
.head 8 -  Vertical Scroll? Yes
.head 8 -  Auto Drop Down? No
.head 8 -  Allow Text Editing? Yes
.head 7 -  Cell CheckBox
.head 8 -  Check Value:
.head 8 -  Uncheck Value:
.head 8 -  Ignore Case? Yes
.head 6 -  List Values
.head 6 -  Message Actions
.head 5 +  Column: colAssignedTo
.head 6 -  Class Child Ref Key: 0
.head 6 -  Class ChildKey: 0
.head 6 -  Class:
.head 6 -  Property Template:
.head 6 -  Class DLL Name:
.head 6 -  Title: Assigned To
.head 6 -  Visible? Yes
.head 6 -  Editable? No
.head 6 -  Maximum Data Length: Default
.head 6 -  Data Type: String
.head 6 -  Justify: Left
.head 6 -  Width:  1.25"
.head 6 -  Width Editable? Yes
.head 6 -  Format: Unformatted
.head 6 -  Country: Default
.head 6 -  Input Mask: Unformatted
.head 6 -  Cell Options
.head 7 -  Cell Type? Standard
.head 7 -  Multiline Cell? No
.head 7 -  Cell DropDownList
.head 8 -  Sorted? Yes
.head 8 -  Vertical Scroll? Yes
.head 8 -  Auto Drop Down? No
.head 8 -  Allow Text Editing? Yes
.head 7 -  Cell CheckBox
.head 8 -  Check Value:
.head 8 -  Uncheck Value:
.head 8 -  Ignore Case? Yes
.head 6 -  List Values
.head 6 -  Message Actions
.head 5 +  Column: colAssignedId
.head 6 -  Class Child Ref Key: 0
.head 6 -  Class ChildKey: 0
.head 6 -  Class:
.head 6 -  Property Template:
.head 6 -  Class DLL Name:
.head 6 -  Title:
.head 6 -  Visible? No
.head 6 -  Editable? No
.head 6 -  Maximum Data Length: Default
.head 6 -  Data Type: Number
.head 6 -  Justify: Left
.head 6 -  Width:  Default
.head 6 -  Width Editable? Yes
.head 6 -  Format: Unformatted
.head 6 -  Country: Default
.head 6 -  Input Mask: Unformatted
.head 6 -  Cell Options
.head 7 -  Cell Type? Standard
.head 7 -  Multiline Cell? No
.head 7 -  Cell DropDownList
.head 8 -  Sorted? Yes
.head 8 -  Vertical Scroll? Yes
.head 8 -  Auto Drop Down? No
.head 8 -  Allow Text Editing? Yes
.head 7 -  Cell CheckBox
.head 8 -  Check Value:
.head 8 -  Uncheck Value:
.head 8 -  Ignore Case? Yes
.head 6 -  List Values
.head 6 -  Message Actions
.head 5 +  Column: colAssignedDate
.head 6 -  Class Child Ref Key: 0
.head 6 -  Class ChildKey: 0
.head 6 -  Class:
.head 6 -  Property Template:
.head 6 -  Class DLL Name:
.head 6 -  Title: Assigned Date
.head 6 -  Visible? No
.head 6 -  Editable? No
.head 6 -  Maximum Data Length: Default
.head 6 -  Data Type: Date/Time
.head 6 -  Justify: Left
.head 6 -  Width:  1.233"
.head 6 -  Width Editable? Yes
.head 6 -  Format: dd-MMM-yyyy
.head 6 -  Country: Default
.head 6 -  Input Mask: Unformatted
.head 6 -  Cell Options
.head 7 -  Cell Type? Standard
.head 7 -  Multiline Cell? No
.head 7 -  Cell DropDownList
.head 8 -  Sorted? Yes
.head 8 -  Vertical Scroll? Yes
.head 8 -  Auto Drop Down? No
.head 8 -  Allow Text Editing? Yes
.head 7 -  Cell CheckBox
.head 8 -  Check Value:
.head 8 -  Uncheck Value:
.head 8 -  Ignore Case? Yes
.head 6 -  List Values
.head 6 -  Message Actions
.head 5 +  Column: colProbDetails
.head 6 -  Class Child Ref Key: 0
.head 6 -  Class ChildKey: 0
.head 6 -  Class:
.head 6 -  Property Template:
.head 6 -  Class DLL Name:
.head 6 -  Title: Details
.head 6 -  Visible? Yes
.head 6 -  Editable? No
.head 6 -  Maximum Data Length: 10000
.head 6 -  Data Type: Long String
.head 6 -  Justify: Left
.head 6 -  Width:  4.5"
.head 6 -  Width Editable? Yes
.head 6 -  Format: Unformatted
.head 6 -  Country: Default
.head 6 -  Input Mask: Unformatted
.head 6 -  Cell Options
.head 7 -  Cell Type? Standard
.head 7 -  Multiline Cell? Yes
.head 7 -  Cell DropDownList
.head 8 -  Sorted? Yes
.head 8 -  Vertical Scroll? Yes
.head 8 -  Auto Drop Down? No
.head 8 -  Allow Text Editing? Yes
.head 7 -  Cell CheckBox
.head 8 -  Check Value:
.head 8 -  Uncheck Value:
.head 8 -  Ignore Case? Yes
.head 6 -  List Values
.head 6 -  Message Actions
.head 5 +  Column: colActions
.head 6 -  Class Child Ref Key: 0
.head 6 -  Class ChildKey: 0
.head 6 -  Class:
.head 6 -  Property Template:
.head 6 -  Class DLL Name:
.head 6 -  Title: Action Log
.head 6 -  Visible? Yes
.head 6 -  Editable? No
.head 6 -  Maximum Data Length: 10000
.head 6 -  Data Type: Long String
.head 6 -  Justify: Left
.head 6 -  Width:  6.4"
.head 6 -  Width Editable? Yes
.head 6 -  Format: Unformatted
.head 6 -  Country: Default
.head 6 -  Input Mask: Unformatted
.head 6 -  Cell Options
.head 7 -  Cell Type? Standard
.head 7 -  Multiline Cell? No
.head 7 -  Cell DropDownList
.head 8 -  Sorted? Yes
.head 8 -  Vertical Scroll? Yes
.head 8 -  Auto Drop Down? No
.head 8 -  Allow Text Editing? Yes
.head 7 -  Cell CheckBox
.head 8 -  Check Value:
.head 8 -  Uncheck Value:
.head 8 -  Ignore Case? Yes
.head 6 -  List Values
.head 6 -  Message Actions
.head 5 +  Column: colProgram
.head 6 -  Class Child Ref Key: 0
.head 6 -  Class ChildKey: 0
.head 6 -  Class:
.head 6 -  Property Template:
.head 6 -  Class DLL Name:
.head 6 -  Title:
.head 6 -  Visible? No
.head 6 -  Editable? No
.head 6 -  Maximum Data Length: Default
.head 6 -  Data Type: Number
.head 6 -  Justify: Left
.head 6 -  Width:  Default
.head 6 -  Width Editable? Yes
.head 6 -  Format: Unformatted
.head 6 -  Country: Default
.head 6 -  Input Mask: Unformatted
.head 6 -  Cell Options
.head 7 -  Cell Type? Standard
.head 7 -  Multiline Cell? No
.head 7 -  Cell DropDownList
.head 8 -  Sorted? Yes
.head 8 -  Vertical Scroll? Yes
.head 8 -  Auto Drop Down? No
.head 8 -  Allow Text Editing? Yes
.head 7 -  Cell CheckBox
.head 8 -  Check Value:
.head 8 -  Uncheck Value:
.head 8 -  Ignore Case? Yes
.head 6 -  List Values
.head 6 -  Message Actions
.head 4 +  Functions
.head 5 +  Function: CheckScreenshot
.head 6 -  Description: This checks the IMAGES table to see whether any image exists for this problem number
.head 6 +  Returns
.head 7 -  Boolean:
.head 6 +  Parameters
.head 7 -  Number: nProbID
.head 7 -  Receive Long String: lsImageValue
.head 6 -  Static Variables
.head 6 +  Local variables
.head 7 -  Sql Handle: hSql
.head 7 -  String: sSql
.head 7 -  Number: nInd
.head 7 -  Boolean: bOk
.head 6 +  Actions
.head 7 -  Set bOk = FALSE
.head 7 -  Set sSql = "
	SELECT 
		Image_Data
	FROM
		Images
	INTO
		:lsImageValue
	WHERE
		Prob_Id = :nProbID"
.head 7 -  Call SqlConnect( hSql )					! Connect to database
.head 7 -  Call SqlPrepareAndExecute( hSql, sSql )			! Prepare SQL
.head 7 +  If SqlFetchNext( hSql, nInd )					! If image found
.head 8 -  Set bOk = TRUE						! Flag Image Exists!
.head 7 -  Call SqlDisconnect( hSql )					! Disconnect from DB
.head 7 -  Return bOk 						! Return the flag
.head 4 +  Window Variables
.head 5 -  Window Handle: hWndCol
.head 5 -  Number: nMaxLength
.head 5 -  Number: nColLength
.head 5 -  String: sColTitle
.head 5 -  Number: nColNumber
.head 5 -  Boolean: bSortDirectionFlag
.head 5 -  Number: nSortDirection
.head 5 -  Number: nColNo
.head 5 -  Boolean: bSortedAscending
.head 5 -  String: sEditUser
.head 4 +  Message Actions
.head 5 +  On SAM_Click							! When a record is selected
.head 6 -  Call SalWaitCursor( TRUE )
.head 6 -  Set nProbNo = colProbNo						! Get selected problem number
.head 6 -  Set nStatId = colStatusId						! Save status ID
.head 6 -  Set nTypeId = colTypeId						! Save type ID
.head 6 -  Set nPrtyId = colPriorityId						! Save Priority ID
.head 6 -  Set nRaisedBy = colRaisedId						! Save Raised By ID
.head 6 -  Set nAssigned = colAssignedId					! Save Assigned To ID
.head 6 -  Set nProgram = colProgram						! Save Program Binary value
.head 6 +  If CheckScreenshot(nProbNo, lsImage)
.head 7 -  Call SalSendMsg( pbViewScreenshot, PAM_ENABLE, 0, 0 )			! Enable detail form editing button
.head 6 +  Else
.head 7 -  Call SalSendMsg( pbViewScreenshot, PAM_DISABLE, 0, 0 )			! Enable detail form editing button
.head 6 +  If fnCheckEditMode( nProbNo ) = TRUE					! Is this problem already in edit mode?
.head 7 -  Call SalMessageBox( 'This problem is currently being edited by ' || sEditUser || '. This record will be displayed in read-only mode' , 'Record in edit mode', MB_Ok ) 			
.head 6 +  Else
.head 7 -  Call SalSendMsg ( frmMainScreen, PAM_ENABLEEDIT, 0, 0 )		! Enable record editing		
.head 6 -  Call SalWaitCursor( FALSE )
.head 5 +  On SAM_RowHeaderClick					! If the row header is selected
.head 6 -  Call SalSendMsg( hWndForm, SAM_Click, 0, 0 )			! Simulate a doule click on the row
.head 5 +  On SAM_CreateComplete
.head 6 -  Call SalTblSetLockedColumns ( hWndItem, 1)				! Lock seq # column
.head 6 -  Call SalTblSetTableFlags( hWndItem, TBL_Flag_SelectableCols, TRUE )	! Allow columns to be selectable
.head 6 -  Set bSortedAscending = TRUE					! Initialise sort order flag
.head 6 -  Set wParam =  SalWindowHandleToNumber( colProbNo )			! Get window handle of problem sequence number column
.head 6 -  Call SalSendMsg( hWndItem, SAM_ColumnSelectClick, wParam, 0 )		! Do a col header click to reverse the order sequence
.head 5 +  On SAM_ColumnSelectClick						! If a column header is clicked
.head 6 -  Call SalWaitCursor( TRUE )
.head 6 -  Set hWndCol = SalNumberToWindowHandle( wParam )			! Get the selected column handle
.head 6 -  Set nColNo = SalTblQueryColumnID( hWndCol )				! Determine the column identifier from its handel
.head 6 +  If bSortedAscending = FALSE						! If sort by ascending order flag is set
.head 7 -  Call SalTblSortRows( tblSorted, nColNo, TBL_SortIncreasing )		! Sort it in Ascending order
.head 7 -  Set bSortedAscending = TRUE					! Toggle the flag
.head 6 +  Else
.head 7 -  Call SalTblSortRows( tblSorted, nColNo, TBL_SortDecreasing )		! Otherwise, Sort it in Descending order
.head 7 -  Set bSortedAscending = FALSE					! Toggle the flag
.head 6 -  Call SalTblSetColumnFlags( hWndCol, COL_Selected, FALSE )
.head 6 -  Call SalWaitCursor( FALSE )
.head 3 -  Background Text: Problem Number
.head 4 -  Resource Id: 34809
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class:
.head 4 -  Window Location and Size
.head 5 -  Left: 1.683"
.head 5 -  Top: 0.179"
.head 5 -  Width:  1.4"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 0.167"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? Yes
.head 4 -  Justify: Left
.head 4 -  Font Name: Default
.head 4 -  Font Size: Default
.head 4 -  Font Enhancement: Default
.head 4 -  Text Color: Default
.head 4 -  Background Color: Default
.head 3 +  Data Field: dfProbNo
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class:
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Data
.head 5 -  Maximum Data Length: Default
.head 5 -  Data Type: Number
.head 5 -  Editable? No
.head 4 -  Display Settings
.head 5 -  Window Location and Size
.head 6 -  Left: 3.183"
.head 6 -  Top: 0.155"
.head 6 -  Width:  0.7"
.head 6 -  Width Editable? Yes
.head 6 -  Height: 0.25"
.head 6 -  Height Editable? Yes
.head 5 -  Visible? Yes
.head 5 -  Border? Yes
.head 5 -  Justify: Right
.head 5 -  Format: Unformatted
.head 5 -  Country: Default
.head 5 -  Font Name: Default
.head 5 -  Font Size: Default
.head 5 -  Font Enhancement: Default
.head 5 -  Text Color: Default
.head 5 -  Background Color: Default
.head 5 -  Input Mask: Unformatted
.head 4 +  Message Actions
.head 5 +  On PAM_CLEARFIELD
.head 6 -  Set dfProbNo = NUMBER_Null					! Clear out item number
.head 5 +  On PAM_EXPANDLISTITEM
.head 6 -  Set dfProbNo = frmMainScreen.tblSorted.colProbNo			! Populate problem number  field
.head 3 -  Background Text: Status
.head 4 -  Resource Id: 34810
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class:
.head 4 -  Window Location and Size
.head 5 -  Left: 1.683"
.head 5 -  Top: 0.512"
.head 5 -  Width:  0.6"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 0.167"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? Yes
.head 4 -  Justify: Left
.head 4 -  Font Name: Default
.head 4 -  Font Size: Default
.head 4 -  Font Enhancement: Default
.head 4 -  Text Color: Default
.head 4 -  Background Color: Default
.head 3 +  Combo Box: cmbStatus					! The problem status
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsCmbAutoComplete
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Window Location and Size
.head 5 -  Left: 2.4"
.head 5 -  Top: 0.5"
.head 5 -  Width:  1.483"
.head 5 -  Width Editable? Class Default
.head 5 -  Height: 1.202"
.head 5 -  Height Editable? Class Default
.head 4 -  Visible? Class Default
.head 4 -  Editable? Class Default
.head 4 -  String Type: Class Default
.head 4 -  Maximum Data Length: Class Default
.head 4 -  Sorted? Class Default
.head 4 -  Always Show List? Class Default
.head 4 -  Vertical Scroll? Class Default
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Class Default
.head 4 -  Text Color: Class Default
.head 4 -  Background Color: Class Default
.head 4 -  Input Mask: Class Default
.head 4 -  List Initialization
.head 4 +  Message Actions
.head 5 +  On SAM_SetFocus
.head 6 -  Call SalWaitCursor( TRUE )
.head 6 -  Set sSqlSelection = '
	SELECT 
		STAT_NAME 
	FROM 
		STATUS 
	ORDER BY
		STAT_ID '					! Query to get population data
.head 6 -  Call SqlConnect( hSqlSelection )					! Connect to Database
.head 6 -  Call SalListPopulate ( hWndItem, hSqlSelection, sSqlSelection )		! Return the results to the combo box
.head 6 -  Call SqlDisconnect ( hSqlSelection)					! Disconnect from Database
.head 6 -  Set sSqlSelection = ''
.head 6 -  Call SalWaitCursor( FALSE )
.head 5 +  On SAM_KillFocus
.head 6 -  Call SalSendClassMessage( SAM_KillFocus, 0, 0 )
.head 6 -  Set sSearchString = cmbStatus					! Get the combo box item value
.head 6 -  Set sColumn = 'STAT_ID'						! Set search column value					
.head 6 -  Set sTable = 'STATUS'						! Set search table value
.head 6 -  Set sWhere = 'STAT_NAME'						! Set Where clause value
.head 6 -  Call fnFindKey( sColumn, sTable, sWhere, sSearchString, nStatId  )	! Go to find the items PKY value
.head 5 +  On PAM_DISABLE
.head 6 -  ! Call VisWinSetFlags( hWndItem, WF_DisplayOnly, TRUE )		! Disable selection item
.head 6 -  Call SalDisableWindow( hWndItem )					! Disable item selection
.head 5 +  On PAM_ENABLE
.head 6 -  ! Call VisWinSetFlags( hWndItem, WF_DisplayOnly, FALSE )		! Enable item for selection 
.head 6 -  Call SalEnableWindow( hWndItem )					! Enable item selection
.head 5 +  On PAM_CLEARFIELD
.head 6 -  Call SalListClear( hWndItem )
.head 5 +  On PAM_EXPANDLISTITEM
.head 6 -  Set cmbStatus = frmMainScreen.tblSorted.colStatus			! Populate combo box
.head 3 -  Background Text: Raised By
.head 4 -  Resource Id: 34811
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class:
.head 4 -  Window Location and Size
.head 5 -  Left: 4.683"
.head 5 -  Top: 0.179"
.head 5 -  Width:  1.0"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 0.167"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? Yes
.head 4 -  Justify: Left
.head 4 -  Font Name: Default
.head 4 -  Font Size: Default
.head 4 -  Font Enhancement: Default
.head 4 -  Text Color: Default
.head 4 -  Background Color: Default
.head 3 +  Combo Box: cmbRaisedBy					! Who created this problem report
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsCmbAutoComplete
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Window Location and Size
.head 5 -  Left: 5.7"
.head 5 -  Top: 0.167"
.head 5 -  Width:  1.783"
.head 5 -  Width Editable? Class Default
.head 5 -  Height: 1.048"
.head 5 -  Height Editable? Class Default
.head 4 -  Visible? Class Default
.head 4 -  Editable? Class Default
.head 4 -  String Type: Class Default
.head 4 -  Maximum Data Length: Class Default
.head 4 -  Sorted? Class Default
.head 4 -  Always Show List? Class Default
.head 4 -  Vertical Scroll? Class Default
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Class Default
.head 4 -  Text Color: Class Default
.head 4 -  Background Color: Class Default
.head 4 -  Input Mask: Class Default
.head 4 -  List Initialization
.head 4 +  Message Actions
.head 5 +  On SAM_SetFocus
.head 6 -  Call SalWaitCursor( TRUE )
.head 6 -  Set sSqlSelection = '
	SELECT
		USER_NAME
	FROM
		USERS
	ORDER BY
		USER_NAME '					! Query to get population data
.head 6 -  Call SqlConnect( hSqlSelection )					! Connect to Database
.head 6 -  Call SalListPopulate ( hWndItem, hSqlSelection, sSqlSelection )		! Return the results to the combo box
.head 6 -  Call SqlDisconnect ( hSqlSelection)					! Disconnect from Database
.head 6 -  Set sSqlSelection = ''
.head 6 -  Call SalWaitCursor( FALSE )
.head 5 +  On SAM_KillFocus
.head 6 -  Call SalSendClassMessage( SAM_KillFocus, 0, 0 )			
.head 6 -  Set sSearchString = cmbRaisedBy					! Get the combo box item value
.head 6 -  Set sColumn = 'USER_ID'						! Set search column value
.head 6 -  Set sTable = 'USERS'						! Set search table value
.head 6 -  Set sWhere = 'USER_NAME'					! Set Where clause value
.head 6 -  Call fnFindKey( sColumn, sTable, sWhere, sSearchString, nRaisedBy  )	! Go to find the items PKY value
.head 5 +  On PAM_DISABLE
.head 6 -  ! Call VisWinSetFlags( hWndItem, WF_DisplayOnly, TRUE )		! Disable selection item
.head 6 -  Call SalDisableWindow( hWndItem )					! Disable item selection
.head 5 +  On PAM_ENABLE
.head 6 -  ! Call VisWinSetFlags( hWndItem, WF_DisplayOnly, FALSE )		! Enable item for selection 
.head 6 -  Call SalEnableWindow( hWndItem )					! Enable item selection
.head 5 +  On PAM_CLEARFIELD
.head 6 -  Call SalListClear( hWndItem )
.head 5 +  On PAM_EXPANDLISTITEM
.head 6 -  Set cmbRaisedBy = frmMainScreen.tblSorted.colRaisedBy		! Populate combo box
.head 3 -  Background Text: Raised Date
.head 4 -  Resource Id: 34812
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class:
.head 4 -  Window Location and Size
.head 5 -  Left: 4.683"
.head 5 -  Top: 0.512"
.head 5 -  Width:  1.1"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 0.167"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? Yes
.head 4 -  Justify: Left
.head 4 -  Font Name: Default
.head 4 -  Font Size: Default
.head 4 -  Font Enhancement: Default
.head 4 -  Text Color: Default
.head 4 -  Background Color: Default
.head 3 +  Data Field: dtRaised						! Date that the problem was raised
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class:
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Data
.head 5 -  Maximum Data Length: Default
.head 5 -  Data Type: Date/Time
.head 5 -  Editable? No
.head 4 -  Display Settings
.head 5 -  Window Location and Size
.head 6 -  Left: 5.983"
.head 6 -  Top: 0.488"
.head 6 -  Width:  1.5"
.head 6 -  Width Editable? Yes
.head 6 -  Height: 0.25"
.head 6 -  Height Editable? Yes
.head 5 -  Visible? Yes
.head 5 -  Border? Yes
.head 5 -  Justify: Center
.head 5 -  Format: dd-MMM-yyyy
.head 5 -  Country: Default
.head 5 -  Font Name: Default
.head 5 -  Font Size: Default
.head 5 -  Font Enhancement: Default
.head 5 -  Text Color: Default
.head 5 -  Background Color: Default
.head 5 -  Input Mask: Unformatted
.head 4 +  Message Actions
.head 5 +  On PAM_CLEARFIELD
.head 6 -  Set dtRaised = DATETIME_Null					! Wipe any field value
.head 5 +  On PAM_EXPANDLISTITEM
.head 6 -  Set dtRaised = frmMainScreen.tblSorted.colRaisedDate			! Populate date field
.head 3 -  Background Text: Assigned To	
.head 4 -  Resource Id: 34813
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class:
.head 4 -  Window Location and Size
.head 5 -  Left: 9.483"
.head 5 -  Top: 0.179"
.head 5 -  Width:  1.1"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 0.167"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? Yes
.head 4 -  Justify: Left
.head 4 -  Font Name: Default
.head 4 -  Font Size: Default
.head 4 -  Font Enhancement: Default
.head 4 -  Text Color: Default
.head 4 -  Background Color: Default
.head 3 +  Combo Box: cmbAssignedTo					! The programmer who gets to fix the problem
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsCmbAutoComplete
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Window Location and Size
.head 5 -  Left: 10.7"
.head 5 -  Top: 0.167"
.head 5 -  Width:  1.883"
.head 5 -  Width Editable? Class Default
.head 5 -  Height: 1.048"
.head 5 -  Height Editable? Class Default
.head 4 -  Visible? Class Default
.head 4 -  Editable? Class Default
.head 4 -  String Type: Class Default
.head 4 -  Maximum Data Length: Class Default
.head 4 -  Sorted? Class Default
.head 4 -  Always Show List? Class Default
.head 4 -  Vertical Scroll? Class Default
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Class Default
.head 4 -  Text Color: Class Default
.head 4 -  Background Color: Class Default
.head 4 -  Input Mask: Class Default
.head 4 -  List Initialization
.head 4 +  Message Actions
.head 5 +  On SAM_SetFocus
.head 6 -  Call SalWaitCursor( TRUE )
.head 6 -  Set sSqlSelection = '
	SELECT 
		PGMR_NAME
	FROM 
		PROGRAMMERS
	ORDER BY
		PGMR_NAME '					! Query to get population data
.head 6 -  Call SqlConnect( hSqlSelection )					! Connect to Database
.head 6 -  Call SalListPopulate ( hWndItem, hSqlSelection, sSqlSelection )		! Return the results to the combo box
.head 6 -  Call SqlDisconnect ( hSqlSelection)					! Disconnect from Database
.head 6 -  Set sSqlSelection = ''
.head 6 -  Call SalWaitCursor( FALSE )
.head 5 +  On SAM_KillFocus
.head 6 -  Call SalSendClassMessage( SAM_KillFocus, 0, 0 )
.head 6 -  Set sSearchString = cmbAssignedTo					! Get the combo box item value
.head 6 -  Set sAssigned = cmbAssignedTo					! Save a copy for use in the email notification
.head 6 -  Set sColumn = 'PGMR_ID'						! Set search column value
.head 6 -  Set sTable = 'PROGRAMMERS'					! Set search table value
.head 6 -  Set sWhere = 'PGMR_NAME'					! Set Where clause value
.head 6 -  Call fnFindKey( sColumn, sTable, sWhere, sSearchString, nAssigned  )	! Go to find the items PKY value
.head 6 -  Set dtAssigned = SalDateCurrent(  )					! Assigned NOW
.head 5 +  On PAM_DISABLE
.head 6 -  ! Call VisWinSetFlags( hWndItem, WF_DisplayOnly, TRUE )		! Disable selection item
.head 6 -  Call SalDisableWindow( hWndItem )					! Disable item selection
.head 5 +  On PAM_ENABLE
.head 6 -  ! Call VisWinSetFlags( hWndItem, WF_DisplayOnly, FALSE )		! Enable item for selection 
.head 6 -  Call SalEnableWindow( hWndItem )					! Enable item selection
.head 5 +  On PAM_CLEARFIELD
.head 6 -  Call SalListClear( hWndItem )
.head 5 +  On PAM_EXPANDLISTITEM
.head 6 -  Set cmbAssignedTo = frmMainScreen.tblSorted.colAssignedTo		! Populate Assigned to field
.head 3 -  Background Text: Assigned Date
.head 4 -  Resource Id: 34814
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class:
.head 4 -  Window Location and Size
.head 5 -  Left: 9.483"
.head 5 -  Top: 0.512"
.head 5 -  Width:  1.2"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 0.167"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? Yes
.head 4 -  Justify: Left
.head 4 -  Font Name: Default
.head 4 -  Font Size: Default
.head 4 -  Font Enhancement: Default
.head 4 -  Text Color: Default
.head 4 -  Background Color: Default
.head 3 +  Data Field: dtAssigned						! Date that problem was assigned to pgmr
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class:
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Data
.head 5 -  Maximum Data Length: Default
.head 5 -  Data Type: Date/Time
.head 5 -  Editable? No
.head 4 -  Display Settings
.head 5 -  Window Location and Size
.head 6 -  Left: 10.983"
.head 6 -  Top: 0.488"
.head 6 -  Width:  1.6"
.head 6 -  Width Editable? Yes
.head 6 -  Height: 0.25"
.head 6 -  Height Editable? Yes
.head 5 -  Visible? Yes
.head 5 -  Border? Yes
.head 5 -  Justify: Center
.head 5 -  Format: dd-MMM-yyyy
.head 5 -  Country: Default
.head 5 -  Font Name: Default
.head 5 -  Font Size: Default
.head 5 -  Font Enhancement: Default
.head 5 -  Text Color: Default
.head 5 -  Background Color: Default
.head 5 -  Input Mask: Unformatted
.head 4 +  Message Actions
.head 5 +  On PAM_CLEARFIELD
.head 6 -  Set dtAssigned = DATETIME_Null					! Wipe any field value
.head 5 +  On PAM_EXPANDLISTITEM
.head 6 -  Set dtAssigned = frmMainScreen.tblSorted.colAssignedDate			! Populate Assigned date field
.head 3 -  Group Box: Priority
.head 4 -  Resource Id: 34815
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class:
.head 4 -  Window Location and Size
.head 5 -  Left: 1.683"
.head 5 -  Top: 0.821"
.head 5 -  Width:  2.2"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 1.083"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? Yes
.head 4 -  Font Name: Default
.head 4 -  Font Size: Default
.head 4 -  Font Enhancement: Default
.head 4 -  Text Color: Default
.head 4 -  Background Color: Default
.head 3 +  Radio Button: rbHigh						! Priority Selection (High)
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class:
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title: High
.head 4 -  Window Location and Size
.head 5 -  Left: 1.983"
.head 5 -  Top: 1.071"
.head 5 -  Width:  0.9"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 0.25"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? Yes
.head 4 -  Font Name: Default
.head 4 -  Font Size: Default
.head 4 -  Font Enhancement: Default
.head 4 -  Text Color: Default
.head 4 -  Background Color: Default
.head 4 +  Message Actions
.head 5 +  On SAM_Click
.head 6 -  Set nPrtyId = 1							! Set numeric value of priority
.head 6 -  Set rbHigh = TRUE						! Select radio button
.head 5 +  On PAM_DISABLE
.head 6 -  Call VisWinSetFlags( hWndItem, WF_DisplayOnly, TRUE )		! Disable selection item
.head 5 +  On PAM_ENABLE
.head 6 -  Call VisWinSetFlags( hWndItem, WF_DisplayOnly, FALSE )		! Enable item for selection 
.head 5 +  On PAM_EXPANDLISTITEM
.head 6 +  If frmMainScreen.tblSorted.colPriorityId = 1				! If button was previously selected
.head 7 -  Call SalSendMsg( rbHigh, SAM_Click, TRUE, 0 )			! Simulate the selection	
.head 3 +  Radio Button: rbMedium						! Priority Selection (Medium)
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class:
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title: Medium
.head 4 -  Window Location and Size
.head 5 -  Left: 1.983"
.head 5 -  Top: 1.321"
.head 5 -  Width:  1.0"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 0.25"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? Yes
.head 4 -  Font Name: Default
.head 4 -  Font Size: Default
.head 4 -  Font Enhancement: Default
.head 4 -  Text Color: Default
.head 4 -  Background Color: Default
.head 4 +  Message Actions
.head 5 +  On SAM_Click
.head 6 -  Set nPrtyId = 2							! Set numeric value of priority
.head 6 -  Set rbMedium = TRUE						! Select radio button
.head 5 +  On PAM_DISABLE
.head 6 -  Call VisWinSetFlags( hWndItem, WF_DisplayOnly, TRUE )		! Disable selection item
.head 5 +  On PAM_ENABLE
.head 6 -  Call VisWinSetFlags( hWndItem, WF_DisplayOnly, FALSE )		! Enable item for selection 
.head 5 +  On PAM_EXPANDLISTITEM
.head 6 +  If frmMainScreen.tblSorted.colPriorityId = 2				! If button was previously selected
.head 7 -  Call SalSendMsg( rbMedium, SAM_Click, TRUE, 0 )			! Simulate the selection
.head 3 +  Radio Button: rbLow						! Priority Selection (Low)
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class:
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title: Low
.head 4 -  Window Location and Size
.head 5 -  Left: 1.983"
.head 5 -  Top: 1.571"
.head 5 -  Width:  0.9"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 0.25"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? Yes
.head 4 -  Font Name: Default
.head 4 -  Font Size: Default
.head 4 -  Font Enhancement: Default
.head 4 -  Text Color: Default
.head 4 -  Background Color: Default
.head 4 +  Message Actions
.head 5 +  On SAM_Create
.head 6 -  Call SalSendMsg( rbLow, SAM_Click, TRUE, 0 )			! Set as default in New records
.head 5 +  On SAM_Click
.head 6 -  Set nPrtyId = 3							! Set numeric value of priority
.head 6 -  Set rbLow = TRUE							! Select radio button
.head 5 +  On PAM_DISABLE
.head 6 -  Call VisWinSetFlags( hWndItem, WF_DisplayOnly, TRUE )		! Disable selection item
.head 5 +  On PAM_ENABLE
.head 6 -  Call VisWinSetFlags( hWndItem, WF_DisplayOnly, FALSE )		! Enable item for selection 
.head 5 +  On PAM_EXPANDLISTITEM
.head 6 +  If frmMainScreen.tblSorted.colPriorityId = 3				! If button was previously selected
.head 7 -  Call SalSendMsg( rbLow, SAM_Click, TRUE, 0 )			! Simulate the selection
.head 3 -  Group Box: Type
.head 4 -  Resource Id: 34816
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class:
.head 4 -  Window Location and Size
.head 5 -  Left: 4.683"
.head 5 -  Top: 0.821"
.head 5 -  Width:  2.8"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 1.083"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? Yes
.head 4 -  Font Name: Default
.head 4 -  Font Size: Default
.head 4 -  Font Enhancement: Default
.head 4 -  Text Color: Default
.head 4 -  Background Color: Default
.head 3 +  Radio Button: rbFault						! Problem Type Selection (Fault)
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class:
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title: Fault
.head 4 -  Window Location and Size
.head 5 -  Left: 4.983"
.head 5 -  Top: 1.155"
.head 5 -  Width:  1.0"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 0.25"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? Yes
.head 4 -  Font Name: Default
.head 4 -  Font Size: Default
.head 4 -  Font Enhancement: Default
.head 4 -  Text Color: Default
.head 4 -  Background Color: Default
.head 4 +  Message Actions
.head 5 +  On SAM_Click
.head 6 -  Set nTypeId = 1							! Set numeric value of type
.head 6 -  Set rbFault = TRUE						! Select radio button
.head 5 +  On SAM_Create
.head 6 -  Call SalSendMsg( rbFault, SAM_Click, TRUE, 0 )			! Set as default in New records
.head 5 +  On PAM_DISABLE
.head 6 -  Call VisWinSetFlags( hWndItem, WF_DisplayOnly, TRUE )		! Disable selection item
.head 5 +  On PAM_ENABLE
.head 6 -  Call VisWinSetFlags( hWndItem, WF_DisplayOnly, FALSE )		! Enable item for selection 
.head 5 +  On PAM_EXPANDLISTITEM
.head 6 +  If frmMainScreen.tblSorted.colTypeId = 1				! If button was previously selected
.head 7 -  Call SalSendMsg( rbFault, SAM_Click, TRUE, 0 )			! Simulate the selection
.head 3 +  Radio Button: rbEnhance						! Problem Type Selection (Fault)
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class:
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title: Enhancement
.head 4 -  Window Location and Size
.head 5 -  Left: 4.983"
.head 5 -  Top: 1.488"
.head 5 -  Width:  1.5"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 0.25"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? Yes
.head 4 -  Font Name: Default
.head 4 -  Font Size: Default
.head 4 -  Font Enhancement: Default
.head 4 -  Text Color: Default
.head 4 -  Background Color: Default
.head 4 +  Message Actions
.head 5 +  On SAM_Click
.head 6 -  Set nTypeId = 2							! Set numeric value of type
.head 6 -  Set rbEnhance = TRUE						! Select radio button
.head 5 +  On PAM_DISABLE
.head 6 -  Call VisWinSetFlags( hWndItem, WF_DisplayOnly, TRUE )		! Disable selection item
.head 5 +  On PAM_ENABLE
.head 6 -  Call VisWinSetFlags( hWndItem, WF_DisplayOnly, FALSE )		! Enable item for selection 
.head 5 +  On PAM_EXPANDLISTITEM
.head 6 +  If frmMainScreen.tblSorted.colTypeId = 2				! If button was previously selected
.head 7 -  Call SalSendMsg( rbEnhance, SAM_Click, TRUE, 0 )			! Simulate the selection
.head 3 -  Frame
.head 4 -  Resource Id: 34817
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class:
.head 4 -  Window Location and Size
.head 5 -  Left: 0.183"
.head 5 -  Top: 0.155"
.head 5 -  Width:  1.2"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 1.833"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? Yes
.head 4 -  Corners: Round
.head 4 -  Border Style: Etched
.head 4 -  Border Thickness: 1
.head 4 -  Border Color: Default
.head 4 -  Background Color: Default
.head 3 +  Pushbutton: pbNew							! Create new problem record
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class:
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title: &New
.head 4 -  Window Location and Size
.head 5 -  Left: 0.383"
.head 5 -  Top: 0.238"
.head 5 -  Width:  0.8"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 0.298"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? Yes
.head 4 -  Keyboard Accelerator: (none)
.head 4 -  Font Name: Default
.head 4 -  Font Size: Default
.head 4 -  Font Enhancement: Default
.head 4 -  Picture File Name:
.head 4 -  Picture Transparent Color: None
.head 4 -  Image Style: Single
.head 4 -  Text Color: Default
.head 4 -  Background Color: Default
.head 4 -  Button Appearance: Standard
.head 4 +  Message Actions
.head 5 +  On SAM_Click
.head 6 -  Set bNewRec = TRUE						! New record flag
.head 6 -  Call SalSendMsg ( hWndForm, PAM_ENABLECHILDREN, 0, 0 )		! Enable the record entry fields
.head 6 +  If bEditMode = TRUE						! Currently in Edit mode
.head 7 -  Call fnSaveOrCancel ()						! check if wanting to save it or cancel
.head 6 -  Call SalSendMsg ( hWndForm, PAM_CLEARCHILDREN, 0, 0 )		! Clear out fields
.head 6 -  Call fnInitFields()							! Initialise data fields
.head 6 -  Set bEditMode = TRUE						! Set edit mode on 
.head 5 +  On PAM_DISABLE
.head 6 +  If bUpdRec = TRUE
.head 7 -  Call SalDisableWindow( hWndItem )					! Disable item selection
.head 5 +  On PAM_ENABLE
.head 6 -  Call SalEnableWindow( hWndItem )					! Enable radio button	
.head 3 +  Pushbutton: pbEdit							! Edit an existing problem record
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class:
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title: &Edit
.head 4 -  Window Location and Size
.head 5 -  Left: 0.383"
.head 5 -  Top: 0.905"
.head 5 -  Width:  0.8"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 0.298"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? Yes
.head 4 -  Keyboard Accelerator: (none)
.head 4 -  Font Name: Default
.head 4 -  Font Size: Default
.head 4 -  Font Enhancement: Default
.head 4 -  Picture File Name:
.head 4 -  Picture Transparent Color: None
.head 4 -  Image Style: Single
.head 4 -  Text Color: Default
.head 4 -  Background Color: Default
.head 4 -  Button Appearance: Standard
.head 4 +  Message Actions
.head 5 +  On SAM_Click
.head 6 -  Set bEditMode = TRUE						! Set edit mode on 
.head 6 -  Set bUpdRec = TRUE						! Flag as update existing record function
.head 6 -  Set nAssignedPrior = nAssigned					! Save current assignment value
.head 6 -  Call SalSendMsg ( hWndForm, PAM_ENABLECHILDREN, 0, 0 )		! Enable the record entry fields
.head 6 -  Call SalSendMsg ( pbNew, PAM_DISABLE, 0, 0)				! Disable the NEW button
.head 6 -  Call SalSendMsg ( pbEdit, PAM_DISABLE, 0, 0)				! Disable the EDIT button
.head 6 -  Call SalSendMsg ( pbFind, PAM_DISABLE, 0, 0)				! Disable the FIND button
.head 6 -  Call fnToggleEditMode(dfProbNo)					! Set record edit mode flag on
.head 5 +  On PAM_DISABLE
.head 6 -  Call SalDisableWindow( hWndItem )					! Disable item selection
.head 5 +  On PAM_ENABLE
.head 6 -  Call SalEnableWindow( hWndItem )					! Enable radio button	
.head 3 +  Pushbutton: pbSave						! Save a modified problem record
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class:
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title: &Save
.head 4 -  Window Location and Size
.head 5 -  Left: 0.383"
.head 5 -  Top: 0.571"
.head 5 -  Width:  0.8"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 0.298"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? Yes
.head 4 -  Keyboard Accelerator: F5
.head 4 -  Font Name: Default
.head 4 -  Font Size: Default
.head 4 -  Font Enhancement: Default
.head 4 -  Picture File Name:
.head 4 -  Picture Transparent Color: None
.head 4 -  Image Style: Single
.head 4 -  Text Color: Default
.head 4 -  Background Color: Default
.head 4 -  Button Appearance: Standard
.head 4 +  Message Actions
.head 5 +  On SAM_Click
.head 6 +  If dfProbNo = NUMBER_Null AND bNewRec = FALSE			! If no problem number associated with an existing record
.head 7 -  Call SalMessageBox( 'You have somehow managed to delete the problem index number - Please tell the programmers about this...', 'Whoops!', MB_Ok )
.head 7 -  Return FALSE
.head 6 +  If nStatId = NUMBER_Null OR nStatId = 0				! If no status selected
.head 7 -  Call SalMessageBox( 'The Status field is blank - Please select an option from the drop down list.', 'Record Action', MB_Ok )
.head 7 -  Return FALSE
.head 6 +  If nRaisedBy = NUMBER_Null OR nRaisedBy = 0			! If the raised by box is empty
.head 7 -  Call SalMessageBox( 'The Raised By field is blank - Please select an option from the drop down list.', 'Record Action', MB_Ok )
.head 7 -  Return FALSE
.head 6 +  If mlProbDetails = STRING_Null					! If no problem details were given
.head 7 -  Call SalMessageBox( 'Please enter some details about the problem.', 'Record Action', MB_Ok )
.head 7 -  Return FALSE
.head 6 +  Else
.head 7 -  Call SalWaitCursor( TRUE )
.head 7 +  If nAssigned = NUMBER_Null OR nAssigned = 0			! If no-one assigned to this problem
.head 8 -  Set nAssigned = 1							! Set default as unassigned
.head 8 -  Set bSendEmailFlag = FALSE					! Don't bother to send email to programmer
.head 7 +  Else If nAssigned = nAssignedPrior OR nAssigned = 1			! If assignment value has not changed or unassigned
.head 8 -  Set bSendEmailFlag = FALSE					! Don't bother to send email to programmer
.head 7 +  Else
.head 8 -  Set bSendEmailFlag = TRUE					! Send email to programmer
.head 8 -  Set lsProbDetails = SalStrLeftX(mlProbDetails, 1000)			! Include basic problem details
.head 7 +  If bNewRec = TRUE						! If this is a new record
.head 8 -  Call fnGetLastProblemNo()						! Get last sequence number used
.head 8 -  Set dfProbNo = dfProbNo + 1					! Increment problem sequence number
.head 8 -  Set sSqlInsert = " INSERT INTO PROBLEM
(
	PROB_ID,
	STAT_ID,
	TYPE_ID,
	PRTY_ID,
	RAISED_ID,
	RAISED_DATE,
	ASSIGNED_ID,
	ASSIGNED_DATE,
	PROB_DETAILS,
	ACTION_LOG,
	PROG_ID,
	UPDATED_BY,
	LAST_UPDATED )
VALUES
(
	:dfProbNo,
	:nStatId,
	:nTypeId,
	:nPrtyId,
	:nRaisedBy,
	:dtRaised,
	:nAssigned,
	:dtAssigned,
	:mlProbDetails,
	:mlActions,
	:nProgram,
	:SqlUser,
	SYSDATETIME ) "
.head 8 -  Call SqlConnect( hSqlInsert )					! Connect to database
.head 8 -  Call SqlPrepare( hSqlInsert, sSqlInsert )				! Prepare to do insert
.head 8 -  Call SqlExecute (hSqlInsert)						! Execute record insert
.head 8 -  Call SqlDisconnect( hSqlInsert )					! Disconnect from database
.head 8 -  !
.head 8 -  ! Now do the same for any attached image 			
.head 8 +  If bSaveImageToDB = TRUE
.head 9 -  Set bSaveImageToDB = FALSE
.head 9 -  Set sSqlInsert = " INSERT INTO IMAGES
(
	PROB_ID,
	IMAGE_DATA )
VALUES
(
	:dfProbNo,
	:lsImage ) "
.head 9 -  Call SqlConnect( hSqlInsert )					! Connect to database
.head 9 -  Call SqlPrepare( hSqlInsert, sSqlInsert )				! Prepare to do insert
.head 9 -  Call SqlExecute (hSqlInsert)						! Execute record insert
.head 9 -  Call SqlDisconnect( hSqlInsert )					! Disconnect from database
.head 8 -  !
.head 8 -  Set bNewRec = FALSE						! New record has been saved
.head 8 -  Set sProbNo = SalNumberToStrX ( dfProbNo, 0 )			! Get problem number to display
.head 8 -  Call SalMessageBox( 'Record Saved. Problem Number is '|| sProbNo ||'', 'Record Action', MB_Ok )
.head 7 +  Else If bUpdRec = TRUE						! Save updated Record?
.head 8 -  Set sSqlUpdate = " UPDATE PROBLEM
SET	STAT_ID = :nStatId,
	TYPE_ID = :nTypeId,
	PRTY_ID = :nPrtyId,
	RAISED_ID = :nRaisedBy,
	ASSIGNED_ID = :nAssigned,
	ASSIGNED_DATE = :dtAssigned,
	PROB_DETAILS = :mlProbDetails,
	ACTION_LOG = :mlActions,
	PROG_ID = :nProgram,
	UPDATED_BY = :SqlUser,
	LAST_UPDATED = SYSDATETIME
WHERE
	PROB_ID = :dfProbNo"
.head 8 -  Call SqlConnect( hSqlUpdate )					! Connect to database
.head 8 -  Call SqlPrepare( hSqlUpdate, sSqlUpdate )				! Prepare to do update
.head 8 -  Call SqlExecute ( hSqlUpdate )					! Execute record update
.head 8 -  Call SqlDisconnect( hSqlUpdate )					! Disconnect from database
.head 8 -  !
.head 8 -  ! Now do the same for any attached image 			
.head 8 +  If bSaveImageToDB = TRUE
.head 9 -  Set bSaveImageToDB = FALSE
.head 9 -  Set sSqlUpdate = " UPDATE IMAGES
SET	IMAGE_DATA = :lsImage
WHERE
	PROB_ID = :dfProbNo"
.head 9 -  Call SqlConnect( hSqlUpdate )					! Connect to database
.head 9 -  Call SqlPrepare( hSqlUpdate, sSqlUpdate )				! Prepare to do update
.head 9 +  If NOT SqlExecute (hSqlUpdate)					! Execute record update
.head 10 -  !
.head 10 -  ! ** TEMP *** If it fails to update, then assume we are updating a problem where an image did NOT previously exist
.head 10 -  ! ** NEED TO GET THIS FUNCTIONING
.head 10 -  !
.head 10 -  Set sSqlUpdate = " INSERT INTO IMAGES
(
	PROB_ID,
	IMAGE_DATA )
VALUES
(
	:dfProbNo,
	:lsImage ) "
.head 10 -  Call SqlPrepare( hSqlUpdate, sSqlUpdate )				! Prepare to do update
.head 10 -  Call SqlExecute (hSqlUpdate)						! Execute record update
.head 9 -  Call SqlDisconnect( hSqlUpdate )					! Disconnect from database
.head 8 -  !
.head 8 -  Set bUpdRec = FALSE						! New record has been saved
.head 8 -  Set sProbNo = SalNumberToStrX ( dfProbNo, 0 )
.head 8 -  Call SalMessageBox( 'Details updated for problem number '|| sProbNo ||'', 'Record Action', MB_Ok )
.head 7 -  ! Call SalSendMsg ( hWndForm, PAM_CLEARCHILDREN, 0, 0 )		! Clear all item fields				
.head 7 -  Call SalSendMsg ( hWndForm, PAM_DISABLECHILDREN, 0, 0 )		! Disable the item selection
.head 7 -  Set bEditMode = FALSE						! Set edit mode Flag off
.head 7 -  Call SalWaitCursor( FALSE )
.head 7 +  If bSendEmailFlag = TRUE
.head 8 -  Call fnSendEmail( )						! Notify the assigned programmer 
.head 7 -  Set nAssignedPrior = NUMBER_Null					! Wipe any prior assigned value
.head 7 -  Call fnFindRecord( sSavedSearchString, nSearchType, bNotEqualToFlag )						! Repopulate the record selection table
.head 7 -  Call SalSendMsg ( pbNew, PAM_ENABLE, 0, 0 )				! Enable the NEW Button
.head 7 -  Call SalSendMsg ( pbFind, PAM_ENABLE, 0, 0 )				! Enable the FIND Button
.head 7 -  Return TRUE
.head 5 +  On PAM_DISABLE		
.head 6 -  Call SalDisableWindow( hWndItem )					! Disable Item Selection	
.head 5 +  On PAM_ENABLE
.head 6 -  Call SalEnableWindow( hWndItem )					! Enable Window Handle
.head 5 +  On SAM_SqlError
.head 6 -  Call SalMessageBox( 'Invalid or incomplete information entered - Please rectify', 'Record Action', MB_Ok )
.head 3 +  Pushbutton: pbFind							! Find selected records	
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class:
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title: &Find
.head 4 -  Window Location and Size
.head 5 -  Left: 0.383"
.head 5 -  Top: 1.238"
.head 5 -  Width:  0.8"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 0.298"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? Yes
.head 4 -  Keyboard Accelerator: F3
.head 4 -  Font Name: Default
.head 4 -  Font Size: Default
.head 4 -  Font Enhancement: Default
.head 4 -  Picture File Name:
.head 4 -  Picture Transparent Color: None
.head 4 -  Image Style: Single
.head 4 -  Text Color: Default
.head 4 -  Background Color: Default
.head 4 -  Button Appearance: Standard
.head 4 +  Message Actions
.head 5 +  On SAM_Click
.head 6 -  Set bOk = FALSE							! Set off OK flag before entering dialog box
.head 6 +  If SalModalDialog( dlgSearchParms, hWndForm, sColumn, sTable, sOrder, nSearchType, sSearchString, bNotEqualToFlag, bOk )			! Open the search criteria dialog box
.head 7 +  If bOk = TRUE							! Check if OK button was pressed in dialog box
.head 8 -  Call SalWaitCursor( TRUE )
.head 8 -  Call fnFindRecord( sSearchString, nSearchType, bNotEqualToFlag )						! Repopulate the record selection table
.head 8 -  Set sSavedSearchString = sSearchString
.head 8 -  Call SalWaitCursor( FALSE )
.head 8 -  Call SalSetFocus( tblSorted )
.head 8 -  Call SalSendMsg( tblSorted, SAM_RowHeaderClick, 0, 0 )
.head 6 +  Else
.head 7 -  Call SalMessageBox('Error opening Search Dialog box','Error', MB_Ok)	! Otherwise generate an error msg
.head 7 -  Return FALSE
.head 5 +  On PAM_DISABLE
.head 6 +  If bUpdRec = TRUE						! If this is a record update
.head 7 -  Call SalDisableWindow( hWndItem )					! Disable Item Selection	
.head 5 +  On PAM_ENABLE
.head 6 -  Call SalEnableWindow( hWndItem )					! Enable Item Selection
.head 3 +  Pushbutton: pbCancel						! Cancel record add/edit
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class:
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title: &Cancel
.head 4 -  Window Location and Size
.head 5 -  Left: 0.383"
.head 5 -  Top: 1.571"
.head 5 -  Width:  0.8"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 0.298"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? Yes
.head 4 -  Keyboard Accelerator: (none)
.head 4 -  Font Name: Default
.head 4 -  Font Size: Default
.head 4 -  Font Enhancement: Default
.head 4 -  Picture File Name:
.head 4 -  Picture Transparent Color: None
.head 4 -  Image Style: Single
.head 4 -  Text Color: Default
.head 4 -  Background Color: Default
.head 4 -  Button Appearance: Standard
.head 4 +  Message Actions
.head 5 +  On SAM_Click
.head 6 +  If bEditMode = TRUE						! Editing current record
.head 7 -  Call fnSaveOrCancel ()						! check if wanting to save it or cancel
.head 7 -  Call SalSendMsg ( hWndForm, PAM_CLEARCHILDREN, 0, 0 )		! empty fields
.head 7 -  Call SalSendMsg ( hWndForm, PAM_DISABLECHILDREN, 0, 0 )		! then disable them
.head 6 -  Call SalEnableWindow( pbNew )					! Enable NEW button
.head 6 -  Call SalEnableWindow( pbFind )					! Enable FIND Button
.head 5 +  On PAM_DISABLE
.head 6 -  Call SalDisableWindow( hWndItem )					! Disable Item Selection	
.head 5 +  On PAM_ENABLE
.head 6 -  Call SalEnableWindow( hWndItem )					! Enable Item Selection
.head 3 -  Background Text: Description
.head 4 -  Resource Id: 34818
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class:
.head 4 -  Window Location and Size
.head 5 -  Left: 0.383"
.head 5 -  Top: 2.095"
.head 5 -  Width:  0.9"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 0.167"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? Yes
.head 4 -  Justify: Left
.head 4 -  Font Name: Default
.head 4 -  Font Size: Default
.head 4 -  Font Enhancement: Default
.head 4 -  Text Color: Default
.head 4 -  Background Color: Default
.head 3 +  Multiline Field: mlProbDetails						! Problem description
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: cMultilineField
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Data
.head 5 -  Maximum Data Length: Class Default
.head 5 -  String Type: Class Default
.head 5 -  Editable? Class Default
.head 4 -  Display Settings
.head 5 -  Border? Class Default
.head 5 -  Word Wrap? Class Default
.head 5 -  Vertical Scroll? Class Default
.head 5 -  Window Location and Size
.head 6 -  Left: 1.6"
.head 6 -  Top: 2.0"
.head 6 -  Width:  10.983"
.head 6 -  Width Editable? Class Default
.head 6 -  Height: 1.155"
.head 6 -  Height Editable? Class Default
.head 5 -  Visible? Class Default
.head 5 -  Font Name: Class Default
.head 5 -  Font Size: Class Default
.head 5 -  Font Enhancement: Class Default
.head 5 -  Text Color: Class Default
.head 5 -  Background Color: Class Default
.head 4 +  Message Actions
.head 5 +  On PAM_DISABLE
.head 6 -  Call VisWinSetFlags( hWndItem, WF_DisplayOnly, TRUE )		! Disable selection item
.head 5 +  On PAM_ENABLE
.head 6 -  Call VisWinSetFlags( hWndItem, WF_DisplayOnly, FALSE )		! Enable item for selection 
.head 5 +  On PAM_CLEARFIELD
.head 6 -  Set mlProbDetails = STRING_Null					! Wipe any field value
.head 5 +  On PAM_EXPANDLISTITEM
.head 6 -  Set mlProbDetails = frmMainScreen.tblSorted.colProbDetails		! Populate field on expansion
.head 3 -  Background Text: Action Log
.head 4 -  Resource Id: 34819
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class:
.head 4 -  Window Location and Size
.head 5 -  Left: 0.383"
.head 5 -  Top: 3.345"
.head 5 -  Width:  1.0"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 0.167"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? Yes
.head 4 -  Justify: Left
.head 4 -  Font Name: Default
.head 4 -  Font Size: Default
.head 4 -  Font Enhancement: Default
.head 4 -  Text Color: Default
.head 4 -  Background Color: Default
.head 3 +  Multiline Field: mlActions						! Problem rectification log
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: cMultilineField
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Data
.head 5 -  Maximum Data Length: Class Default
.head 5 -  String Type: Class Default
.head 5 -  Editable? Class Default
.head 4 -  Display Settings
.head 5 -  Border? Class Default
.head 5 -  Word Wrap? Class Default
.head 5 -  Vertical Scroll? Class Default
.head 5 -  Window Location and Size
.head 6 -  Left: 1.6"
.head 6 -  Top: 3.238"
.head 6 -  Width:  10.983"
.head 6 -  Width Editable? Class Default
.head 6 -  Height: 1.083"
.head 6 -  Height Editable? Class Default
.head 5 -  Visible? Class Default
.head 5 -  Font Name: Class Default
.head 5 -  Font Size: Class Default
.head 5 -  Font Enhancement: Class Default
.head 5 -  Text Color: Class Default
.head 5 -  Background Color: Class Default
.head 4 +  Message Actions
.head 5 +  On PAM_DISABLE				
.head 6 -  Call VisWinSetFlags( hWndItem, WF_DisplayOnly, TRUE )		! Disable selection item
.head 5 +  On PAM_ENABLE
.head 6 -  Call VisWinSetFlags( hWndItem, WF_DisplayOnly, FALSE )		! Enable item for selection 
.head 5 +  On PAM_CLEARFIELD
.head 6 -  Set mlActions = STRING_Null					! Wipe any field value
.head 5 +  On PAM_EXPANDLISTITEM
.head 6 -  Set mlActions = frmMainScreen.tblSorted.colActions			! Populate field on expansion
.head 3 +  Pushbutton: pbViewScreenshot					! Image viewing 
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class:
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title: &View Screenshot
.head 4 -  Window Location and Size
.head 5 -  Left: 0.08"
.head 5 -  Top: 4.0"
.head 5 -  Width:  1.45"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 0.3"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? Yes
.head 4 -  Keyboard Accelerator: (none)
.head 4 -  Font Name: Default
.head 4 -  Font Size: Default
.head 4 -  Font Enhancement: Default
.head 4 -  Picture File Name:
.head 4 -  Picture Transparent Color: None
.head 4 -  Image Style: Single
.head 4 -  Text Color: Default
.head 4 -  Background Color: Default
.head 4 -  Button Appearance: Standard
.head 4 +  Message Actions
.head 5 +  On SAM_Create							
.head 6 -  Call SalDisableWindow( hWndItem )					! Disable Item Selection	
.head 5 +  On PAM_DISABLE
.head 6 -  Call SalDisableWindow( hWndItem )					! Disable Item Selection	
.head 5 +  On PAM_ENABLE
.head 6 -  Call SalEnableWindow( hWndItem )					! Enable Item Selection
.head 5 +  On SAM_Click
.head 6 -  ! Call SalMessageBox( 'This option is still under development and is currently not fully functional', 'Add Image', MB_Ok )
.head 6 -  Call SalCreateWindow (frmScreenImage, hWndForm, TRUE, lsImage, bSaveImageToDB )		! Create the results list
.head 3 +  Pushbutton: pbAddScreenshot						! Image capture - not yet coded
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class:
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title: &Add Screenshot
.head 4 -  Window Location and Size
.head 5 -  Left: 0.08"
.head 5 -  Top: 3.7"
.head 5 -  Width:  1.45"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 0.3"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? Yes
.head 4 -  Keyboard Accelerator: (none)
.head 4 -  Font Name: Default
.head 4 -  Font Size: Default
.head 4 -  Font Enhancement: Default
.head 4 -  Picture File Name:
.head 4 -  Picture Transparent Color: None
.head 4 -  Image Style: Single
.head 4 -  Text Color: Default
.head 4 -  Background Color: Default
.head 4 -  Button Appearance: Standard
.head 4 +  Message Actions
.head 5 +  On SAM_Create							! Temporarily disabled
.head 6 -  Call SalDisableWindow( hWndItem )					! Disable Item Selection	
.head 5 +  On PAM_DISABLE
.head 6 -  Call SalDisableWindow( hWndItem )					! Disable Item Selection	
.head 5 +  On PAM_ENABLE
.head 6 -  Call SalEnableWindow( hWndItem )					! Enable Item Selection
.head 5 +  On SAM_Click
.head 6 -  Call SalCreateWindow (frmScreenImage, hWndForm, FALSE, lsImage, bSaveImageToDB )			! Create the results list
.head 3 -  Group Box: Area
.head 4 -  Resource Id: 34820
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class:
.head 4 -  Window Location and Size
.head 5 -  Left: 8.283"
.head 5 -  Top: 0.821"
.head 5 -  Width:  4.3"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 1.083"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? Yes
.head 4 -  Font Name: Default
.head 4 -  Font Size: Default
.head 4 -  Font Enhancement: Default
.head 4 -  Text Color: Default
.head 4 -  Background Color: Default
.head 3 +  Check Box: cbCustomer
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class:
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title: Customer
.head 4 -  Window Location and Size
.head 5 -  Left: 8.483"
.head 5 -  Top: 1.071"
.head 5 -  Width:  1.4"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 0.25"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? Yes
.head 4 -  Font Name: Default
.head 4 -  Font Size: Default
.head 4 -  Font Enhancement: Default
.head 4 -  Text Color: Default
.head 4 -  Background Color: Default
.head 4 +  Message Actions
.head 5 +  On SAM_Click
.head 6 +  If cbCustomer = FALSE						! If checkbox is not ticked
.head 7 -  Set nProgram = nProgram & BITX7					!  Set off customer check item bit
.head 6 +  Else
.head 7 -  Set nProgram = nProgram | BIT7					! Set on customer check item bit
.head 5 +  On PAM_DISABLE
.head 6 -  Call VisWinSetFlags( hWndItem, WF_DisplayOnly, TRUE )		! Disable check box
.head 5 +  On PAM_ENABLE
.head 6 -  Call VisWinSetFlags( hWndItem, WF_DisplayOnly, FALSE )		! Enable check box
.head 5 +  On PAM_CLEARFIELD
.head 6 -  Set cbCustomer = FALSE					! Clear checkbox selection
.head 5 +  On PAM_EXPANDLISTITEM
.head 6 +  If nProgram & BIT7							! If checkbox was previously selected
.head 7 -  Set cbCustomer = TRUE						! Set checkbox selection
.head 6 +  Else
.head 7 -  Set cbCustomer = FALSE						! Clear checkbox selection
.head 3 +  Check Box: cbLoads
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class:
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title: Loads
.head 4 -  Window Location and Size
.head 5 -  Left: 10.183"
.head 5 -  Top: 1.071"
.head 5 -  Width:  1.0"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 0.25"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? Yes
.head 4 -  Font Name: Default
.head 4 -  Font Size: Default
.head 4 -  Font Enhancement: Default
.head 4 -  Text Color: Default
.head 4 -  Background Color: Default
.head 4 +  Message Actions
.head 5 +  On SAM_Click
.head 6 +  If cbLoads = FALSE						! If checkbox is not ticked
.head 7 -  Set nProgram = nProgram & BITX6					! Set off loads check item bit
.head 6 +  Else
.head 7 -  Set nProgram = nProgram | BIT6					! Set on loads check item bit
.head 5 +  On PAM_DISABLE
.head 6 -  Call VisWinSetFlags( hWndItem, WF_DisplayOnly, TRUE )		! Disable check box
.head 5 +  On PAM_ENABLE
.head 6 -  Call VisWinSetFlags( hWndItem, WF_DisplayOnly, FALSE )		! Enable check box
.head 5 +  On PAM_CLEARFIELD	
.head 6 -  Set cbLoads = FALSE						! Clear checkbox selection
.head 5 +  On PAM_EXPANDLISTITEM
.head 6 +  If nProgram & BIT6							! If checkbox was previously selected
.head 7 -  Set cbLoads = TRUE						! Set checkbox selection
.head 6 +  Else
.head 7 -  Set cbLoads = FALSE						! Clear checkbox selection
.head 3 +  Check Box: cbStockItems
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class:
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title: Stock Items
.head 4 -  Window Location and Size
.head 5 -  Left: 8.483"
.head 5 -  Top: 1.321"
.head 5 -  Width:  1.4"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 0.25"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? Yes
.head 4 -  Font Name: Default
.head 4 -  Font Size: Default
.head 4 -  Font Enhancement: Default
.head 4 -  Text Color: Default
.head 4 -  Background Color: Default
.head 4 +  Message Actions
.head 5 +  On SAM_Click
.head 6 +  If cbStockItems = FALSE						! If checkbox is not ticked
.head 7 -  Set nProgram = nProgram & BITX5					! Sett off stock items check item bit
.head 6 +  Else
.head 7 -  Set nProgram = nProgram | BIT5					! Set on stock items check item
.head 5 +  On PAM_DISABLE
.head 6 -  Call VisWinSetFlags( hWndItem, WF_DisplayOnly, TRUE )		! Disable check box
.head 5 +  On PAM_ENABLE
.head 6 -  Call VisWinSetFlags( hWndItem, WF_DisplayOnly, FALSE )		! Enable check box
.head 5 +  On PAM_CLEARFIELD
.head 6 -  Set cbStockItems = FALSE						! Clear checkbox selection
.head 5 +  On PAM_EXPANDLISTITEM
.head 6 +  If nProgram & BIT5							! If checkbox was previously selected
.head 7 -  Set cbStockItems = TRUE						! Set checkbox selection
.head 6 +  Else
.head 7 -  Set cbStockItems = FALSE						! Clear checkbox selection
.head 3 +  Check Box: cbFarms
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class:
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title: Farms
.head 4 -  Window Location and Size
.head 5 -  Left: 10.183"
.head 5 -  Top: 1.321"
.head 5 -  Width:  1.0"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 0.25"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? Yes
.head 4 -  Font Name: Default
.head 4 -  Font Size: Default
.head 4 -  Font Enhancement: Default
.head 4 -  Text Color: Default
.head 4 -  Background Color: Default
.head 4 +  Message Actions
.head 5 +  On SAM_Click
.head 6 +  If cbFarms = FALSE						! If checkbox is not ticked
.head 7 -  Set nProgram = nProgram & BITX4					! Set off farms check item bit
.head 6 +  Else
.head 7 -  Set nProgram = nProgram | BIT4					! Set on farms check item bit
.head 5 +  On PAM_DISABLE
.head 6 -  Call VisWinSetFlags( hWndItem, WF_DisplayOnly, TRUE )		! Disable check box
.head 5 +  On PAM_ENABLE
.head 6 -  Call VisWinSetFlags( hWndItem, WF_DisplayOnly, FALSE )		! Enable check box
.head 5 +  On PAM_CLEARFIELD
.head 6 -  Set cbFarms = FALSE						! Clear checkbox selection
.head 5 +  On PAM_EXPANDLISTITEM
.head 6 +  If nProgram & BIT4							! If checkbox was previously selected
.head 7 -  Set cbFarms = TRUE						! Set checkbox selection
.head 6 +  Else
.head 7 -  Set cbFarms = FALSE						! Clear checkbox selection
.head 3 +  Check Box: cbTransactions
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class:
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title: Transactions
.head 4 -  Window Location and Size
.head 5 -  Left: 8.483"
.head 5 -  Top: 1.571"
.head 5 -  Width:  1.4"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 0.25"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? Yes
.head 4 -  Font Name: Default
.head 4 -  Font Size: Default
.head 4 -  Font Enhancement: Default
.head 4 -  Text Color: Default
.head 4 -  Background Color: Default
.head 4 +  Message Actions
.head 5 +  On SAM_Click
.head 6 +  If cbTransactions = FALSE						! If checkbox is not ticked
.head 7 -  Set nProgram = nProgram & BITX3					! Set off transactions check item bit
.head 6 +  Else
.head 7 -  Set nProgram = nProgram | BIT3					! Set on transactions check item bit
.head 5 +  On PAM_DISABLE
.head 6 -  Call VisWinSetFlags( hWndItem, WF_DisplayOnly, TRUE )		! Disable check box
.head 5 +  On PAM_ENABLE
.head 6 -  Call VisWinSetFlags( hWndItem, WF_DisplayOnly, FALSE )		! Enable check box
.head 5 +  On PAM_CLEARFIELD
.head 6 -  Set cbTransactions = FALSE					! Clear checkbox selection
.head 5 +  On PAM_EXPANDLISTITEM
.head 6 +  If nProgram & BIT3							! If checkbox was previously selected
.head 7 -  Set cbTransactions = TRUE						! Set checkbox selection
.head 6 +  Else
.head 7 -  Set cbTransactions = FALSE					! Clear checkbox selection
.head 3 +  Check Box: cbReports
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class:
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title: Reports
.head 4 -  Window Location and Size
.head 5 -  Left: 10.183"
.head 5 -  Top: 1.571"
.head 5 -  Width:  1.0"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 0.25"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? Yes
.head 4 -  Font Name: Default
.head 4 -  Font Size: Default
.head 4 -  Font Enhancement: Default
.head 4 -  Text Color: Default
.head 4 -  Background Color: Default
.head 4 +  Message Actions
.head 5 +  On SAM_Click
.head 6 +  If cbReports = FALSE						! If checkbox is not ticked
.head 7 -  Set nProgram = nProgram & BITX2					! Set off reports check item bit
.head 6 +  Else
.head 7 -  Set nProgram = nProgram | BIT2					! Set on reports check item bit
.head 5 +  On PAM_DISABLE
.head 6 -  Call VisWinSetFlags( hWndItem, WF_DisplayOnly, TRUE )		! Disable check box
.head 5 +  On PAM_ENABLE
.head 6 -  Call VisWinSetFlags( hWndItem, WF_DisplayOnly, FALSE )		! Enable check box
.head 5 +  On PAM_CLEARFIELD	
.head 6 -  Set cbReports = FALSE						! Clear checkbox selection
.head 5 +  On PAM_EXPANDLISTITEM
.head 6 +  If nProgram & BIT2							! If checkbox was previously selected
.head 7 -  Set cbReports = TRUE						! Set checkbox selection
.head 6 +  Else
.head 7 -  Set cbReports = FALSE						! Clear checkbox selection
.head 3 +  Check Box: cbOther
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class:
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title: Other
.head 4 -  Window Location and Size
.head 5 -  Left: 11.383"
.head 5 -  Top: 1.321"
.head 5 -  Width:  1.0"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 0.25"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? Yes
.head 4 -  Font Name: Default
.head 4 -  Font Size: Default
.head 4 -  Font Enhancement: Default
.head 4 -  Text Color: Default
.head 4 -  Background Color: Default
.head 4 +  Message Actions
.head 5 +  On SAM_Click
.head 6 +  If cbOther = FALSE						! If checkbox is not ticked
.head 7 -  Set nProgram = nProgram & BITX1					! Set off Other check item bit
.head 6 +  Else
.head 7 -  Set nProgram = nProgram | BIT1					! Set on Other check item bit
.head 5 +  On PAM_DISABLE
.head 6 -  Call VisWinSetFlags( hWndItem, WF_DisplayOnly, TRUE )		! Disable check box
.head 5 +  On PAM_ENABLE
.head 6 -  Call VisWinSetFlags( hWndItem, WF_DisplayOnly, FALSE )		! Enable check box
.head 5 +  On PAM_CLEARFIELD	
.head 6 -  Set cbOther = FALSE						! Clear checkbox selection
.head 5 +  On PAM_EXPANDLISTITEM
.head 6 +  If nProgram & BIT1							! If checkbox was previously selected
.head 7 -  Set cbOther = TRUE						! Set checkbox selection
.head 6 +  Else
.head 7 -  Set cbOther = FALSE						! Clear checkbox selection
.head 3 +  Check Box: cbHardware
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class:
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title: Hardware
.head 4 -  Window Location and Size
.head 5 -  Left: 11.383"
.head 5 -  Top: 1.071"
.head 5 -  Width:  1.1"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 0.25"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? Yes
.head 4 -  Font Name: Default
.head 4 -  Font Size: Default
.head 4 -  Font Enhancement: Default
.head 4 -  Text Color: Default
.head 4 -  Background Color: Default
.head 4 +  Message Actions
.head 5 +  On SAM_Click
.head 6 +  If cbHardware = FALSE						! If checkbox is not ticked
.head 7 -  Set nProgram = nProgram & BITX0					! Set off Other check item bit
.head 6 +  Else
.head 7 -  Set nProgram = nProgram | BIT0					! Set on Other check item bit
.head 5 +  On PAM_DISABLE
.head 6 -  Call VisWinSetFlags( hWndItem, WF_DisplayOnly, TRUE )		! Disable check box
.head 5 +  On PAM_ENABLE
.head 6 -  Call VisWinSetFlags( hWndItem, WF_DisplayOnly, FALSE )		! Enable check box
.head 5 +  On PAM_CLEARFIELD	
.head 6 -  Set cbHardware = FALSE						! Clear checkbox selection
.head 5 +  On PAM_EXPANDLISTITEM
.head 6 +  If nProgram & BIT0							! If checkbox was previously selected
.head 7 -  Set cbHardware = TRUE						! Set checkbox selection
.head 6 +  Else
.head 7 -  Set cbHardware = FALSE						! Clear checkbox selection
.head 2 +  Functions
.head 3 +  Function: fnInitFields
.head 4 -  Description: Initialises field values for new record processing
.head 4 -  Returns
.head 4 -  Parameters
.head 4 -  Static Variables
.head 4 -  Local variables
.head 4 +  Actions
.head 5 -  Set bNewRec = TRUE						! Set ON new record Indicator
.head 5 -  Call SalSendMsg( rbLow, SAM_Click, 0, 0 )				! Assume it is a problem
.head 5 -  Call SalSendMsg( rbFault, SAM_Click, 0, 0 )				! Set Default Priority to Low
.head 5 -  Set dtRaised = SalDateCurrent(  )					! Raised Now
.head 5 -  Call SalSendMsg( cmbStatus, SAM_DropDown, 0, 0 )			! Wake up the combo box
.head 5 -  Set cmbStatus = 'OPENED'						! Newly Open Status
.head 5 -  Set nStatId = 1							! Reset Status index value
.head 5 -  Set nProgram = 0							! Clear program list value
.head 5 -  Call SalSendMsg( cmbRaisedBy, SAM_DropDown, 0, 0 )			! Wake up the combo box
.head 5 -  Set cmbRaisedBy = SqlUser						! Get current user name
.head 5 -  Call fnGetUserID()							! Find matching userid number
.head 5 -  Set nAssigned = NUMBER_Null					! Initialise  Assigned To index value
.head 5 -  Set lsImage = STRING_Null						! Initialise attached image field
.head 5 -  Return TRUE
.head 3 +  Function: fnSaveOrCancel
.head 4 -  Description: Checks if the user  wishes to save the current modified record
.head 4 -  Returns
.head 4 -  Parameters
.head 4 -  Static Variables
.head 4 -  Local variables
.head 4 +  Actions
.head 5 +  If SalMessageBox( 'Do you wish to save the current record?', 'Record Action', MB_YesNo ) = IDYES
.head 6 -  Call SalSendMsg( pbSave, SAM_Click, 0, 0 )				! Go and save it
.head 5 +  Else
.head 6 -  Set bNewRec = FALSE						! Set OFF new record Indicator
.head 6 -  Set bUpdRec = FALSE						! Set off update record flag
.head 6 -  Set bEditMode = FALSE						! Set off edit record flag
.head 6 -  Call SalSendMsg( pbCancel, SAM_Click, 0, 0 )				! Go and cancel the record
.head 5 -  Return TRUE
.head 3 +  Function: fnGetLastProblemNo
.head 4 -  Description: Find the last database problem number created
.head 4 -  Returns
.head 4 -  Parameters
.head 4 -  Static Variables
.head 4 +  Local variables
.head 5 -  Sql Handle: hSqlLastNo							! Handle for SQL statement execution	
.head 5 -  String: sSqlLastNo								! String containing SQL statement text
.head 4 +  Actions
.head 5 -  Set sSqlLastNo = ' SELECT MAX(PROB_ID) FROM PROBLEM INTO :dfProbNo'	! Get maximum prob number
.head 5 -  Call SqlConnect( hSqlLastNo )						! and store the result into
.head 5 -  Call SqlPrepare( hSqlLastNo, sSqlLastNo )					! the datasheet ProbNo field
.head 5 -  Call SqlExecute (hSqlLastNo)
.head 5 -  Call SqlFetchRow( hSqlLastNo, 0, nReturnCode )					! Get resultant rows
.head 5 -  Call SqlDisconnect (hSqlLastNo)						! Drop the SQL handle
.head 3 +  Function: fnGetUserID
.head 4 -  Description: Finds the numeric table value for a given user name
.head 4 -  Returns
.head 4 -  Parameters
.head 4 -  Static Variables
.head 4 +  Local variables
.head 5 -  Sql Handle: hSqlUserId							! Handle for SQL statement execution	
.head 5 -  String: sSqlUserId								! String containing SQL statement text
.head 4 +  Actions
.head 5 -  Set sSqlUserId = '
	SELECT USER_ID FROM USERS INTO :nRaisedBy WHERE USER_NAME = :SqlUser '	! Get User number
.head 5 -  Call SqlConnect( hSqlUserId )						! and store the result into
.head 5 -  Call SqlPrepare( hSqlUserId, sSqlUserId )					! the variable userid field
.head 5 -  Call SqlExecute (hSqlUserId)
.head 5 -  Call SqlFetchRow( hSqlUserId, 0, nReturnCode )					! Get resultant rows
.head 5 -  Call SqlDisconnect (hSqlUserId)						! Drop the SQL handle
.head 3 +  Function: fnFindKey
.head 4 -  Description: Based on the given column, table and search parameters, this will return the item's primary key value
.head 4 +  Returns
.head 5 -  Boolean:
.head 4 +  Parameters
.head 5 -  String: sColumn
.head 5 -  String: sTable
.head 5 -  String: sWhere
.head 5 -  String: sSearchString
.head 5 -  Receive Number: nSelectedItem
.head 4 -  Static Variables
.head 4 +  Local variables
.head 5 -  String: sSqlSelectedItem						! SQL statement string
.head 5 -  Sql Handle: hSqlSelectedItem					! SQL statement connection handle
.head 4 +  Actions
.head 5 -  Set nSelectedItem = 0						! Set default return vlaue
.head 5 +  If sColumn = STRING_Null						! If Search column is blank
.head 6 -  Call SalMessageBox( 'Search COLUMN variable is null. Unable to resolve return value', 'FindKey function', MB_Ok )
.head 5 +  Else If sTable = STRING_Null					! If search table value is blank
.head 6 -  Call SalMessageBox( 'Search TABLE variable is null. Unable to resolve return value', 'FindKey function', MB_Ok )
.head 5 +  Else If sWhere = STRING_Null					! If Where clause is blank
.head 6 -  Call SalMessageBox( 'Search WHERE variable is null. Unable to resolve return value', 'FindKey function', MB_Ok )
.head 5 +  Else
.head 6 -  Set sSqlSelectedItem = '
	SELECT 
		'|| sColumn ||' 
	FROM 
		'|| sTable ||' 
	INTO
		:nSelectedItem
	WHERE
		'|| sWhere ||' = :sSearchString'			! Use items from the predefined table and column
.head 6 -  Call SqlConnect( hSqlSelectedItem )					! Connect to Database
.head 6 -  Call SqlPrepareAndExecute( hSqlSelectedItem, sSqlSelectedItem )		! Build the query
.head 6 -  Call SqlFetchRow ( hSqlSelectedItem, 0, nReturnCode )			! Get the result
.head 6 -  Call SqlDisconnect (hSqlSelectedItem)				! Disconnect from Database
.head 5 -  Return TRUE							! Return the result to caller	
.head 3 +  ! Function: fnBitTest
.head 4 -  Description: Checks given field ( sBitField ) in table (sBitTable) for desired bit value (nBitValue)
.head 4 -  Returns 
.head 4 -  Parameters 
.head 4 -  Static Variables 
.head 4 +  Local variables 
.head 5 -  String: sBitSql
.head 5 -  String: sBitField
.head 5 -  String: sBitTable
.head 5 -  Number: nBitValue
.head 4 +  Actions 
.head 5 -  Set sBitSql = '
SELECT  
	'|| sBitField ||'
FROM 
	'|| sBitTable ||'
WHERE
	( @MOD( ( '|| sBitField ||' / '|| nBitValue ||' ), 2 ) >= 1 ) '
.head 3 +  Function: fnSendEmail
.head 4 -  Description: Send an SMTP email to notify the assigned programmer of the problem
.head 4 -  Returns
.head 4 -  Parameters
.head 4 -  Static Variables
.head 4 +  Local variables
.head 5 -  String: sRecipient							! Deliver to
.head 5 -  String: sCopyTo							! Copy to
.head 5 -  String: sBccTo							! Blind Copy to
.head 5 -  String: sSenderName						! Send from (alias)
.head 5 -  String: sSenderAddrs						! Send from
.head 5 -  String: sSubject							! Email header
.head 5 -  String: sBodyText							! Text of email
.head 5 -  String: sAttachment							! Attachment location
.head 5 -  String: sEmailServer							! Host name of email server
.head 5 -  Number: nPort							! host server SMTP port
.head 4 +  Actions
.head 5 -  !
.head 5 -  Set sRecipient = sAssigned||'@flemings.com.au'				! Send to assigned programmer
.head 5 -  Set sCopyTo = STRING_Null						! Send to assigned programmer
.head 5 -  Set sBccTo = STRING_Null						! Send to assigned programmer
.head 5 +  If SqlUser = STRING_Null
.head 6 -  Set sSenderName = 'Automated'						! Default sender alias is 'Automated'
.head 6 -  Set sSenderAddrs = 'Automated@flemings.com.au'				! Default Sender is 'Automated'
.head 5 +  Else
.head 6 -  Set sSenderName = SqlUser 						! Use current user as sender alias
.head 6 -  Set sSenderAddrs = SqlUser || '@flemings.com.au'				! Use current user as sender
.head 5 -  Set sSubject = 'New Problem Assigned - Number '||sProbNo||''		! Email title
.head 5 -  Set sBodyText = 'Problem number '||sProbNo||' has just been assigned to you by '||SqlUser||'.'		! Body text
.head 5 -  Set sBodyText = sBodyText ||
	SalNumberToChar( 13 ) || SalNumberToChar( 10 ) ||
	SalNumberToChar( 13 ) || SalNumberToChar( 10 ) ||
	'The problem text is:' ||
	SalNumberToChar( 13 ) || SalNumberToChar( 10 ) || 
	lsProbDetails  
.head 5 -  Set sAttachment = STRING_Null					! No attachments to send
.head 5 -  !
.head 5 -  Set sEmailServer = 'mail'						! Email server name
.head 5 -  Set nPort = 25							! Email SMTP port
.head 5 -  !
.head 5 -  Call SalWaitCursor( TRUE )
.head 5 -  Call SMTPSend( sRecipient, sCopyTo, sBccTo, sSenderName, sSenderAddrs, sSubject, sBodyText, sAttachment, sEmailServer, nPort)	 ! Send mail
.head 5 -  ! Call SMTPSend( sRecipient, sSenderAddrs, sSubject, sBodyText, sAttachment, sEmailServer, nPort)	 ! Send mail
.head 5 -  Call SalWaitCursor( FALSE )
.head 5 -  !
.head 5 -  Call SalModalDialog ( dlgEmailSentSplash, hWndForm )			! Call the email transmission splash screen				
.head 3 +  Function: fnFindRecord
.head 4 -  Description: Builds SQL search query based upon dialog box selection criteria
.head 4 -  Returns
.head 4 +  Parameters
.head 5 -  String: sSearchString
.head 5 -  Number: nSearchType
.head 5 -  Boolean: bNotEqualToFlag
.head 4 -  Static Variables
.head 4 +  Local variables
.head 5 -  String: sSqlWhere							! Search 'WHERE' parameters
.head 5 -  String: sSqlOrder							! Search 'ORDER BY' Parameters
.head 4 +  Actions
.head 5 -  Call SalWaitCursor( TRUE )
.head 5 +  If sSearchString = STRING_Null					! If no search value was selected from the list
.head 6 +  If nSearchType = 10						! If searching by Last Updated dates
.head 7 -  Call SalDateToStr( SalDateCurrent(  ), sSearchString )			! Set default date/time
.head 6 +  Else
.head 7 -  Set nSearchType = 0						! Otherwise - Set a default search type
.head 5 +  Select Case (nSearchType)						! Build Search details based on given parameters
.head 6 +  Case 0				! Show All Items
.head 7 +  If bNotEqualToFlag = TRUE					! If NOT Equal To flag set
.head 8 -  Set sSqlWhere = ' PROBLEM.PROB_ID != PROBLEM.PROB_ID '		! Set Dummy sort field
.head 7 +  Else
.head 8 -  Set sSqlWhere = ' PROBLEM.PROB_ID = PROBLEM.PROB_ID '		! Set Dummy sort field
.head 7 -  ! Set sSqlOrder = ' ORDER BY PROBLEM.PROB_ID DESC'			! Sort Order
.head 7 -  Set sSqlOrder = STRING_Null						! No Sort Order
.head 7 -  Break
.head 6 +  Case 1				! Search by Problem Number
.head 7 +  If bNotEqualToFlag = TRUE					! If NOT Equal To flag set
.head 8 -  Set sSqlWhere = ' PROBLEM.PROB_ID != :sSearchString '		! Select sort field
.head 7 +  Else
.head 8 -  Set sSqlWhere = ' PROBLEM.PROB_ID = :sSearchString '		! Select sort field
.head 7 -  ! Set sSqlOrder = ' ORDER BY PROBLEM.PROB_ID DESC'			! Sort Order
.head 7 -  Set sSqlOrder = STRING_Null						! No Sort Order
.head 7 -  Break
.head 6 +  Case 2				! Search by Status
.head 7 +  If bNotEqualToFlag = TRUE					! If NOT Equal To flag set
.head 8 -  Set sSqlWhere = ' STATUS.STAT_NAME != :sSearchString '		! Select sort field
.head 7 +  Else
.head 8 -  Set sSqlWhere = ' STATUS.STAT_NAME = :sSearchString '		! Select sort field
.head 7 -  ! Set sSqlOrder = ' ORDER BY PROBLEM.PROB_ID DESC'			! Sort Order
.head 7 -  Set sSqlOrder = STRING_Null						! No Sort Order
.head 7 -  Break
.head 6 +  Case 3				! Search by Type
.head 7 +  If bNotEqualToFlag = TRUE					! If NOT Equal To flag set
.head 8 -  Set sSqlWhere = ' TYPE.TYPE_NAME != :sSearchString '		! Select sort field
.head 7 +  Else
.head 8 -  Set sSqlWhere = ' TYPE.TYPE_NAME = :sSearchString '		! Select sort field
.head 7 -  ! Set sSqlOrder = ' ORDER BY PROBLEM.PROB_ID DESC'			! Sort Order
.head 7 -  Set sSqlOrder = STRING_Null						! No Sort Order
.head 7 -  Break
.head 6 +  Case 4				! Search by Priority
.head 7 +  If bNotEqualToFlag = TRUE					! If NOT Equal To flag set
.head 8 -  Set sSqlWhere = ' PRIORITY.PRTY_NAME != :sSearchString '		! Select sort field
.head 7 +  Else
.head 8 -  Set sSqlWhere = ' PRIORITY.PRTY_NAME = :sSearchString '		! Select sort field
.head 7 -  ! Set sSqlOrder = ' ORDER BY PROBLEM.PROB_ID DESC'			! Sort Order
.head 7 -  Set sSqlOrder = STRING_Null						! No Sort Order
.head 7 -  Break
.head 6 +  Case 5				! Search by Raised By
.head 7 +  If bNotEqualToFlag = TRUE					! If NOT Equal To flag set
.head 8 -  Set sSqlWhere = ' USERS.USER_NAME != :sSearchString '		! Select sort field
.head 7 +  Else
.head 8 -  Set sSqlWhere = ' USERS.USER_NAME = :sSearchString '		! Select sort field
.head 7 -  Set sSqlOrder = STRING_Null						! No Sort Order
.head 7 -  ! Set sSqlOrder = ' ORDER BY PROBLEM.PROB_ID DESC'			! Sort Order
.head 7 -  Break
.head 6 +  Case 6				! Search by Raised Date
.head 7 +  If bNotEqualToFlag = TRUE					! If NOT Equal To flag set
.head 8 -  Set sSqlWhere = ' PROBLEM.RAISED_DATE != :sSearchString '		! Select sort field
.head 7 +  Else
.head 8 -  Set sSqlWhere = ' PROBLEM.RAISED_DATE = :sSearchString '		! Select sort field
.head 7 -  Set sSqlOrder = STRING_Null						! No Sort Order
.head 7 -  ! Set sSqlOrder = ' ORDER BY PROBLEM.PROB_ID DESC'			! Sort Order
.head 7 -  Break
.head 6 +  Case 7				! Search by Modified Program
.head 7 -  Set sColumn = 'PROG_ID'						! Set parameter to return
.head 7 -  Set sTable = 'PROGRAM'						! Set table to search
.head 7 -  Set sWhere = 'PROG_NAME'					! Set parameter to match
.head 7 -  Call fnFindKey( sColumn, sTable, sWhere, sSearchString, nSelectedItem  )	! Go to find the items PKY value
.head 7 -  Set sSearchString =  SalNumberToStrX( nSelectedItem, 0 )		! Convert numeric PKY
.head 7 +  If bNotEqualToFlag = TRUE					! If NOT Equal To flag set
.head 8 -  Set sSqlWhere = '
	PROG_ID NOT IN
		( SELECT
			PROG_ID
		FROM
			PROBLEM
		WHERE
	 		@MOD(( PROG_ID / '|| sSearchString ||' ), 2 ) >= 1 )'	! Select sort field
.head 7 +  Else
.head 8 -  Set sSqlWhere = '
	PROG_ID IN
		( SELECT
			PROG_ID
		FROM
			PROBLEM
		WHERE
	 		@MOD(( PROG_ID / '|| sSearchString ||' ), 2 ) >= 1 )'	! Select sort field
.head 7 -  ! Set sSqlOrder = ' ORDER BY PROBLEM.PROB_ID DESC'			! Sort Order
.head 7 -  Set sSqlOrder = STRING_Null						! No Sort Order
.head 7 -  Break
.head 6 +  Case 8				! Search by Programmer Assigned to Fix Problem
.head 7 +  If bNotEqualToFlag = TRUE					! If NOT Equal To flag set
.head 8 -  Set sSqlWhere = ' PROGRAMMERS.PGMR_NAME != :sSearchString '	! Select sort field
.head 7 +  Else
.head 8 -  Set sSqlWhere = ' PROGRAMMERS.PGMR_NAME = :sSearchString '	! Select sort field
.head 7 -  ! Set sSqlOrder = ' ORDER BY PROBLEM.PROB_ID DESC'			! Sort Order
.head 7 -  Set sSqlOrder = STRING_Null						! No Sort Order
.head 7 -  Break
.head 6 +  Case 9				! Search by Problem / Resolution text in LONG VARCHAR columns
.head 7 -  Set sSqlWhere = 
	' (@SCAN(PROBLEM.PROB_DETAILS,:sSearchString) > -1
	OR @SCAN(PROBLEM.ACTION_LOG,:sSearchString) > -1)'
.head 7 -  ! Set sSqlOrder = ' ORDER BY PROBLEM.PROB_ID DESC'			! Sort Order
.head 7 -  Set sSqlOrder = STRING_Null						! No Sort Order
.head 7 -  Break
.head 6 +  Case 10				! Search by last updated timestamp
.head 7 -  Set sSqlWhere = ' PROBLEM.LAST_UPDATED <= :sSearchString '	! Set Dummy sort field
.head 7 -  Set sSqlOrder = '  ORDER BY PROBLEM.LAST_UPDATED DESC'		! Sort Order
.head 7 -  Break
.head 6 +  Default
.head 7 +  If bNotEqualToFlag = TRUE					! If NOT Equal To flag set
.head 8 -  Set sSqlWhere = ' PROBLEM.PROB_ID != PROBLEM.PROB_ID '		! Set Dummy sort field
.head 7 +  Else
.head 8 -  Set sSqlWhere = ' PROBLEM.PROB_ID = PROBLEM.PROB_ID '		! Set Dummy sort field
.head 7 -  ! Set sSqlOrder = 'PROBLEM.PROB_ID DESC'				! Sort Order
.head 7 -  Set sSqlOrder = STRING_Null						! No Sort Order
.head 7 -  Break
.head 5 +  If sSqlWhere != ''							! If search criteria exists, find the matching records
.head 6 -  Set sSqlSearch = '
	SELECT
		PROB_ID,
		STAT_NAME,
		STATUS.STAT_ID,
		TYPE_NAME,
		TYPE.TYPE_ID,
		PRTY_NAME,
		PRIORITY.PRTY_ID,
		USER_NAME,
		USER_ID,
		RAISED_DATE,
		PGMR_NAME,
		ASSIGNED_ID,
		ASSIGNED_DATE,
		PROB_DETAILS,
		ACTION_LOG,
		PROG_ID
	FROM
		PROBLEM,
		STATUS,
		TYPE,
		PRIORITY,
		USERS,
		PROGRAMMERS
	INTO
		:frmMainScreen.tblSorted.colProbNo,
		:frmMainScreen.tblSorted.colStatus,
		:frmMainScreen.tblSorted.colStatusId,
		:frmMainScreen.tblSorted.colType,
		:frmMainScreen.tblSorted.colTypeId,
		:frmMainScreen.tblSorted.colPriority,
		:frmMainScreen.tblSorted.colPriorityId,
		:frmMainScreen.tblSorted.colRaisedBy,
		:frmMainScreen.tblSorted.colRaisedId,
		:frmMainScreen.tblSorted.colRaisedDate,
		:frmMainScreen.tblSorted.colAssignedTo,
		:frmMainScreen.tblSorted.colAssignedId,
		:frmMainScreen.tblSorted.colAssignedDate,
		:frmMainScreen.tblSorted.colProbDetails,
		:frmMainScreen.tblSorted.colActions,
		:frmMainScreen.tblSorted.colProgram
	WHERE
		' || sSqlWhere || '
	AND	PROBLEM.STAT_ID = STATUS.STAT_ID
	AND	PROBLEM.TYPE_ID = TYPE.TYPE_ID
	AND	PROBLEM.PRTY_ID = PRIORITY.PRTY_ID
	AND	PROBLEM.RAISED_ID = USERS.USER_ID
	AND	PROBLEM.ASSIGNED_ID = PROGRAMMERS.PGMR_ID'	
.head 6 -  !
.head 6 +  If sSqlOrder != STRING_Null
.head 7 -  Set sSqlSearch = sSqlSearch || sSqlOrder
.head 6 -  !
.head 6 -  Call SqlConnect( hSqlSearch )					! Connect to database
.head 6 -  Call SqlSetIsolationLevel( hSqlSearch, 'RL' )			! Use release lock mode for database access
.head 6 -  Call SalTblReset( hWndForm )					! Ensure list is empty
.head 6 -  Call SalTblPopulate ( frmMainScreen.tblSorted, hSqlSearch, sSqlSearch, TBL_FillAll )	! Now Fill it
.head 6 -  Call SalTblFetchRow( frmMainScreen.tblSorted, TBL_MinRow )		! Get resultant rows
.head 6 -  Call SqlGetResultSetCount ( hSqlSearch, nRowCount )			! Get count of matching items
.head 6 -  Call SqlDisconnect( hSqlSearch )					! Disconnect from DB
.head 6 -  Call SalStatusSetText ( frmMainScreen, 'Matching Item count = ' || SalNumberToStrX( nRowCount, 0 ))
.head 6 -  Call SalWaitCursor( FALSE )
.head 6 -  Return TRUE							! Process successfully
.head 5 +  Else
.head 6 -  Call SalWaitCursor( FALSE )
.head 6 -  Return FALSE							! Process failed
.head 3 +  Function: fnToggleEditMode
.head 4 -  Description: Updates the Problem table and sets edit flag to the opposite of what it current is for the given record.
.head 4 +  Returns
.head 5 -  Boolean:
.head 4 +  Parameters
.head 5 -  Number: nProblemID
.head 4 -  Static Variables
.head 4 +  Local variables
.head 5 -  Sql Handle: hSql					! Connection handle
.head 5 -  String: sSql					! SQL statement
.head 5 -  Number: nRetCode					! SQL processing return code
.head 5 -  Boolean: bUpdated					! Function status return flag
.head 5 -  Boolean: bEditModeFlag				! Edit mode flag
.head 4 +  Actions
.head 5 -  Set bUpdated = FALSE				! Initialise function return flag
.head 5 -  !
.head 5 +  If fnCheckEditMode( nProblemID ) = TRUE		! Go and check currrent edit mode status for this problem
.head 6 -  Set bEditModeFlag = 0				! If it is already in edit mode, set off the edit mode flag
.head 5 +  Else
.head 6 -  Set bEditModeFlag = 1				! Otherwise, set on the edit mode flag
.head 5 -  !
.head 5 -  Set sSql = '
UPDATE
	PROBLEM
SET
	EDIT_MODE = :bEditModeFlag
WHERE
	PROB_ID = :nProblemID'			! update selected items in table
.head 5 -  !
.head 5 +  If SqlConnect( hSql )				! If handle connected Ok
.head 6 +  If SqlPrepareAndExecute( hSql, sSql )			! And executed Ok
.head 7 -  Set bUpdated = TRUE				! Flag as data updated
.head 7 -  Call SqlCommit( hSql )
.head 6 -  Call SqlDisconnect (hSql)				! Disconnnect handle
.head 5 -  !
.head 5 -  Return bUpdated					! Return function status flag
.head 3 +  Function: fnCheckEditMode
.head 4 -  Description: Returns a TRUE/FALSE value based on whether the selected problem is currently in edit mode.
.head 4 +  Returns
.head 5 -  Boolean:
.head 4 +  Parameters
.head 5 -  Number: nProblemID				! Problem number to check 
.head 4 -  Static Variables
.head 4 +  Local variables
.head 5 -  String: sSql					! Sql string
.head 5 -  Boolean: bExists					! Return status flag
.head 4 +  Actions
.head 5 -  !
.head 5 -  Set sSql = "
SELECT
	*
FROM
	PROBLEM
WHERE
	PROB_ID = :nProblemID
AND	EDIT_MODE = 1"				! Looking for edit mode set on for given problem
.head 5 -  !
.head 5 -  Call SqlExists ( sSql, bExists )				! Check for matching row instance
.head 5 -  Return bExists					! Return validity status of item
.head 2 -  Window Parameters
.head 2 +  Window Variables
.head 3 -  Boolean: bNewRec							! TRUE indicates this is a new record
.head 3 -  Boolean: bUpdRec							! TRUE indicated an existing record has been altered
.head 3 -  Sql Handle: hSqlInsert						! SQL connection handle for new record INSERT								
.head 3 -  Sql Handle: hSqlUpdate						! SQL connection handle for  record UPDATE
.head 3 -  String: sSqlUpdate							! SQL UPDATE statement  for the edited record
.head 3 -  String: sSqlInsert							! SQL INSERT statement  for new record
.head 3 -  Number: nLastProblemNo						! Last logged problem number
.head 3 -  Number: nResult							! Message box interaction results
.head 3 -  Boolean: bSendEmailFlag						! Notify Programmers via Email
.head 3 -  Sql Handle: hSqlSelection						! SQL handle for combo box items
.head 3 -  String: sSqlSelection						! SQL string for combo box items
.head 3 -  Number: nComboItem						! Selection item for combo box items
.head 3 -  String: sSavedSearchString
.head 3 -  Long String: lsImage						! String to represent screenshot  image data
.head 3 -  !
.head 3 -  Number: nSearchType						! Search Type
.head 3 -  String: sSqlSearch							! Search criteria sql statement
.head 3 -  Sql Handle: hSqlSearch						! Handle for search Sql statement
.head 3 -  String: sSearchString						! Search string
.head 3 -  Number: nProbNo							! Problem Number reference for form switching
.head 3 -  Number: nStatId							! Numeric value of problem STATUS
.head 3 -  Number: nTypeId							! Numeric value of problem TYPE
.head 3 -  Number: nPrtyId							! Numeric value of problem PRIORITY
.head 3 -  Number: nRaisedBy							! Numeric value of User that raised the problem					
.head 3 -  Number: nAssigned							! Numeric value of the programmer who is assigned to the problem		
.head 3 -  Number: nProgram							! Numeric value of the programs affected		
.head 3 -  String: sProbNo							! String version of problem number
.head 3 -  Number: nReturnCode						! Gerneral purpose Return Code
.head 3 -  Boolean: bOk							! General purpose flag
.head 3 -  Number: nSelectedItem						! General purpose item selection value
.head 3 -  String: sColumn							! Search in this column
.head 3 -  String: sTable							! Search in this table
.head 3 -  String: sOrder							! Display results in this order
.head 3 -  String: sWhere							! Match on this item
.head 3 -  String: sAssigned							! String value of programmer to be emailed
.head 3 -  Long String: lsProbDetails						! Problem details for email
.head 3 -  Number: nAssignedPrior						! Prior assignment value
.head 3 -  Boolean: bNotEqualToFlag						! Search Equal / Not Equal flag
.head 3 -  Number: nRowCount						! Count of matching table items displayed
.head 3 -  Boolean: bSaveImageToDB
.head 3 -  Boolean: bEditMode						! Editing record flag
.head 3 -  Window Handle: hMainScreen					! Window Handle reference for Main form
.head 2 +  Message Actions
.head 3 +  On SAM_Close
.head 4 +  If bEditMode = TRUE
.head 5 +  If SalMessageBox( 'You are about to EXIT the SERRC program.
 Any unsaved changes will be lost. Are you sure?', 'Warning', MB_YesNo ) = IDNO
.head 6 -  Return FALSE
.head 3 +  On SAM_Create							! On initial form creation...
.head 4 -  ! Call parent window class first:
.head 4 -  Call SalSendClassMessage( SAM_Create, wParam, lParam )
.head 4 +  If SqlDatabase != 'SERRC'						! If 'Live' database in use
.head 5 -  Call SalSetWindowText( hWndForm, 'Problem Details - TEST Database' ) 
.head 4 -  !
.head 4 -  !
.head 4 -  ! Define the child controls:
.head 4 -  !
.head 4 -  ! Define table to be resized in height and width with minimum height=1, minimum width=1:
.head 4 -  Call tblSorted.InitAlign( TRUE, TRUE )
.head 4 -  Call tblSorted.SetMinInfo( 1, 1 )
.head 4 -  !
.head 4 -  ! Define Multiline Fields to be resized in width only with minimum height=1, minimum width=1:
.head 4 -  Call mlActions.InitAlign( TRUE, FALSE )
.head 4 -  Call mlActions.SetMinInfo( 1, 1 )
.head 4 -  Call mlProbDetails.InitAlign( TRUE, FALSE )
.head 4 -  Call mlProbDetails.SetMinInfo( 1, 1 )
.head 4 -  !
.head 4 -  Call fnFindRecord( STRING_Null, 0, FALSE )				! Initially populate the record selection table
.head 4 -  Call SalSendMsg( hWndForm, PAM_DISABLECHILDREN, 0, 0 )		! Call to disable all window fields
.head 4 -  !
.head 3 +  On PAM_ENABLECHILDREN					! Set all fields into disable mode
.head 4 -  Call SalSendMsgToChildren( hWndForm, PAM_ENABLE, 0, 0 )		! Invoke individual field disabling
.head 3 +  On PAM_DISABLECHILDREN					! Set all fields into disable mode
.head 4 -  Call SalSendMsgToChildren( hWndForm, PAM_DISABLE, 0, 0 )		! Invoke individual field disabling
.head 4 -  Call SalSetFocus ( pbNew )
.head 3 +  On PAM_CLEARCHILDREN						! Clear out all panel fields
.head 4 -  Call SalSendMsgToChildren( hWndForm, PAM_CLEARFIELD, 0, 0 )	! Invoke individual field clearing
.head 3 +  On PAM_ENABLEEDIT						! Clear out all panel fields
.head 4 -  Call SalSendMsg( pbEdit, PAM_ENABLE, 0, 0 )			! Enable detail form editing button
.head 4 -  Call SalSendMsgToChildren( hWndForm, PAM_EXPANDLISTITEM, 0, 0 )	! Expand each item into detail display
.head 3 +  On SAM_SqlError
.head 4 -  Call SalMessageBox( 'Invalid or incomplete information entered - Please rectify', 'Record Action', MB_Ok )
.head 1 +  Dialog Box: dlgSplashScreen
.head 2 -  Class:
.head 2 -  Property Template:
.head 2 -  Class DLL Name:
.head 2 -  Title: Welcome to the SERRC Database
.head 2 -  Accessories Enabled? No
.head 2 -  Visible? Yes
.head 2 -  Display Settings
.head 3 -  Display Style? Default
.head 3 -  Visible at Design time? Yes
.head 3 -  Type of Dialog: System Modal
.head 3 -  Allow Dock to Parent? No
.head 3 -  Docking Orientation: All
.head 3 -  Window Location and Size
.head 4 -  Left: 2.063"
.head 4 -  Top: 1.719"
.head 4 -  Width:  6.667"
.head 4 -  Width Editable? Yes
.head 4 -  Height: 1.869"
.head 4 -  Height Editable? Yes
.head 3 -  Absolute Screen Location? Yes
.head 3 -  Font Name: Default
.head 3 -  Font Size: Default
.head 3 -  Font Enhancement: Default
.head 3 -  Text Color: Default
.head 3 -  Background Color: Default
.head 3 -  Resizable? No
.head 3 -  Vertical Scroll? Yes
.head 3 -  Horizontal Scroll? Yes
.head 2 -  Description: Initial startup splash screen - lasts for 1.2 seconds
.head 2 +  Tool Bar
.head 3 -  Display Settings
.head 4 -  Display Style? Default
.head 4 -  Location? Top
.head 4 -  Visible? Yes
.head 4 -  Size: Default
.head 4 -  Size Editable? Yes
.head 4 -  Docking Toolbar? No
.head 4 -  Toolbar Docking Orientation: Top | Bottom
.head 4 -  Font Name: Default
.head 4 -  Font Size: Default
.head 4 -  Font Enhancement: Default
.head 4 -  Text Color: Default
.head 4 -  Background Color: Default
.head 4 -  Resizable? No
.head 3 -  Contents
.head 2 +  Contents
.head 3 -  Background Text: System Error Reporting and Rectification Control
.head 4 -  Resource Id: 14032
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class:
.head 4 -  Window Location and Size
.head 5 -  Left: 0.483"
.head 5 -  Top: 0.988"
.head 5 -  Width:  5.6"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 0.25"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? Yes
.head 4 -  Justify: Center
.head 4 -  Font Name: Default
.head 4 -  Font Size: 10
.head 4 -  Font Enhancement: Default
.head 4 -  Text Color: Blue
.head 4 -  Background Color: Default
.head 3 -  Background Text: SERRC DATABASE
.head 4 -  Resource Id: 14033
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class:
.head 4 -  Window Location and Size
.head 5 -  Left: 0.583"
.head 5 -  Top: 0.405"
.head 5 -  Width:  5.4"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 0.44"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? Yes
.head 4 -  Justify: Center
.head 4 -  Font Name: Default
.head 4 -  Font Size: 24
.head 4 -  Font Enhancement: Bold
.head 4 -  Text Color: Blue
.head 4 -  Background Color: Default
.head 3 -  Frame
.head 4 -  Resource Id: 14034
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class:
.head 4 -  Window Location and Size
.head 5 -  Left: 0.283"
.head 5 -  Top: 0.238"
.head 5 -  Width:  6.0"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 1.25"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? Yes
.head 4 -  Corners: Square
.head 4 -  Border Style: Raised-Shadow
.head 4 -  Border Thickness: 1
.head 4 -  Border Color: Default
.head 4 -  Background Color: Default
.head 2 -  Functions
.head 2 -  Window Parameters
.head 2 +  Window Variables
.head 3 -  Number: nReturnCode
.head 2 +  Message Actions
.head 3 +  On SAM_CreateComplete						! When the splash screen is displayed
.head 4 -  Call SalWaitCursor( TRUE )						! Set on hourglass cursor
.head 4 -  Call SalTimerSet( dlgSplashScreen, 1, 1200 )				! Set a delay of 1200 milli-seconds
.head 3 +  On SAM_Timer							! When the delay timer is triggered
.head 4 -  Call SalTimerKill ( dlgSplashScreen, 1 )				! Kill off the timer
.head 4 -  Call SalEndDialog ( dlgSplashScreen, nReturnCode )			! Close the splash screen
.head 4 -  Call SalWaitCursor( FALSE )					! Set off hourglass
