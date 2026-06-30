.head 0 +  Application Description: SQLWindows version 5.01
Updated 15-4-98 by Graham to cater for Order Book No.s
when splitting an order.
.data CLASSPROPSSIZE
0000: 4200
.enddata
.data CLASSPROPS
0000: 4170705061746800 0A006B3A5C63656E 7475726100417070 506174684C656E00
0020: 04000A0000000055 7365476C6F62616C 5061746800040001 0000000000000000
0040: 0000
.enddata
.head 1 -  Outline Version - 4.0.32
.head 1 +  Design-time Settings
.data VIEWINFO
0000: 6F00000001000000 FFFF01000D004347 5458566965775374 6174650400010000
0020: 0000000000D60000 002C000000020000 0003000000FFFFFF FFFFFFFFFFFCFFFF
0040: FFE8FFFFFF000000 0000000000900200 0039010000010000 0001000000010000
0060: 000F4170706C6963 6174696F6E497465 6D00000000
.enddata
.head 2 -  Outline Window State: Maximized
.head 2 +  Outline Window Location and Size
.data VIEWINFO
0000: 6600010000001B00 0200000005000000 0000C819DD0A0500 1D00FFFF4D61696E
0020: 00
.enddata
.data VIEWSIZE
0000: 2100
.enddata
.head 3 -  Left: -0.05"
.head 3 -  Top: 0.01"
.head 3 -  Width:  8.025"
.head 3 -  Height: 5.042"
.head 2 +  Options Box Location
.data VIEWINFO
0000: D4188507B80B2500
.enddata
.data VIEWSIZE
0000: 0800
.enddata
.head 3 -  Visible? Yes
.head 3 -  Left: 5.625"
.head 3 -  Top: 3.177"
.head 3 -  Width:  4.175"
.head 3 -  Height: 2.698"
.head 2 +  Class Editor Location
.head 3 -  Visible? No
.head 3 -  Left: Default
.head 3 -  Top: Default
.head 3 -  Width:  Default
.head 3 -  Height: Default
.head 2 +  Tool Palette Location
.head 3 -  Visible? No
.head 3 -  Left: 6.875"
.head 3 -  Top: 1.927"
.head 2 -  Fully Qualified External References? Yes
.head 2 -  Reject Multiple Window Instances? No
.head 2 -  Enable Runtime Checks Of External References? No
.head 2 -  Use Release 4.0 Scope Rules? Yes
.head 1 +  Libraries
.head 2 -  File Include: myfunc.apl
.head 2 -  File Include: intfunc.apl
.head 2 -  File Include: vtspin.apl
.head 2 -  File Include: vtmeter.apl
.head 2 -  File Include: vtmisc.apl
.head 2 -  File Include: vttblwin.apl
.head 2 -  File Include: janclass.apl
.head 2 -  File Include: janflags.apl
.head 2 -  File Include: SQLHANDL.APL
.head 2 -  File Include: ADDRESS.APL
.head 2 -  File Include: STDWIND.APL
.head 2 -  File Include: ITEM.APL
.head 2 -  File Include: QITMSLJJ.APL
.head 1 +  Global Declarations
.head 2 +  Window Defaults
.head 3 +  Tool Bar
.head 4 -  Display Style? Standard
.head 4 -  Font Name: System Default
.head 4 -  Font Size: System Default
.head 4 -  Font Enhancement: System Default
.head 4 -  Text Color: System Default
.head 4 -  Background Color: System Default
.head 3 +  Form Window
.head 4 -  Display Style? Standard
.head 4 -  Font Name: System Default
.head 4 -  Font Size: System Default
.head 4 -  Font Enhancement: System Default
.head 4 -  Text Color: Dark Blue
.head 4 -  Background Color: Light Green
.head 3 +  Dialog Box
.head 4 -  Display Style? Standard
.head 4 -  Font Name: System Default
.head 4 -  Font Size: System Default
.head 4 -  Font Enhancement: System Default
.head 4 -  Text Color: Dark Blue
.head 4 -  Background Color: Light Green
.head 3 +  Top Level Table Window
.head 4 -  Font Name: System Default
.head 4 -  Font Size: System Default
.head 4 -  Font Enhancement: System Default
.head 4 -  Text Color: Dark Blue
.head 4 -  Background Color: Sky
.head 3 +  Data Field
.head 4 -  Font Name: Use Parent
.head 4 -  Font Size: Use Parent
.head 4 -  Font Enhancement: Use Parent
.head 4 -  Text Color: Dark Blue
.head 4 -  Background Color: Gray
.head 3 +  Multiline Field
.head 4 -  Font Name: Use Parent
.head 4 -  Font Size: Use Parent
.head 4 -  Font Enhancement: Use Parent
.head 4 -  Text Color: Dark Blue
.head 4 -  Background Color: Sky
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
.head 4 -  Text Color: Dark Blue
.head 4 -  Background Color: Dark Green
.head 3 +  Pushbutton
.head 4 -  Font Name: Use Parent
.head 4 -  Font Size: Use Parent
.head 4 -  Font Enhancement: Use Parent
.head 3 +  Radio Button
.head 4 -  Font Name: Use Parent
.head 4 -  Font Size: Use Parent
.head 4 -  Font Enhancement: Use Parent
.head 4 -  Text Color: Dark Blue
.head 4 -  Background Color: Sky
.head 3 +  Check Box
.head 4 -  Font Name: Use Parent
.head 4 -  Font Size: Use Parent
.head 4 -  Font Enhancement: Use Parent
.head 4 -  Text Color: Dark Blue
.head 4 -  Background Color: Green
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
.head 4 -  Text Color: Dark Blue
.head 4 -  Background Color: Sky
.head 3 +  List Box
.head 4 -  Font Name: Use Parent
.head 4 -  Font Size: Use Parent
.head 4 -  Font Enhancement: Use Parent
.head 4 -  Text Color: Dark Blue
.head 4 -  Background Color: Sky
.head 3 +  Combo Box
.head 4 -  Font Name: Use Parent
.head 4 -  Font Size: Use Parent
.head 4 -  Font Enhancement: Use Parent
.head 4 -  Text Color: Dark Blue
.head 4 -  Background Color: Gray
.head 3 +  Line
.head 4 -  Line Color: Black
.head 3 +  Frame
.head 4 -  Border Color: Use Parent
.head 4 -  Background Color: Dark Gray
.head 3 +  Picture
.head 4 -  Border Color: Use Parent
.head 4 -  Background Color: Use Parent
.head 2 +  Formats
.head 3 -  Number: 0%
.head 3 -  Number: #0
.head 3 -  Number: ###000
.head 3 -  Number: ###000;###000
.head 3 -  Number: 0000000
.head 3 -  Date/Time: hh:mm:ss AMPM
.head 3 -  Date/Time: M/d/yy
.head 3 -  Date/Time: MM-dd-yy
.head 3 -  Date/Time: dd-MMM-yyyy
.head 3 -  Date/Time: MMM d, yyyy
.head 3 -  Date/Time: MMM d, yyyy hh:mm AMPM
.head 3 -  Date/Time: MMMM d, yyyy hh:mm AMPM
.head 3 -  Date/Time: dd-MMM-yyyy hh:mm:ss AMPM
.head 2 +  External Functions
.head 2 +  Constants
.data CCDATA
0000: 3000000000000000 0000000000000000 00000000
.enddata
.data CCSIZE
0000: 1400
.enddata
.head 3 +  System
.head 3 +  User
.head 4 -  ! PAM_Messages in here can only go in range SAM_User + 2900 -> 2999
.head 4 -  Number: PAM_SHOWALLOC = SAM_User + 2900
.head 4 -  Number: PAM_RECOMMENDEDALLOC = SAM_User + 2901
.head 4 -  Number: PAM_ROWRECOALLOC1 = SAM_User + 2902
.head 4 -  Number: PAM_ROWRECOALLOC2 = SAM_User + 2903
.head 4 -  Number: PAM_ROWRECOALLOC3 = SAM_User + 2904
.head 4 -  Number: PAM_SPLIT = SAM_User + 2905
.head 4 -  Number: PAM_SETROWCOLOR = SAM_User + 2906
.head 4 -  Number: PAM_ALLOCLOOKUPITEM = SAM_User + 2907
.head 4 -  Number: PAM_ALLOCSELECTEDASIS = SAM_User + 2908
.head 4 -  Number: PAM_ALLOCROWASIS = SAM_User + 2909
.head 4 -  Number: PAM_UNDOITEMSELECTION = SAM_User + 2910
.head 4 -  Number: PAM_GETFUTUREAVAILABLE = SAM_User + 2911
.head 4 -  !
.head 4 -  Number: nReturnStage2Alloc = 89
.head 4 -  !
.head 3 -  Enumerations
.head 2 +  Resources
.head 2 +  Variables
.data RESOURCE 0 0 1 1058623814
0000: E4110000700B0000 0000000000000000 02000098000000AC 0300001004000000
0020: 036C01F00C000000 0073000000010000 0023B00300190004 0000016C010D00BC
0040: 000073D100010000 68C9030019000901 6C0E0000006F7300 34010000E2035A00
0060: 040003C3A0000000 9B7300018D00E603 00961900016CF0A1 0000004673000100
0080: 00A3FF0300192500 016CA200BC000073 D100010000681804 0004008D03010100
00A0: 6E0073003601001C 045A00190001A26C 020100001B730001 008D003504009619
00C0: 00016CE803010000 467300010000A34E 0400043500035A03 BA000073D9000100
00E0: 6852040019008901 6C5B03006E007300 340100006B045A00 190001A26C5C0300
0100: 001B730001008D00 840400D6040003E8 5E03000066730001 00A3880400192500
0120: 016C5F03BA000073 D10001000068A104 00190089016C6003 006E007300340100
0140: 00BA045A00040003 A3630300009B7300 018D00BE04009619 00016CE864030000
0160: 467300010000A3D7 0400192500016C65 03BA000073D10001 000068F004000400
0180: 0D03D20500006E00 7300360100F4045A 00190001A26CD305 00001B730001008D
01A0: 000D050096190001 6CE8D40500004673 00010000A3260500 040500026C01D505
01C0: BA000073D9000100 882A05003B010000 00076C01BB0D0100 68E4050073003201
01E0: 00002E051A000400 0102A26C930E0000 7F80F0010000008F 320500E6040001E8
0200: 940E00009F8001FC 0000A33605000435 00031F12B8000000 73D100010000683A
0220: 0500190089016C20 12006E007300B401 0000535A00190001 A26C211200001B73
0240: 0001008D006C0500 D6040003E8231200 006673000100A370 0500192500016C24
0260: 12BA000073D10001 0000688905001900 89016C2512006E00 730034010000A205
0280: 5A00040003A32712 00009B7300018D00 A60500961900016C E828120000467300
02A0: 010000A3BF050019 2500016C2912BA00 0073D10001000068 D8050004008D032B
02C0: 12006E0073003601 00DC055A00190001 A26C2C1200001B73 0001008D00F50500
02E0: 961900016CE82D12 0000467300010000 830E060000043500 032F12BA000073D9
0300: 0001006812060019 0089016C3012006E 007300340100002B 065A00190001A26C
0320: 311200001B730001 008D00440600D604 0003E83312000066 73000100A3480600
0340: 192500016C3412BA 000073D100010000 6861060019008901 6C3512006E007300
0360: 340100007A065A00 0400038360140000 009B7300018D007E 0600961900016CE8
0380: 6114000046730001 0000A39706001925 00016C6214BA0000 73D10001000068B0
03A0: 060004000D03C316 00006E0073003601 00B4065A00190001 A26CC41600001B73
03C0: 0001008D00CD0600 D6040002E8C51600 006673000100A3D1 060004350002C616
03E0: BA000073D9000100 68D5060004008D03 DF16006E00730036 0100D9065A001900
0400: 01A26CE01600001B 730001008D00F206 00961900016CE8E1 1600004673000100
0420: 00830B0700000435 0003E316BA000073 D9000100680F0700 190089016CE41600
0440: 6E00730034010000 28075A00190001A2 6CE51600001B7300 01008D00410700D6
0460: 040003E8E7160000 6673000100A34507 00192500016CE816 BA000073D1000100
0480: 00685E0700190089 016CE916006E0073 003401000077075A 0004000383B41700
04A0: 00009B7300018D00 7B0700961900016C E8B5170000467300 010000A394070004
04C0: 350002B617BA0000 73D9000100689807 0004008D02B71700 6E0073003601009C
04E0: 075A00040003A3D0 1700009B7300018D 00A0070096190001 6CE8D11700004673
0500: 00010000A3B90700 192500016CD217BA 000073D100010000 68D2070004008D03
0520: D417006E00730036 0100D6075A001900 01A26CD51700001B 730001008D00EF07
0540: 00961900016CE8D6 1700004673000100 0083080800000435 0003A718B8000000
0560: 73D9000100680C08 00190089016CA818 006E007300340100 0025085A00190001
0580: A26CA91800001B73 0001008D003E0800 D6040003E8E31800 006673000100A342
05A0: 0800192500016CE4 18BA000073D10001 0000685B08000400 8D02E518006E0073
05C0: 003601005F085A00 040002A3E6180000 9B7300018D006308 00D6040003EC0019
05E0: 00267300010000A3 670800192500016C 0119BA000073D100 0100006880080019
0600: 0089016C0219006E 0073003001000000 99085A00040003A3 031900009B730001
0620: 8D009D0800961900 016CE80419000046 7300010000A3B608 00192500016C0519
0640: BA000073D1000100 0068CF080004008D 037E19006E007300 360100D3085A0019
0660: 0001A26C7F190000 1B730001008D00EC 0800161900016C01 E880190000467300
0680: 0100008305090000 043500035F1BB800 000073D900010068 090900190089016C
06A0: 601B006E00730034 01000022095A0019 0001A26C611B0000 1B730001008D003B
06C0: 0900D6040003E863 1B00006673000100 A33F090019250001 6C641BBA000073D1
06E0: 0001000068580900 190089016C651B00 6E00730034010000 71095A00040003A3
0700: C81B00009B730001 8D00750900961900 016CE8C91B000046 7300010000A38E09
0720: 00192500016CCA1B BA000073D1000100 0068A7090004008D 03CC1B006E007300
0740: 360100AB095A0019 0001A26CCD1B0000 1B730001008D00C4 0900961900016CE8
0760: CE1B000046730001 0000A3DD09000435 00038E1CB8000000 73D900010068E109
0780: 00190089016C8F1C 006E007300340100 00FA095A00190001 A26C901C00001B73
07A0: 0001000D00130A00 00D6040003E8921C 00006673000100A3 170A00192500016C
07C0: 931CBA000073D100 01000068300A0019 0089016C941C006E 0073003401000049
07E0: 0A5A00040003A396 1C00009B7300018D 004D0A0096190001 6CE8971C00004673
0800: 00010000A3660A00 192500016C981CBA 000073D100010000 687F0A0004008D03
0820: 9A1C006E00730036 0100830A5A001900 01A26C9B1C00001B 730001008D009C0A
0840: 00961900016CE89C 1C00004673000100 00A3B50A00043500 039E1CBA000073D9
0860: 00010068B90A0019 0089016C9F1C006E 00730034010000D2 0A5A00190001A26C
0880: A01C00001B730001 008D00EB0A00D604 0003E8A21C000066 73000100A3EF0A00
08A0: 192500016CA31CBA 000073D100010000 60080B0000190089 016CA41C006E0073
08C0: 0034010000210B5A 0004000383251F00 00009B7300018D00 250B00961900016C
08E0: E8261F0000467300 010000A33E0B0019 2500016C271FBA00 0073D10001000068
0900: 570B0004008D0329 1F006E0073003601 005B0B5A00190001 A26C2A1F00001B73
0920: 0001008D00740B00 961900016CE82B1F 0000467300010000 A38D0B0004350003
0940: 9B1FBA000073D900 010068910B001900 89016C9C1F006E00 730034010000AA0B
0960: 5A00190001A26C9D 1F00001B73000100 8D00C30B00961900 016CE20600000046
0980: 7300010000A3DC0B 0004350003DF23B8 00000073D9000100 68E00B0019008901
09A0: 6CE023006E007300 34010000F90B5A00 190001A26CE12300 001B730001008D00
09C0: 120C00961900016C E086270000004673 00010000A32B0C00 192500016C832EB8
09E0: 00000073D1000100 0068440C00190089 016C842E006E0073 00340100005D0C5A
0A00: 00190001A26C852E 00001B730001008D 00760C0096190001 6CE8862E00004673
0A20: 00010000A38F0C00 192500016C2739B8 00000073D1000100 0068A80C00190089
0A40: 016C2839006E0073 0034010000C10C5A 00190004806C0155 3C0000009B730001
0A60: 8D00DA0C00961900 016CE85F12000046 730001000023F30C 0004002500036C0A
0A80: 00BD0073D9000100 68F70C0019004901 6C0B00006F730034 010000100D5A0019
0AA0: 0001DA6C0C001B73 0001008D00290D00 D6040003F0110000 006673000100A32D
0AC0: 0D00192500016C12 00BD0073D1000100 0068460D00190009 016C130000006F73
0AE0: 00340100005F0D5A 00040003DB0C009B 7300018D00630D00 961900016CF40D00
0B00: 00467300010000A3 7C0D00192500016C 0E00BD0073D10001 000068950D000400
0B20: 6D030B006F730036 0100990D5A001900 01DA6C0C001B7300 01008D00B20D0096
0B40: 1900016CF60D0046 7300010000A3CB0D 0004F50003BD0073 D900010068CF0D00
0B60: 190069016C0E006F 730034010000E80D 5A00190001C26C0F 0000001B73000100
0B80: 0D00
.enddata
.head 2 +  Named Menus
.head 2 +  Internal Functions
.head 3 +  Function: AllocateAsOrdItems
.head 4 -  Description: Given a list of item numbers this function allocated as ordered 
ie: move ordered_amount ot conf_amt
NOTE: 
sCommaListOfItemNo is the list of Item No in a string 
           ( no extra commas at end and no quotes around numbers ).
hWndTable is the window handle where the PAM_ROWUPDATED message
  is sent to where further actions can be taken.  
  NOTE : wParam = TRUE / FALSE = 'Y' / 'N' = item allocated flag, 
               lParam is the item number
.head 4 +  Returns
.head 5 -  Boolean:
.head 4 +  Parameters
.head 5 -  String: sCommaListOfItemNo
.head 5 -  Number: nYear
.head 5 -  Window Handle: hWndTable
.head 5 -  Number: nActionType
.head 4 +  Static Variables
.head 5 -  Sql Handle: hSqlHandle
.head 5 -  Boolean: bHandleConnected
.head 5 -  Boolean: bHandlePrepared
.head 4 +  Local variables
.head 5 -  String: sSql
.head 5 -  String: sFuncName
.head 5 -  Boolean: bOk
.head 5 -  Number: nInd
.head 5 -  !
.head 5 -  Number: nItemNo
.head 5 -  Number: nTotAvail
.head 5 -  Number: nAmtOnOrder
.head 5 -  Number: nOnOrdAsSubs
.head 5 -  String: sGeneric
.head 5 -  !
.head 5 -  Number: nTotalRows
.head 5 -  Number: nRowCount
.head 5 -  Window Handle: hWndMeter
.head 4 +  Actions
.head 5 -  Set sFuncName = 'AllocateAsOrdItems'
.head 5 +  Select Case nActionType
.head 6 +  Case SH_cls_Execute
.head 7 +  If IDYES = SalMessageBox( 'Only the Advanced, Extra Large and Small Weeping trees will be allocated as ordered! Continue?', 'NOTE', MB_YesNo )
.head 8 -  Set bHandlePrepared = FALSE
.head 8 +  Loop Execute
.head 9 +  Loop Connect
.head 10 +  If bHandleConnected
.head 11 -  Break Connect
.head 10 +  Else
.head 11 -  Set bHandleConnected = SqlConnect( hSqlHandle ) 
.head 11 +  If bHandleConnected
.head 12 -  Call SqlSetLockTimeout( hSqlHandle, SQLTIMEOUT )
.head 12 -  Call SqlSetParameter( hSqlHandle, DBP_PRESERVE, TRUE, ''  )
.head 12 -  Break Connect
.head 11 +  Else
.head 12 +  If IDNO = SalMessageBox( 'Could not connect handle in function '||sFuncName||'! Contact programmers! RETRY?', 'Error', MB_YesNo )
.head 13 -  Break Connect
.head 9 +  Loop Prepare
.head 10 +  If bHandlePrepared
.head 11 -  Break Prepare
.head 10 +  Else
.head 11 -  Set sSql = " SELECT 
  Stock_Item_Sale.Stock_Item_No, 
  Stock_Item_Sale.Tot_Avail, 
  Stock_Item_Sale.Amt_On_Order, 
  Stock_Item_Sale.On_Ord_As_Subs, 
  Stock_Item.Generic_Stock_Item 
FROM 
  Stock_Item, 
  Stock_Item_Sale 
INTO 
  :nItemNo, 
  :nTotAvail, 
  :nAmtOnOrder, 
  :nOnOrdAsSubs,
  :sGeneric 
WHERE 
  Stock_Item.Item_No IN ( "|| sCommaListOfItemNo || " ) AND 
  Stock_Item.Item_No = Stock_Item_Sale.Stock_Item_No AND 
  Stock_Item_Sale.Year_Of_Sale = :nYear AND 
  ( Stock_Item.Tree_Type = 'ADV' OR 
    Stock_Item.Tree_Type LIKE 'X%' OR
    Stock_Item.Tree_Type = 'STSM' ) AND
  NOT Stock_Item_Sale.Allocated_Flag = 'Y' "
.head 11 +  If SqlPrepare( hSqlHandle, sSql )
.head 12 -  Set bHandlePrepared = TRUE
.head 12 -  Break Prepare
.head 11 +  Else
.head 12 -  Set bHandlePrepared = FALSE
.head 12 +  If IDNO = SalMessageBox( 'Could not prepare handle in function '||sFuncName||'! Contact programmers! RETRY?', 'Error', MB_YesNo )
.head 13 -  Break Prepare
.head 9 -  !
.head 9 +  If SqlExecute( hSqlHandle )
.head 10 -  Call SqlGetResultSetCount( hSqlHandle, nTotalRows )
.head 10 +  If nTotalRows >= nNumRowsToMeter
.head 11 -  Set hWndMeter = SalCreateWindow( dlgMeterProgress, hWndForm, 'Stage 1, Allocating', nTotalRows )
.head 10 -  Set nRowCount = 0
.head 10 +  While SqlFetchNext( hSqlHandle, nInd )
.head 11 +  If sGeneric = 'Y'
.head 12 +  If UpdateItemAllocatedFlag( nItemNo, nYear, 'Y', SH_cls_Execute )
.head 13 -  Call UpdateItemAllocatedFlag( 0, 0, '', SH_cls_Commit )
.head 13 -  Call SalSendMsg( hWndTable, PAM_ROWUPDATED, TRUE, nItemNo )
.head 12 +  Else
.head 13 -  Call UpdateItemAllocatedFlag( 0, 0, '', SH_cls_Rollback )
.head 11 +  Else If nAmtOnOrder = 0 AND nOnOrdAsSubs = 0
.head 12 +  If UpdateItemAllocatedFlag( nItemNo, nYear, 'Y', SH_cls_Execute )
.head 13 -  Call UpdateItemAllocatedFlag( 0, 0, '', SH_cls_Commit )
.head 13 -  Call SalSendMsg( hWndTable, PAM_ROWUPDATED, TRUE, nItemNo )
.head 12 +  Else
.head 13 -  Call UpdateItemAllocatedFlag( 0, 0, '', SH_cls_Rollback )
.head 11 +  Else
.head 12 +  If AllocatedItemOrders( nItemNo, nYear, SH_cls_Execute )
.head 13 +  If UpdateItemAllocatedFlag( nItemNo, nYear, 'Y', SH_cls_Execute )
.head 14 -  Call AllocatedItemOrders( 0, 0, SH_cls_Commit )
.head 14 -  Call UpdateItemAllocatedFlag( 0, 0, '', SH_cls_Commit )
.head 14 -  Call SalSendMsg( hWndTable, PAM_ROWUPDATED, TRUE, nItemNo )
.head 13 +  Else
.head 14 -  Call AllocatedItemOrders( 0, 0, SH_cls_Rollback )
.head 14 -  Call UpdateItemAllocatedFlag( 0, 0, '', SH_cls_Rollback )
.head 12 +  Else
.head 13 -  Call AllocatedItemOrders( 0, 0, SH_cls_Rollback )
.head 11 -  !
.head 11 -  Set nRowCount = nRowCount + 1
.head 11 -  Call SalSendMsg( hWndMeter, PAM_SETPROGRESS, 0, nRowCount )
.head 10 -  Call SalSendMsg( hWndMeter, PAM_END, 0, 0 )
.head 10 -  Return TRUE
.head 9 +  Else
.head 10 -  Set bHandlePrepared = FALSE
.head 10 +  If IDNO = SalMessageBox( 'Could not execute handle in function '||sFuncName||'! Contact programmers! RETRY?', 'Error', MB_YesNo )
.head 11 -  Return FALSE
.head 7 +  Else
.head 8 -  Return TRUE
.head 6 +  Case SH_cls_Commit
.head 7 -  Set bOk = TRUE
.head 7 +  Loop Commit
.head 8 +  If bHandleConnected
.head 9 +  If SqlCommit( hSqlHandle )
.head 10 -  Break Commit
.head 9 +  Else
.head 10 +  If IDNO = SalMessageBox( 'Could not commit handle in function '||sFuncName||'! Contact programmers! RETRY?', 'Error', MB_YesNo )
.head 11 -  Set bOk = FALSE
.head 11 -  Break Commit
.head 8 +  Else
.head 9 -  Break Commit
.head 7 -  Return bOk
.head 6 +  Case SH_cls_Rollback
.head 7 -  Set bOk = TRUE
.head 7 +  Loop Rollback
.head 8 +  If bHandleConnected
.head 9 -  Set bHandlePrepared = FALSE
.head 9 +  If SqlPrepareAndExecute( hSqlHandle, 'ROLLBACK' )
.head 10 -  Break Rollback
.head 9 +  Else
.head 10 +  If IDNO = SalMessageBox( 'Could not rollback handle in function '||sFuncName||'! Contact programmers! RETRY?', 'Error', MB_YesNo )
.head 11 -  Set bOk = FALSE
.head 11 -  Break Rollback
.head 8 +  Else
.head 9 -  Break Rollback
.head 7 -  Return bOk
.head 6 +  Case SH_cls_Disconnect
.head 7 -  Set bOk = TRUE
.head 7 +  Loop Disconnect
.head 8 +  If bHandleConnected
.head 9 +  If SqlDisconnect( hSqlHandle )
.head 10 -  Set bHandleConnected = FALSE
.head 10 -  Set bHandlePrepared = FALSE
.head 10 -  Break Disconnect
.head 9 +  Else
.head 10 +  If IDNO = SalMessageBox( 'Could not disconnect handle in function '||sFuncName||'Contact programmers! RETRY?', 'Error', MB_YesNo )
.head 11 -  Set bOk = FALSE
.head 11 -  Break Disconnect
.head 8 +  Else
.head 9 -  Break Disconnect
.head 7 +  If NOT UpdateItemAllocatedFlag( 0, 0, '', SH_cls_Disconnect)
.head 8 -  Set bOk = FALSE
.head 7 -  Return bOk
.head 6 +  Case SH_cls_RePrepare
.head 7 -  Set bHandlePrepared = FALSE
.head 7 -  Call UpdateItemAllocatedFlag( 0, 0, '', SH_cls_RePrepare )
.head 7 -  Return TRUE
.head 3 -  !
.head 3 +  Function: UpdateItemAllocatedFlag
.head 4 -  Description: This function does NOT commit
.head 4 +  Returns
.head 5 -  Boolean:
.head 4 +  Parameters
.head 5 -  Number: nItemNo
.head 5 -  Number: nYear
.head 5 -  String: sAllocatedFlag
.head 5 -  Number: nActionType
.head 4 +  Static Variables
.head 5 -  Sql Handle: hSqlHandle
.head 5 -  Boolean: bHandleConnected
.head 5 -  Boolean: bHandlePrepared
.head 4 +  Local variables
.head 5 -  String: sSql
.head 5 -  String: sFuncName
.head 5 -  Boolean: bOk
.head 4 +  Actions
.head 5 -  Set sFuncName = 'UpdateItemAllocatedFlag'
.head 5 +  Select Case nActionType
.head 6 +  Case SH_cls_Execute
.head 7 +  Loop Execute
.head 8 +  Loop Connect
.head 9 +  If bHandleConnected
.head 10 -  Break Connect
.head 9 +  Else
.head 10 -  Set bHandleConnected = SqlConnect( hSqlHandle ) 
.head 10 +  If bHandleConnected
.head 11 -  Call SqlSetLockTimeout( hSqlHandle, SQLTIMEOUT )
.head 11 -  Call SqlSetParameter( hSqlHandle, DBP_PRESERVE, TRUE, ''  )
.head 11 -  Break Connect
.head 10 +  Else
.head 11 +  If IDNO = SalMessageBox( 'Could not connect handle in function '||sFuncName||'! Contact programmers! RETRY?', 'Error', MB_YesNo )
.head 12 -  Break Connect
.head 8 +  Loop Prepare
.head 9 +  If bHandlePrepared
.head 10 -  Break Prepare
.head 9 +  Else
.head 10 -  Set sSql = ' UPDATE Stock_Item_Sale 
SET Allocated_Flag = :sAllocatedFlag 
WHERE
  Stock_Item_No = :nItemNo AND 
  Year_Of_Sale = :nYear '
.head 10 +  If SqlPrepare( hSqlHandle, sSql )
.head 11 -  Set bHandlePrepared = TRUE
.head 11 -  Break Prepare
.head 10 +  Else
.head 11 -  Set bHandlePrepared = FALSE
.head 11 +  If IDNO = SalMessageBox( 'Could not prepare handle in function '||sFuncName||'! Contact programmers! RETRY?', 'Error', MB_YesNo )
.head 12 -  Break Prepare
.head 8 -  !
.head 8 +  If SqlExecute( hSqlHandle )
.head 9 -  Return TRUE
.head 8 +  Else
.head 9 -  Set bHandlePrepared = FALSE
.head 9 +  If IDNO = SalMessageBox( 'Could not execute handle in function '||sFuncName||'! Contact programmers! RETRY?', 'Error', MB_YesNo )
.head 10 -  Return FALSE
.head 6 +  Case SH_cls_Commit
.head 7 -  Set bOk = TRUE
.head 7 +  Loop Commit
.head 8 +  If bHandleConnected
.head 9 +  If SqlCommit( hSqlHandle )
.head 10 -  Break Commit
.head 9 +  Else
.head 10 +  If IDNO = SalMessageBox( 'Could not commit handle in function '||sFuncName||'! Contact programmers! RETRY?', 'Error', MB_YesNo )
.head 11 -  Set bOk = FALSE
.head 11 -  Break Commit
.head 8 +  Else
.head 9 -  Break Commit
.head 7 -  Return bOk
.head 6 +  Case SH_cls_Rollback
.head 7 -  Set bOk = TRUE
.head 7 +  Loop Rollback
.head 8 +  If bHandleConnected
.head 9 -  Set bHandlePrepared = FALSE
.head 9 +  If SqlPrepareAndExecute( hSqlHandle, 'ROLLBACK' )
.head 10 -  Break Rollback
.head 9 +  Else
.head 10 +  If IDNO = SalMessageBox( 'Could not rollback handle in function '||sFuncName||'! Contact programmers! RETRY?', 'Error', MB_YesNo )
.head 11 -  Set bOk = FALSE
.head 11 -  Break Rollback
.head 8 +  Else
.head 9 -  Break Rollback
.head 7 -  Return bOk
.head 6 +  Case SH_cls_Disconnect
.head 7 -  Set bOk = TRUE
.head 7 +  Loop Disconnect
.head 8 +  If bHandleConnected
.head 9 +  If SqlDisconnect( hSqlHandle )
.head 10 -  Set bHandleConnected = FALSE
.head 10 -  Set bHandlePrepared = FALSE
.head 10 -  Break Disconnect
.head 9 +  Else
.head 10 +  If IDNO = SalMessageBox( 'Could not disconnect handle in function '||sFuncName||'Contact programmers! RETRY?', 'Error', MB_YesNo )
.head 11 -  Set bOk = FALSE
.head 11 -  Break Disconnect
.head 8 +  Else
.head 9 -  Break Disconnect
.head 7 -  Return bOk
.head 6 +  Case SH_cls_RePrepare
.head 7 -  Set bHandlePrepared = FALSE
.head 7 -  Return TRUE
.head 3 +  Function: AllocatedItemOrders
.head 4 -  Description: This function does NOT commit
.head 4 +  Returns
.head 5 -  Boolean:
.head 4 +  Parameters
.head 5 -  Number: nItemNo
.head 5 -  Number: nYear
.head 5 -  Number: nActionType
.head 4 +  Static Variables
.head 5 -  Sql Handle: hSqlHandle
.head 5 -  Boolean: bHandleConnected
.head 5 -  Boolean: bHandlePrepared
.head 4 +  Local variables
.head 5 -  String: sSql
.head 5 -  String: sFuncName
.head 5 -  Boolean: bOk
.head 4 +  Actions
.head 5 -  Set sFuncName = 'AllocatedItemOrders'
.head 5 +  Select Case nActionType
.head 6 +  Case SH_cls_Execute
.head 7 +  Loop Execute
.head 8 +  Loop Connect
.head 9 +  If bHandleConnected
.head 10 -  Break Connect
.head 9 +  Else
.head 10 -  Set bHandleConnected = SqlConnect( hSqlHandle ) 
.head 10 +  If bHandleConnected
.head 11 -  Call SqlSetLockTimeout( hSqlHandle, SQLTIMEOUT )
.head 11 -  Call SqlSetParameter( hSqlHandle, DBP_PRESERVE, TRUE, ''  )
.head 11 -  Break Connect
.head 10 +  Else
.head 11 +  If IDNO = SalMessageBox( 'Could not connect handle in function '||sFuncName||'! Contact programmers! RETRY?', 'Error', MB_YesNo )
.head 12 -  Break Connect
.head 8 +  Loop Prepare
.head 9 +  If bHandlePrepared
.head 10 -  Break Prepare
.head 9 +  Else
.head 10 -  Set sSql = " UPDATE Customer_Order
SET Conf_Amt = Ordered_Amount, 
    Alloc_Flag = 'Y'
WHERE
  Year_Of_Sale = :nYear AND 
  Conf_Amt IS NULL AND 
  (
    :nItemNo = Stock_Item_No OR
    :nItemNo = Subs_Item_No 
  ) "
.head 10 +  If SqlPrepare( hSqlHandle, sSql )
.head 11 -  Set bHandlePrepared = TRUE
.head 11 -  Break Prepare
.head 10 +  Else
.head 11 -  Set bHandlePrepared = FALSE
.head 11 +  If IDNO = SalMessageBox( 'Could not prepare handle in function '||sFuncName||'! Contact programmers! RETRY?', 'Error', MB_YesNo )
.head 12 -  Break Prepare
.head 8 -  !
.head 8 +  If SqlExecute( hSqlHandle )
.head 9 -  Return TRUE
.head 8 +  Else
.head 9 -  Set bHandlePrepared = FALSE
.head 9 +  If IDNO = SalMessageBox( 'Could not execute handle in function '||sFuncName||'! Contact programmers! RETRY?', 'Error', MB_YesNo )
.head 10 -  Return FALSE
.head 6 +  Case SH_cls_Commit
.head 7 -  Set bOk = TRUE
.head 7 +  Loop Commit
.head 8 +  If bHandleConnected
.head 9 +  If SqlCommit( hSqlHandle )
.head 10 -  Break Commit
.head 9 +  Else
.head 10 +  If IDNO = SalMessageBox( 'Could not commit handle in function '||sFuncName||'! Contact programmers! RETRY?', 'Error', MB_YesNo )
.head 11 -  Set bOk = FALSE
.head 11 -  Break Commit
.head 8 +  Else
.head 9 -  Break Commit
.head 7 -  Return bOk
.head 6 +  Case SH_cls_Rollback
.head 7 -  Set bOk = TRUE
.head 7 +  Loop Rollback
.head 8 +  If bHandleConnected
.head 9 -  Set bHandlePrepared = FALSE
.head 9 +  If SqlPrepareAndExecute( hSqlHandle, 'ROLLBACK' )
.head 10 -  Break Rollback
.head 9 +  Else
.head 10 +  If IDNO = SalMessageBox( 'Could not rollback handle in function '||sFuncName||'! Contact programmers! RETRY?', 'Error', MB_YesNo )
.head 11 -  Set bOk = FALSE
.head 11 -  Break Rollback
.head 8 +  Else
.head 9 -  Break Rollback
.head 7 -  Return bOk
.head 6 +  Case SH_cls_Disconnect
.head 7 -  Set bOk = TRUE
.head 7 +  Loop Disconnect
.head 8 +  If bHandleConnected
.head 9 +  If SqlDisconnect( hSqlHandle )
.head 10 -  Set bHandleConnected = FALSE
.head 10 -  Set bHandlePrepared = FALSE
.head 10 -  Break Disconnect
.head 9 +  Else
.head 10 +  If IDNO = SalMessageBox( 'Could not disconnect handle in function '||sFuncName||'Contact programmers! RETRY?', 'Error', MB_YesNo )
.head 11 -  Set bOk = FALSE
.head 11 -  Break Disconnect
.head 8 +  Else
.head 9 -  Break Disconnect
.head 7 -  Return bOk
.head 6 +  Case SH_cls_RePrepare
.head 7 -  Set bHandlePrepared = FALSE
.head 7 -  Return TRUE
.head 2 +  Class Definitions
.data RESOURCE 0 0 1 1645381735
0000: 7F0C000015080000 0000000000000000 0200001200FFFF01 00160000436C6173
0020: 73566172004F7574 6C696E6552006567 496E666F6C003C00 00154F0075724672
0040: 6D576E6400576974 684368696C006454 626CB8000000F006 0000001019000000
0060: 0182013010000000 3602007300000001 0000009B19001925 0001821100EC0000
0080: 36D1000100000032 0000000400000001 038201120000007B 3600360100360058
00A0: 0000190001C28213 0000001C36020001 000D004F00000096 19000182B00F0000
00C0: 0036470001000083 6800000004350003 5C00EC000036D900 01001001806C0000
00E0: 01002100124F7544 6CF8675769FFEC00 06002D190001826D 0F007E8C02730001
0100: 0036001900194B00 018210DB007EA300 010000CD320004DA 000311F6007E6C00
0120: 010036B200001900 B4018212003D7E00 01DA00004F2C0019 0001826D13007E8F
0140: 0001003600680004 6B000314D8000000 7EB3000100010180 1D00000002000000
0160: 00145069636B0049 6E746F5461626CE0 655062436C604000 000002006F04000D
0180: 030800000063BA02 7300B40100000459 00190001C0820109 0000001EBA000100
01A0: 0D000180D3000000 00030000000F4FE2 755F4368385F5461 E401D2001000005B
01C0: 040002C082011600 000018F602730001 006D000400D60400 02B017000000F667
01E0: 0001009308000004 3500021800EC0000 F6D9000100600C00 000004004D021900
0200: 007BF600B6010010 5900040002C31A00 00009EF600014D00 1400001619000182
0220: 01B01C000000F647 00010000832D0000 0019250001821D00 ED00F6D100010000
0240: 6046000000190009 01821E0000007BF6 00340100005F0058 0000190004C08201
0260: 200000009EF60001 0D00780000009619 000182B021000000 F647000100000B91
0280: 0000040025000282 2200EC0000F6D900 0100609500000004 000D02230000007B
02A0: F600B60100995800 00190001C0820125 0000001EF6000100 0D00B20000009619
02C0: 000182B026000000 F6470001000083CB 0000000425000282 2700EC0000F6D900
02E0: 010060CF00000004 000D02280000007B F600360100018060 BE00000004004010
0300: 4E65774F7543CE68 5461BF00DE00049A 00020C0086001403 7300680001000004
0320: B300040086020D00 00003D140001DB00 08AC00040002610E 00000014CF000136
0340: 000C00046B00020F DB0014B3000100CD 100004DA000210F6 00146C00010014B2
0360: 00000400B4038211 0039140300019B00 1800AC000400036D 120014CF00012600
0380: 1C0000190B000182 0114DB0014A30001 0000C13500000019 520001821500F600
03A0: 1468000100004EB0 0000001900B40182 16003D1400011A00 006700002C001900
03C0: 01826D1700148F00 0100160080000004 4B00028219DB0014 B3000100C1840000
03E0: 001902000182011B 0000F60014680001 00009DB100001900 B401821C003D1400
0400: 011A0000B600002C 00040002826D1D00 14CF00010600BA00 0000046B00021EDB
0420: 0014B30001002101 802D000005C00000 000E4F75806F6C75 6D6E436C93B80000
0440: 06BD000435000205 008D002C0373D100 0100006604000400 4D020600007B2C00
0460: B601000859000400 02C3070000009E2C 00016D000C00D604 0002B608002C6700
0480: 01009B100004B500 0209ED002CD90001 0064140000190001 0182010A0000007B
04A0: 2C00340100000180 662D00060008114F 7544617461804669 656C64436C9F0006
04C0: BD0004A500028205 8D00380373D10001 000066040004006D 0206007B3800B601
04E0: 00085900040002DB 07009E3800016D00 0C00D6040002B608 0038670001009B10
0500: 0004B5000209ED00 38D9000100661400 1900610182010A00 7B38003401000001
0520: 8044040000070000 4E11546251407565 7279446C42106F78 2200000100BD0004
0540: B500031B8D005603 73D9000100980180 04000801000C636C 7363620047656E65
0560: 72616C22A2000001 0000B70400B40282 0600213404730000 011B0001801D2300
0580: 0900000E08634F75 53656173006F6E59 6561724000D10002 00005B190001DC82
05A0: 0100188804730001 006D001900960400 0282B60700886700 0100630180040084
05C0: 0A0000134F750052 6164696F42757470 746F6E4373442200 000100006F04006D
05E0: 020600639A047300 3601000180004B00 00000B0000000019 4A616E53656C6500
0600: 637446726F6D5461 F36550035E000000 03003D001900C500 0182010D00660573
0620: 00D1000100006619 0019006901820700 7B6600B401000032 5900190001D28208
0640: 00001E660001008D 0001801D11000C00 00174AF2615069FB 54BF40D100020000
0660: 5B190001D8820106 0018720573000100 6D00190096040003 82B6070072670001
0680: 006301806C00840D 0000154E65A7446C 577F549A62B80006 BD0019250001822E
06A0: 008C00007E0573D1 0001000066190019 000901822F000000 7B7E00B401000032
06C0: 5900040003C33000 00009E7E00016D00 36009619000182B0 310000007E470001
06E0: 00009B4F0019A500 018232ED007ED100 0100006668000400 0D03330000007B7E
0700: 0036010001804604 000E00000810636C 546F6F6C00546970 57696E646F887722
0720: 00000100DE0004DA 0003058600E40873 006C000100018C80 1D000F0010000D63
0740: 6C53656E0064456D 61696C7340A30002 0000B71900B80182 0100214409730000
0760: 01DA0000192C0004 0002826D060044CF 0001860001801900 08001000000C6777
0780: 004D6F7573655768 6518656C22000100 BD00198500018201 0A3D007300D10001
07A0: 0000000180810000 0011000100086351 4F456D07C0000000 067B00194B000182
07C0: 051B00BC0973A300 010000CD190019D2 00018208F600BC68 0001000032B30019
07E0: 00A401820B00003D BC00019A00004B00 2C00190001826D0E 00BC8F0001000600
0800: 64000000194B0001 8211DB00BCA30001 0000C17D00000004 D00001028214FE00
0820: 8380010000007F
.enddata
.head 2 +  Default Classes
.head 3 -  MDI Window:
.head 3 -  Form Window:
.head 3 -  Dialog Box:
.head 3 -  Table Window:
.head 3 -  Quest Window:
.head 3 -  Data Field:
.head 3 -  Spin Field:
.head 3 -  Multiline Field:
.head 3 -  Pushbutton:
.head 3 -  Radio Button:
.head 3 -  Check Box:
.head 3 -  Option Button:
.head 3 -  Child Table:
.head 3 -  Quest Child Window:
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
.head 3 -  Custom Control: cSpinField
.head 3 -  ActiveX:
.head 2 -  Application Actions
.head 1 +  Dialog Box: dlgAllocationsStage1
.head 2 -  Class: Our_Dialog_Box
.head 2 -  Property Template:
.head 2 -  Class DLL Name:
.head 2 -  Title: Stage 1, Allocations
.head 2 -  Accessories Enabled? Class Default
.head 2 -  Visible? Class Default
.head 2 -  Display Settings
.head 3 -  Display Style? Class Default
.head 3 -  Visible at Design time? No
.head 3 -  Type of Dialog: Modal
.head 3 -  Allow Dock to Parent? No
.head 3 -  Docking Orientation: All
.head 3 -  Window Location and Size
.head 4 -  Left: 0.625"
.head 4 -  Top: 1.219"
.head 4 -  Width:  5.75"
.head 4 -  Width Editable? Class Default
.head 4 -  Height: 2.104"
.head 4 -  Height Editable? Class Default
.head 3 -  Absolute Screen Location? Class Default
.head 3 -  Font Name: Class Default
.head 3 -  Font Size: Class Default
.head 3 -  Font Enhancement: Class Default
.head 3 -  Text Color: Class Default
.head 3 -  Background Color: Class Default
.head 3 -  Resizable? No
.head 3 -  Vertical Scroll? Yes
.head 3 -  Horizontal Scroll? Yes
.head 2 -  Description:
.head 2 +  Tool Bar
.head 3 -  Display Settings
.head 4 -  Display Style? Class Default
.head 4 -  Location? Class Default
.head 4 -  Visible? Class Default
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
.head 3 +  Contents
.head 4 +  Pushbutton: pbHelp
.head 5 -  Class Child Ref Key: 9
.head 5 -  Class ChildKey: 0
.head 5 -  Class: Our_Dialog_Box
.head 5 -  Property Template:
.head 5 -  Class DLL Name:
.head 5 -  Title:
.head 5 -  Window Location and Size
.head 6 -  Left: Class Default
.head 6 -  Top: Class Default
.head 6 -  Width:  Class Default
.head 6 -  Width Editable? Class Default
.head 6 -  Height: Class Default
.head 6 -  Height Editable? Class Default
.head 5 -  Visible? Class Default
.head 5 -  Keyboard Accelerator: Class Default
.head 5 -  Font Name: Class Default
.head 5 -  Font Size: Class Default
.head 5 -  Font Enhancement: Class Default
.head 5 -  Picture File Name:
.head 5 -  Picture Transparent Color: Class Default
.head 5 -  Image Style: Class Default
.head 5 -  Text Color: Class Default
.head 5 -  Background Color: Class Default
.head 5 -  Button Appearance: Standard
.head 5 -  Message Actions
.head 4 +  Pushbutton: pbCancel
.head 5 -  Class Child Ref Key: 10
.head 5 -  Class ChildKey: 0
.head 5 -  Class: Our_Dialog_Box
.head 5 -  Property Template:
.head 5 -  Class DLL Name:
.head 5 -  Title:
.head 5 -  Window Location and Size
.head 6 -  Left: Class Default
.head 6 -  Top: Class Default
.head 6 -  Width:  Class Default
.head 6 -  Width Editable? Class Default
.head 6 -  Height: Class Default
.head 6 -  Height Editable? Class Default
.head 5 -  Visible? Class Default
.head 5 -  Keyboard Accelerator: Class Default
.head 5 -  Font Name: Class Default
.head 5 -  Font Size: Class Default
.head 5 -  Font Enhancement: Class Default
.head 5 -  Picture File Name:
.head 5 -  Picture Transparent Color: Class Default
.head 5 -  Image Style: Class Default
.head 5 -  Text Color: Class Default
.head 5 -  Background Color: Class Default
.head 5 -  Button Appearance: Standard
.head 5 -  Message Actions
.head 4 +  Pushbutton: pbItemEnq
.head 5 -  Class Child Ref Key: 11
.head 5 -  Class ChildKey: 0
.head 5 -  Class: Our_Dialog_Box
.head 5 -  Property Template:
.head 5 -  Class DLL Name:
.head 5 -  Title:
.head 5 -  Window Location and Size
.head 6 -  Left: Class Default
.head 6 -  Top: Class Default
.head 6 -  Width:  Class Default
.head 6 -  Width Editable? Class Default
.head 6 -  Height: Class Default
.head 6 -  Height Editable? Class Default
.head 5 -  Visible? Class Default
.head 5 -  Keyboard Accelerator: Class Default
.head 5 -  Font Name: Class Default
.head 5 -  Font Size: Class Default
.head 5 -  Font Enhancement: Class Default
.head 5 -  Picture File Name:
.head 5 -  Picture Transparent Color: Class Default
.head 5 -  Image Style: Class Default
.head 5 -  Text Color: Class Default
.head 5 -  Background Color: Class Default
.head 5 -  Button Appearance: Standard
.head 5 -  Message Actions
.head 2 +  Contents
.head 3 -  Background Text: Season
.head 4 -  Resource Id: 22386
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class:
.head 4 -  Window Location and Size
.head 5 -  Left: 1.688"
.head 5 -  Top: 0.615"
.head 5 -  Width:  0.663"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 0.167"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? Yes
.head 4 -  Justify: Right
.head 4 -  Font Name: Default
.head 4 -  Font Size: Default
.head 4 -  Font Enhancement: Default
.head 4 -  Text Color: Default
.head 4 -  Background Color: Default
.head 3 +  Custom Control: cSeasonYear
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: cOurSeasonYear
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Display Settings
.head 5 -  DLL Name:
.head 5 -  MS Windows Class Name:
.head 5 -  Style:  Class Default
.head 5 -  ExStyle:  Class Default
.head 5 -  Title:
.head 5 -  Window Location and Size
.head 6 -  Left: 2.4"
.head 6 -  Top: 0.563"
.head 6 -  Width:  Class Default
.head 6 -  Width Editable? Class Default
.head 6 -  Height: Class Default
.head 6 -  Height Editable? Class Default
.head 5 -  Visible? Class Default
.head 5 -  Border? Class Default
.head 5 -  Etched Border? Class Default
.head 5 -  Hollow? Class Default
.head 5 -  Vertical Scroll? Class Default
.head 5 -  Horizontal Scroll? Class Default
.head 5 -  Tab Stop? Class Default
.head 5 -  Tile To Parent? Class Default
.head 5 -  Font Name: Class Default
.head 5 -  Font Size: Class Default
.head 5 -  Font Enhancement: Class Default
.head 5 -  Text Color: Class Default
.head 5 -  Background Color: Class Default
.head 5 -  DLL Settings
.head 4 +  Message Actions
.head 5 +  On PAM_SETINSTANCEVARS
.head 6 -  Set cSeasonYear.bEditable = TRUE
.head 3 -  ! Background Text: Year Of Allocation
.winattr
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class:
.head 4 -  Window Location and Size
.head 5 -  Left: 0.838"
.head 5 -  Top: 0.656"
.head 5 -  Width:  1.65"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 0.167"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? Yes
.head 4 -  Justify: Center
.head 4 -  Font Name: Default
.head 4 -  Font Size: Default
.head 4 -  Font Enhancement: Default
.head 4 -  Text Color: Default
.head 4 -  Background Color: Default
.end
.head 3 +  ! cOurSpinField: ccYear
.head 4 +    Message Actions 
.head 5 +    On PAM_SETINSTANCEVARS
.head 6 -    Call ccYear.SetNumberProperties( 0, 9999, 1, 0 )
.head 3 +  Pushbutton: pbRun
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: OurPushbuttonClass
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title: RUN (Stage 1)
.head 4 -  Window Location and Size
.head 5 -  Left: 0.188"
.head 5 -  Top: 1.323"
.head 5 -  Width:  1.988"
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
.head 4 -  Button Appearance: Standard
.head 4 +  Message Actions
.head 5 +  On PAM_CLICK
.head 6 -  Set sYear = cSeasonYear.GetNumber( )
.head 6 -  Set nYear = SalStrToNumber( sYear )
.head 6 +  If IDYES = SalMessageBox( 'Are you sure?', 'Warning', MB_YesNo )
.head 7 +  If IDYES = SalMessageBox( 'Are you REALLY sure?', 'Warning', MB_YesNo )
.head 8 +  If IDYES = SalMessageBox( 'Stage 1 should be run only once! Do you still want to continue?', 'Warning', MB_YesNo )
.head 9 +  If IDYES = SalMessageBox( 'Did you check with someone that is up with the allocations? ie:(Liz or Wes)', 'Warning', MB_YesNo )
.head 10 +  If IDYES = SalMessageBox( 'Ok then, Are your ready?', 'Warning', MB_YesNo )
.head 11 +  If SalSendMsg( pbCancel, PAM_YIELDENABLE, 0, 0 )
.head 12 -  Call RunStage1Allocations( nYear, SH_cls_Execute )
.head 3 +  Data Field: dfDatabase
.head 4 -  Class Child Ref Key: 1
.head 4 -  Class ChildKey: 0
.head 4 -  Class: Our_Dialog_Box
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Data
.head 5 -  Maximum Data Length: Class Default
.head 5 -  Data Type: Class Default
.head 5 -  Editable? Class Default
.head 4 -  Display Settings
.head 5 -  Window Location and Size
.head 6 -  Left: Class Default
.head 6 -  Top: Class Default
.head 6 -  Width:  Class Default
.head 6 -  Width Editable? Class Default
.head 6 -  Height: Class Default
.head 6 -  Height Editable? Class Default
.head 5 -  Visible? Class Default
.head 5 -  Border? Class Default
.head 5 -  Justify: Class Default
.head 5 -  Format: Class Default
.head 5 -  Country: Class Default
.head 5 -  Font Name: Class Default
.head 5 -  Font Size: Class Default
.head 5 -  Font Enhancement: Class Default
.head 5 -  Text Color: Class Default
.head 5 -  Background Color: Class Default
.head 5 -  Input Mask: Class Default
.head 4 -  Message Actions
.head 3 +  Data Field: dfCurrentDate
.head 4 -  Class Child Ref Key: 2
.head 4 -  Class ChildKey: 0
.head 4 -  Class: Our_Dialog_Box
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Data
.head 5 -  Maximum Data Length: Class Default
.head 5 -  Data Type: Class Default
.head 5 -  Editable? Class Default
.head 4 -  Display Settings
.head 5 -  Window Location and Size
.head 6 -  Left: Class Default
.head 6 -  Top: Class Default
.head 6 -  Width:  Class Default
.head 6 -  Width Editable? Class Default
.head 6 -  Height: Class Default
.head 6 -  Height Editable? Class Default
.head 5 -  Visible? Class Default
.head 5 -  Border? Class Default
.head 5 -  Justify: Class Default
.head 5 -  Format: Class Default
.head 5 -  Country: Class Default
.head 5 -  Font Name: Class Default
.head 5 -  Font Size: Class Default
.head 5 -  Font Enhancement: Class Default
.head 5 -  Text Color: Class Default
.head 5 -  Background Color: Class Default
.head 5 -  Input Mask: Class Default
.head 4 -  Message Actions
.head 2 +  Functions
.head 3 +  Function: RunStage1Allocations
.head 4 -  Description:
.head 4 +  Returns
.head 5 -  Boolean:
.head 4 +  Parameters
.head 5 -  Number: nYear
.head 5 -  Number: nActionType
.head 4 +  Static Variables
.head 5 -  Sql Handle: hSqlHandle
.head 5 -  Boolean: bHandleConnected
.head 5 -  Boolean: bHandlePrepared
.head 4 +  Local variables
.head 5 -  String: sSql
.head 5 -  String: sFuncName
.head 5 -  Boolean: bOk
.head 5 -  Number: nInd
.head 5 -  !
.head 5 -  Number: nItemNo
.head 5 -  Number: nTotAvail
.head 5 -  Number: nAmtOnOrder
.head 5 -  Number: nOnOrdAsSubs
.head 5 -  String: sGeneric
.head 5 -  !
.head 5 -  Number: nTotalRows
.head 5 -  Number: nRowCount
.head 5 -  Window Handle: hWndMeter
.head 4 +  Actions
.head 5 -  Set sFuncName = 'RunStage1Allocations'
.head 5 +  Select Case nActionType
.head 6 +  Case SH_cls_Execute
.head 7 +  Loop Execute
.head 8 +  Loop Connect
.head 9 +  If bHandleConnected
.head 10 -  Break Connect
.head 9 +  Else
.head 10 -  Set bHandleConnected = SqlConnect( hSqlHandle ) 
.head 10 +  If bHandleConnected
.head 11 -  Call SqlSetLockTimeout( hSqlHandle, SQLTIMEOUT )
.head 11 -  Call SqlSetParameter( hSqlHandle, DBP_PRESERVE, TRUE, ''  )
.head 11 -  Break Connect
.head 10 +  Else
.head 11 +  If IDNO = SalMessageBox( 'Could not connect handle in function '||sFuncName||'! Contact programmers! RETRY?', 'Error', MB_YesNo )
.head 12 -  Break Connect
.head 8 +  Loop Prepare
.head 9 +  If bHandlePrepared
.head 10 -  Break Prepare
.head 9 +  Else
.head 10 -  Set sSql = " SELECT 
  Stock_Item_Sale.Stock_Item_No, 
  Stock_Item_Sale.Tot_Avail, 
  Stock_Item_Sale.Amt_On_Order, 
  Stock_Item_Sale.On_Ord_As_Subs, 
  Stock_Item.Generic_Stock_Item 
FROM 
  Stock_Item, 
  Stock_Item_Sale 
INTO 
  :nItemNo, 
  :nTotAvail, 
  :nAmtOnOrder, 
  :nOnOrdAsSubs,
  :sGeneric 
WHERE
  Stock_Item.Item_No = Stock_Item_Sale.Stock_Item_No AND 
  Stock_Item_Sale.Year_Of_Sale = :nYear AND
  Stock_Item_Sale.Allocated_Flag IS NULL AND 
  NOT Stock_Item.Tree_Type LIKE 'C%' "
.head 10 +  If SqlPrepare( hSqlHandle, sSql )
.head 11 -  Set bHandlePrepared = TRUE
.head 11 -  Break Prepare
.head 10 +  Else
.head 11 -  Set bHandlePrepared = FALSE
.head 11 +  If IDNO = SalMessageBox( 'Could not prepare handle in function '||sFuncName||'! Contact programmers! RETRY?', 'Error', MB_YesNo )
.head 12 -  Break Prepare
.head 8 -  !
.head 8 +  If SqlExecute( hSqlHandle )
.head 9 -  Call SqlGetResultSetCount( hSqlHandle, nTotalRows )
.head 9 +  If nTotalRows >= nNumRowsToMeter
.head 10 -  Set hWndMeter = SalCreateWindow( dlgMeterProgress, hWndForm, 'Stage 1, Allocating', nTotalRows )
.head 9 -  Set nRowCount = 0
.head 9 +  While SqlFetchNext( hSqlHandle, nInd ) AND dlgAllocationsStage1.bAllocStage1Running
.head 10 +  If sGeneric = 'Y'
.head 11 +  If UpdateItemAllocatedFlag( nItemNo, nYear, 'Y', SH_cls_Execute )
.head 12 -  Call UpdateItemAllocatedFlag( 0, 0, '', SH_cls_Commit )
.head 11 +  Else
.head 12 -  Call UpdateItemAllocatedFlag( 0, 0, '', SH_cls_Rollback )
.head 10 +  Else If nAmtOnOrder = 0 AND nOnOrdAsSubs = 0
.head 11 +  If UpdateItemAllocatedFlag( nItemNo, nYear, 'Y', SH_cls_Execute )
.head 12 -  Call UpdateItemAllocatedFlag( 0, 0, '', SH_cls_Commit )
.head 11 +  Else
.head 12 -  Call UpdateItemAllocatedFlag( 0, 0, '', SH_cls_Rollback )
.head 10 +  Else If nTotAvail >= 0
.head 11 +  If AllocatedItemOrders( nItemNo, nYear, SH_cls_Execute )
.head 12 +  If UpdateItemAllocatedFlag( nItemNo, nYear, 'Y', SH_cls_Execute )
.head 13 -  Call AllocatedItemOrders( 0, 0, SH_cls_Commit )
.head 13 -  Call UpdateItemAllocatedFlag( 0, 0, '', SH_cls_Commit )
.head 12 +  Else
.head 13 -  Call AllocatedItemOrders( 0, 0, SH_cls_Rollback )
.head 13 -  Call UpdateItemAllocatedFlag( 0, 0, '', SH_cls_Rollback )
.head 11 +  Else
.head 12 -  Call AllocatedItemOrders( 0, 0, SH_cls_Rollback )
.head 10 +  Else
.head 11 +  If UpdateItemAllocatedFlag( nItemNo, nYear, 'N', SH_cls_Execute )
.head 12 -  Call UpdateItemAllocatedFlag( 0, 0, '', SH_cls_Commit )
.head 11 +  Else
.head 12 -  Call UpdateItemAllocatedFlag( 0, 0, '', SH_cls_Rollback )
.head 10 -  !
.head 10 -  Set nRowCount = nRowCount + 1
.head 10 -  Call SalSendMsg( hWndMeter, PAM_SETPROGRESS, 0, nRowCount )
.head 9 -  Call SalSendMsg( hWndMeter, PAM_END, 0, 0 )
.head 9 -  Return TRUE
.head 8 +  Else
.head 9 -  Set bHandlePrepared = FALSE
.head 9 +  If IDNO = SalMessageBox( 'Could not execute handle in function '||sFuncName||'! Contact programmers! RETRY?', 'Error', MB_YesNo )
.head 10 -  Return FALSE
.head 6 +  Case SH_cls_Commit
.head 7 -  Set bOk = TRUE
.head 7 +  Loop Commit
.head 8 +  If bHandleConnected
.head 9 +  If SqlCommit( hSqlHandle )
.head 10 -  Break Commit
.head 9 +  Else
.head 10 +  If IDNO = SalMessageBox( 'Could not commit handle in function '||sFuncName||'! Contact programmers! RETRY?', 'Error', MB_YesNo )
.head 11 -  Set bOk = FALSE
.head 11 -  Break Commit
.head 8 +  Else
.head 9 -  Break Commit
.head 7 -  Return bOk
.head 6 +  Case SH_cls_Rollback
.head 7 -  Set bOk = TRUE
.head 7 +  Loop Rollback
.head 8 +  If bHandleConnected
.head 9 -  Set bHandlePrepared = FALSE
.head 9 +  If SqlPrepareAndExecute( hSqlHandle, 'ROLLBACK' )
.head 10 -  Break Rollback
.head 9 +  Else
.head 10 +  If IDNO = SalMessageBox( 'Could not rollback handle in function '||sFuncName||'! Contact programmers! RETRY?', 'Error', MB_YesNo )
.head 11 -  Set bOk = FALSE
.head 11 -  Break Rollback
.head 8 +  Else
.head 9 -  Break Rollback
.head 7 -  Return bOk
.head 6 +  Case SH_cls_Disconnect
.head 7 -  Set bOk = TRUE
.head 7 +  Loop Disconnect
.head 8 +  If bHandleConnected
.head 9 +  If SqlDisconnect( hSqlHandle )
.head 10 -  Set bHandleConnected = FALSE
.head 10 -  Set bHandlePrepared = FALSE
.head 10 -  Break Disconnect
.head 9 +  Else
.head 10 +  If IDNO = SalMessageBox( 'Could not disconnect handle in function '||sFuncName||'Contact programmers! RETRY?', 'Error', MB_YesNo )
.head 11 -  Set bOk = FALSE
.head 11 -  Break Disconnect
.head 8 +  Else
.head 9 -  Break Disconnect
.head 7 +  If NOT UpdateItemAllocatedFlag( 0, 0, '', SH_cls_Disconnect)
.head 8 -  Set bOk = FALSE
.head 7 -  Return bOk
.head 6 +  Case SH_cls_RePrepare
.head 7 -  Set bHandlePrepared = FALSE
.head 7 -  Call UpdateItemAllocatedFlag( 0, 0, '', SH_cls_RePrepare )
.head 7 -  Return TRUE
.head 3 +  ! Function: UpdateItemAllocatedFlag
.head 4 -    Description: This function does NOT commit
.head 4 +    Returns 
.head 5 -    Boolean: 
.head 4 +    Parameters 
.head 5 -    Number: nItemNo
.head 5 -    Number: nYear
.head 5 -    String: sAllocatedFlag
.head 5 -    Number: nActionType
.head 4 +    Static Variables 
.head 5 -    Sql Handle: hSqlHandle
.head 5 -    Boolean: bHandleConnected
.head 5 -    Boolean: bHandlePrepared
.head 4 +    Local variables 
.head 5 -    String: sSql
.head 5 -    String: sFuncName
.head 5 -    Boolean: bOk
.head 4 +    Actions 
.head 5 -    Set sFuncName = 'UpdateItemAllocatedFlag'
.head 5 +    Select Case nActionType
.head 6 +  Case SH_cls_Execute
.head 7 +    Loop Execute
.head 8 +    Loop Connect
.head 9 +    If bHandleConnected
.head 10 -    Break Connect
.head 9 +    Else 
.head 10 -    Set bHandleConnected = SqlConnect( hSqlHandle ) 
.head 10 +    If bHandleConnected
.head 11 -    Call SqlSetLockTimeout( hSqlHandle, SQLTIMEOUT )
.head 11 -    Call SqlSetParameter( hSqlHandle, DBP_PRESERVE, TRUE, ''  )
.head 11 -    Break Connect
.head 10 +    Else 
.head 11 +    If IDNO = SalMessageBox( 'Could not connect handle in function '||sFuncName||'! Contact programmers! RETRY?', 'Error', MB_YesNo )
.head 12 -    Break Connect
.head 8 +    Loop Prepare
.head 9 +    If bHandlePrepared
.head 10 -    Break Prepare
.head 9 +    Else 
.head 10 -    Set sSql = ' UPDATE Stock_Item_Sale 
SET Allocated_Flag = :sAllocatedFlag 
WHERE
  Stock_Item_No = :nItemNo AND 
  Year_Of_Sale = :nYear '
.head 10 +    If SqlPrepare( hSqlHandle, sSql )
.head 11 -    Set bHandlePrepared = TRUE
.head 11 -    Break Prepare
.head 10 +    Else 
.head 11 -    Set bHandlePrepared = FALSE
.head 11 +    If IDNO = SalMessageBox( 'Could not prepare handle in function '||sFuncName||'! Contact programmers! RETRY?', 'Error', MB_YesNo )
.head 12 -    Break Prepare
.head 8 -  !
.head 8 +    If SqlExecute( hSqlHandle )
.head 9 -    Return TRUE
.head 8 +    Else 
.head 9 -    Set bHandlePrepared = FALSE
.head 9 +    If IDNO = SalMessageBox( 'Could not execute handle in function '||sFuncName||'! Contact programmers! RETRY?', 'Error', MB_YesNo )
.head 10 -    Return FALSE
.head 6 +  Case SH_cls_Commit
.head 7 -    Set bOk = TRUE
.head 7 +    Loop Commit
.head 8 +    If bHandleConnected
.head 9 +    If SqlCommit( hSqlHandle )
.head 10 -    Break Commit
.head 9 +    Else 
.head 10 +    If IDNO = SalMessageBox( 'Could not commit handle in function '||sFuncName||'! Contact programmers! RETRY?', 'Error', MB_YesNo )
.head 11 -    Set bOk = FALSE
.head 11 -    Break Commit
.head 8 +    Else 
.head 9 -    Break Commit
.head 7 -    Return bOk
.head 6 +  Case SH_cls_Rollback
.head 7 -    Set bOk = TRUE
.head 7 +    Loop Rollback
.head 8 +    If bHandleConnected
.head 9 -    Set bHandlePrepared = FALSE
.head 9 +    If SqlPrepareAndExecute( hSqlHandle, 'ROLLBACK' )
.head 10 -    Break Rollback
.head 9 +    Else 
.head 10 +    If IDNO = SalMessageBox( 'Could not rollback handle in function '||sFuncName||'! Contact programmers! RETRY?', 'Error', MB_YesNo )
.head 11 -    Set bOk = FALSE
.head 11 -    Break Rollback
.head 8 +    Else 
.head 9 -    Break Rollback
.head 7 -    Return bOk
.head 6 +  Case SH_cls_
.head 7 -    Set bOk = TRUE
.head 7 +    Loop Disconnect
.head 8 +    If bHandleConnected
.head 9 +    If SqlDisconnect( hSqlHandle )
.head 10 -    Set bHandleConnected = FALSE
.head 10 -    Set bHandlePrepared = FALSE
.head 10 -    Break Disconnect
.head 9 +    Else 
.head 10 +    If IDNO = SalMessageBox( 'Could not disconnect handle in function '||sFuncName||'Contact programmers! RETRY?', 'Error', MB_YesNo )
.head 11 -    Set bOk = FALSE
.head 11 -    Break Disconnect
.head 8 +    Else 
.head 9 -    Break Disconnect
.head 7 -    Return bOk
.head 6 +    Case nRePrepare
.head 7 -    Set bHandlePrepared = FALSE
.head 7 -    Return TRUE
.head 3 +  ! Function: AllocatedItemOrders
.head 4 -    Description: This function does NOT commit
.head 4 +    Returns 
.head 5 -    Boolean: 
.head 4 +    Parameters 
.head 5 -    Number: nItemNo
.head 5 -    Number: nYear
.head 5 -    Number: nActionType
.head 4 +    Static Variables 
.head 5 -    Sql Handle: hSqlHandle
.head 5 -    Boolean: bHandleConnected
.head 5 -    Boolean: bHandlePrepared
.head 4 +    Local variables 
.head 5 -    String: sSql
.head 5 -    String: sFuncName
.head 5 -    Boolean: bOk
.head 4 +    Actions 
.head 5 -    Set sFuncName = 'AllocatedItemOrders'
.head 5 +    Select Case nActionType
.head 6 +  Case SH_cls_Execute
.head 7 +    Loop Execute
.head 8 +    Loop Connect
.head 9 +    If bHandleConnected
.head 10 -    Break Connect
.head 9 +    Else 
.head 10 -    Set bHandleConnected = SqlConnect( hSqlHandle ) 
.head 10 +    If bHandleConnected
.head 11 -    Call SqlSetLockTimeout( hSqlHandle, SQLTIMEOUT )
.head 11 -    Call SqlSetParameter( hSqlHandle, DBP_PRESERVE, TRUE, ''  )
.head 11 -    Break Connect
.head 10 +    Else 
.head 11 +    If IDNO = SalMessageBox( 'Could not connect handle in function '||sFuncName||'! Contact programmers! RETRY?', 'Error', MB_YesNo )
.head 12 -    Break Connect
.head 8 +    Loop Prepare
.head 9 +    If bHandlePrepared
.head 10 -    Break Prepare
.head 9 +    Else 
.head 10 -    Set sSql = " UPDATE Customer_Order
SET Conf_Amt = Ordered_Amount, 
    Alloc_Flag = 'Y'
WHERE
  Year_Of_Sale = :nYear AND 
  Conf_Amt IS NULL AND 
  (
    :nItemNo = Stock_Item_No OR
    :nItemNo = Subs_Item_No 
  ) "
.head 10 +    If SqlPrepare( hSqlHandle, sSql )
.head 11 -    Set bHandlePrepared = TRUE
.head 11 -    Break Prepare
.head 10 +    Else 
.head 11 -    Set bHandlePrepared = FALSE
.head 11 +    If IDNO = SalMessageBox( 'Could not prepare handle in function '||sFuncName||'! Contact programmers! RETRY?', 'Error', MB_YesNo )
.head 12 -    Break Prepare
.head 8 -  !
.head 8 +    If SqlExecute( hSqlHandle )
.head 9 -    Return TRUE
.head 8 +    Else 
.head 9 -    Set bHandlePrepared = FALSE
.head 9 +    If IDNO = SalMessageBox( 'Could not execute handle in function '||sFuncName||'! Contact programmers! RETRY?', 'Error', MB_YesNo )
.head 10 -    Return FALSE
.head 6 +  Case SH_cls_Commit
.head 7 -    Set bOk = TRUE
.head 7 +    Loop Commit
.head 8 +    If bHandleConnected
.head 9 +    If SqlCommit( hSqlHandle )
.head 10 -    Break Commit
.head 9 +    Else 
.head 10 +    If IDNO = SalMessageBox( 'Could not commit handle in function '||sFuncName||'! Contact programmers! RETRY?', 'Error', MB_YesNo )
.head 11 -    Set bOk = FALSE
.head 11 -    Break Commit
.head 8 +    Else 
.head 9 -    Break Commit
.head 7 -    Return bOk
.head 6 +  Case SH_cls_Rollback
.head 7 -    Set bOk = TRUE
.head 7 +    Loop Rollback
.head 8 +    If bHandleConnected
.head 9 -    Set bHandlePrepared = FALSE
.head 9 +    If SqlPrepareAndExecute( hSqlHandle, 'ROLLBACK' )
.head 10 -    Break Rollback
.head 9 +    Else 
.head 10 +    If IDNO = SalMessageBox( 'Could not rollback handle in function '||sFuncName||'! Contact programmers! RETRY?', 'Error', MB_YesNo )
.head 11 -    Set bOk = FALSE
.head 11 -    Break Rollback
.head 8 +    Else 
.head 9 -    Break Rollback
.head 7 -    Return bOk
.head 6 +  Case SH_cls_
.head 7 -    Set bOk = TRUE
.head 7 +    Loop Disconnect
.head 8 +    If bHandleConnected
.head 9 +    If SqlDisconnect( hSqlHandle )
.head 10 -    Set bHandleConnected = FALSE
.head 10 -    Set bHandlePrepared = FALSE
.head 10 -    Break Disconnect
.head 9 +    Else 
.head 10 +    If IDNO = SalMessageBox( 'Could not disconnect handle in function '||sFuncName||'Contact programmers! RETRY?', 'Error', MB_YesNo )
.head 11 -    Set bOk = FALSE
.head 11 -    Break Disconnect
.head 8 +    Else 
.head 9 -    Break Disconnect
.head 7 -    Return bOk
.head 6 +    Case nRePrepare
.head 7 -    Set bHandlePrepared = FALSE
.head 7 -    Return TRUE
.head 2 -  Window Parameters
.head 2 +  Window Variables
.head 3 -  String: sYear
.head 3 -  Number: nYear
.head 3 -  Boolean: bAllocStage1Running
.head 2 +  Message Actions
.head 3 +  On PAM_SETINSTANCEVARS
.head 4 -  Set sDatabase = SqlDatabase
.head 3 +  On SAM_CreateComplete
.head 4 -  ! Call ccYear.SetNumber( OurDateYear( dfCurrentDate ) )
.head 4 -  Set bAllocStage1Running = FALSE
.head 4 -  Call SalWaitCursor( FALSE )
.head 3 +  On SAM_Destroy
.head 4 -  Call RunStage1Allocations( 0, SH_cls_Disconnect)
.head 1 +  Form Window: frmAllocationsStage21
.head 2 -  Class: OurFrmWndWithChildTbl
.head 2 -  Property Template:
.head 2 -  Class DLL Name:
.head 2 -  Title: Stage 2, Allocations
.head 2 -  Icon File:
.head 2 -  Accessories Enabled? Class Default
.head 2 -  Visible? Class Default
.head 2 -  Display Settings
.head 3 -  Display Style? Class Default
.head 3 -  Visible at Design time? No
.head 3 -  Automatically Created at Runtime? No
.head 3 -  Initial State: Class Default
.head 3 -  Maximizable? Class Default
.head 3 -  Minimizable? Class Default
.head 3 -  Allow Child Docking? No
.head 3 -  Docking Orientation: All
.head 3 -  System Menu? Class Default
.head 3 -  Resizable? Class Default
.head 3 -  Window Location and Size
.head 4 -  Left: 0.0"
.head 4 -  Top: 0.0"
.head 4 -  Width:  Class Default
.head 4 -  Width Editable? Class Default
.head 4 -  Height: Class Default
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
.head 2 -  Description:
.head 2 -  Named Menus
.head 2 -  Menu
.head 2 +  Tool Bar
.head 3 -  Display Settings
.head 4 -  Display Style? Class Default
.head 4 -  Location? Class Default
.head 4 -  Visible? Class Default
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
.head 3 +  Contents
.head 4 +  Pushbutton: pbItemEnq
.head 5 -  Class Child Ref Key: 15
.head 5 -  Class ChildKey: 0
.head 5 -  Class: OurFrmWndWithChildTbl
.head 5 -  Property Template:
.head 5 -  Class DLL Name:
.head 5 -  Title:
.head 5 -  Window Location and Size
.head 6 -  Left: Class Default
.head 6 -  Top: Class Default
.head 6 -  Width:  Class Default
.head 6 -  Width Editable? Class Default
.head 6 -  Height: Class Default
.head 6 -  Height Editable? Class Default
.head 5 -  Visible? Class Default
.head 5 -  Keyboard Accelerator: Class Default
.head 5 -  Font Name: Class Default
.head 5 -  Font Size: Class Default
.head 5 -  Font Enhancement: Class Default
.head 5 -  Picture File Name:
.head 5 -  Picture Transparent Color: Class Default
.head 5 -  Image Style: Class Default
.head 5 -  Text Color: Class Default
.head 5 -  Background Color: Class Default
.head 5 -  Button Appearance: Standard
.head 5 -  Message Actions
.head 4 +  Pushbutton: pbExit
.head 5 -  Class Child Ref Key: 16
.head 5 -  Class ChildKey: 0
.head 5 -  Class: OurFrmWndWithChildTbl
.head 5 -  Property Template:
.head 5 -  Class DLL Name:
.head 5 -  Title:
.head 5 -  Window Location and Size
.head 6 -  Left: Class Default
.head 6 -  Top: Class Default
.head 6 -  Width:  Class Default
.head 6 -  Width Editable? Class Default
.head 6 -  Height: Class Default
.head 6 -  Height Editable? Class Default
.head 5 -  Visible? Class Default
.head 5 -  Keyboard Accelerator: Class Default
.head 5 -  Font Name: Class Default
.head 5 -  Font Size: Class Default
.head 5 -  Font Enhancement: Class Default
.head 5 -  Picture File Name:
.head 5 -  Picture Transparent Color: Class Default
.head 5 -  Image Style: Class Default
.head 5 -  Text Color: Class Default
.head 5 -  Background Color: Class Default
.head 5 -  Button Appearance: Standard
.head 5 -  Message Actions
.head 4 +  Pushbutton: pbSelectFromTable
.head 5 -  Class Child Ref Key: 17
.head 5 -  Class ChildKey: 0
.head 5 -  Class: OurFrmWndWithChildTbl
.head 5 -  Property Template:
.head 5 -  Class DLL Name:
.head 5 -  Title:
.head 5 -  Window Location and Size
.head 6 -  Left: Class Default
.head 6 -  Top: Class Default
.head 6 -  Width:  Class Default
.head 6 -  Width Editable? Class Default
.head 6 -  Height: Class Default
.head 6 -  Height Editable? Class Default
.head 5 -  Visible? Class Default
.head 5 -  Keyboard Accelerator: Class Default
.head 5 -  Font Name: Class Default
.head 5 -  Font Size: Class Default
.head 5 -  Font Enhancement: Class Default
.head 5 -  Picture File Name:
.head 5 -  Picture Transparent Color: Class Default
.head 5 -  Image Style: Class Default
.head 5 -  Text Color: Class Default
.head 5 -  Background Color: Class Default
.head 5 -  Button Appearance: Standard
.head 5 -  Message Actions
.head 2 +  Contents
.head 3 +  Data Field: dfDatabase
.head 4 -  Class Child Ref Key: 1
.head 4 -  Class ChildKey: 0
.head 4 -  Class: OurFrmWndWithChildTbl
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Data
.head 5 -  Maximum Data Length: Class Default
.head 5 -  Data Type: Class Default
.head 5 -  Editable? Class Default
.head 4 -  Display Settings
.head 5 -  Window Location and Size
.head 6 -  Left: Class Default
.head 6 -  Top: Class Default
.head 6 -  Width:  Class Default
.head 6 -  Width Editable? Class Default
.head 6 -  Height: Class Default
.head 6 -  Height Editable? Class Default
.head 5 -  Visible? Class Default
.head 5 -  Border? Class Default
.head 5 -  Justify: Class Default
.head 5 -  Format: Class Default
.head 5 -  Country: Class Default
.head 5 -  Font Name: Class Default
.head 5 -  Font Size: Class Default
.head 5 -  Font Enhancement: Class Default
.head 5 -  Text Color: Class Default
.head 5 -  Background Color: Class Default
.head 5 -  Input Mask: Class Default
.head 4 -  Message Actions
.head 3 +  Data Field: dfCurrentDate
.head 4 -  Class Child Ref Key: 2
.head 4 -  Class ChildKey: 0
.head 4 -  Class: OurFrmWndWithChildTbl
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Data
.head 5 -  Maximum Data Length: Class Default
.head 5 -  Data Type: Class Default
.head 5 -  Editable? Class Default
.head 4 -  Display Settings
.head 5 -  Window Location and Size
.head 6 -  Left: Class Default
.head 6 -  Top: Class Default
.head 6 -  Width:  Class Default
.head 6 -  Width Editable? Class Default
.head 6 -  Height: Class Default
.head 6 -  Height Editable? Class Default
.head 5 -  Visible? Class Default
.head 5 -  Border? Class Default
.head 5 -  Justify: Class Default
.head 5 -  Format: Class Default
.head 5 -  Country: Class Default
.head 5 -  Font Name: Class Default
.head 5 -  Font Size: Class Default
.head 5 -  Font Enhancement: Class Default
.head 5 -  Text Color: Class Default
.head 5 -  Background Color: Class Default
.head 5 -  Input Mask: Class Default
.head 4 -  Message Actions
.head 3 -  !
.head 3 +  Data Field: dfYear
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class:
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Data
.head 5 -  Maximum Data Length: 2
.head 5 -  Data Type: Number
.head 5 -  Editable? No
.head 4 -  Display Settings
.head 5 -  Window Location and Size
.head 6 -  Left: 1.138"
.head 6 -  Top: 0.323"
.head 6 -  Width:  0.525"
.head 6 -  Width Editable? Yes
.head 6 -  Height: 0.25"
.head 6 -  Height Editable? Yes
.head 5 -  Visible? Yes
.head 5 -  Border? Yes
.head 5 -  Justify: Center
.head 5 -  Format: #0
.head 5 -  Country: Default
.head 5 -  Font Name: Default
.head 5 -  Font Size: Default
.head 5 -  Font Enhancement: Default
.head 5 -  Text Color: Midnight Blue
.head 5 -  Background Color: Gray
.head 5 -  Input Mask: Unformatted
.head 4 -  Message Actions
.head 3 -  Background Text: Stock Item
.head 4 -  Resource Id: 1581
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class:
.head 4 -  Window Location and Size
.head 5 -  Left: 0.075"
.head 5 -  Top: 0.365"
.head 5 -  Width:  1.025"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 0.167"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? Yes
.head 4 -  Justify: Center
.head 4 -  Font Name: Default
.head 4 -  Font Size: Default
.head 4 -  Font Enhancement: Default
.head 4 -  Text Color: Midnight Blue
.head 4 -  Background Color: Dark Green
.head 3 +  Data Field: dfTreeType
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class:
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Data
.head 5 -  Maximum Data Length: 8
.head 5 -  Data Type: String
.head 5 -  Editable? No
.head 4 -  Display Settings
.head 5 -  Window Location and Size
.head 6 -  Left: 1.663"
.head 6 -  Top: 0.323"
.head 6 -  Width:  0.9"
.head 6 -  Width Editable? Yes
.head 6 -  Height: 0.25"
.head 6 -  Height Editable? Yes
.head 5 -  Visible? Yes
.head 5 -  Border? Yes
.head 5 -  Justify: Left
.head 5 -  Format: Uppercase
.head 5 -  Country: Default
.head 5 -  Font Name: Default
.head 5 -  Font Size: Default
.head 5 -  Font Enhancement: Default
.head 5 -  Text Color: Dark Blue
.head 5 -  Background Color: Gray
.head 5 -  Input Mask: Unformatted
.head 4 -  Message Actions
.head 3 +  Data Field: dfCultDesc
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
.head 6 -  Left: 2.563"
.head 6 -  Top: 0.323"
.head 6 -  Width:  2.788"
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
.head 5 -  Text Color: Midnight Blue
.head 5 -  Background Color: Gray
.head 5 -  Input Mask: Unformatted
.head 4 -  Message Actions
.head 3 +  Data Field: dfRootDesc
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
.head 6 -  Left: 5.35"
.head 6 -  Top: 0.323"
.head 6 -  Width:  2.388"
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
.head 5 -  Text Color: Midnight Blue
.head 5 -  Background Color: Gray
.head 5 -  Input Mask: Unformatted
.head 4 -  Message Actions
.head 3 -  Background Text: Allocated
.head 4 -  Resource Id: 1582
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class:
.head 4 -  Window Location and Size
.head 5 -  Left: 0.075"
.head 5 -  Top: 0.688"
.head 5 -  Width:  1.025"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 0.167"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? Yes
.head 4 -  Justify: Center
.head 4 -  Font Name: Default
.head 4 -  Font Size: Default
.head 4 -  Font Enhancement: Default
.head 4 -  Text Color: Midnight Blue
.head 4 -  Background Color: Dark Green
.head 3 +  Data Field: dfAllocFlag
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class:
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Data
.head 5 -  Maximum Data Length: 8
.head 5 -  Data Type: String
.head 5 -  Editable? Yes
.head 4 -  Display Settings
.head 5 -  Window Location and Size
.head 6 -  Left: 1.138"
.head 6 -  Top: 0.646"
.head 6 -  Width:  0.65"
.head 6 -  Width Editable? Yes
.head 6 -  Height: 0.25"
.head 6 -  Height Editable? Yes
.head 5 -  Visible? Yes
.head 5 -  Border? Yes
.head 5 -  Justify: Center
.head 5 -  Format: Uppercase
.head 5 -  Country: Default
.head 5 -  Font Name: Default
.head 5 -  Font Size: Default
.head 5 -  Font Enhancement: Default
.head 5 -  Text Color: Midnight Blue
.head 5 -  Background Color: Gray
.head 5 -  Input Mask: Unformatted
.head 4 +  Message Actions
.head 5 +  On SAM_Validate
.head 6 +  If SalIsNull( hWndItem ) OR dfAllocFlag = 'Y' OR dfAllocFlag = 'N'
.head 7 -  Return VALIDATE_OkClearFlag
.head 6 +  Else
.head 7 -  Return VALIDATE_Cancel
.head 3 -  Background Text: Available
.head 4 -  Resource Id: 1583
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class:
.head 4 -  Window Location and Size
.head 5 -  Left: 1.825"
.head 5 -  Top: 0.688"
.head 5 -  Width:  1.025"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 0.167"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? Yes
.head 4 -  Justify: Center
.head 4 -  Font Name: Default
.head 4 -  Font Size: Default
.head 4 -  Font Enhancement: Default
.head 4 -  Text Color: Midnight Blue
.head 4 -  Background Color: Dark Green
.head 3 +  Data Field: dfAvailable
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
.head 6 -  Left: 2.888"
.head 6 -  Top: 0.646"
.head 6 -  Width:  0.825"
.head 6 -  Width Editable? Yes
.head 6 -  Height: 0.25"
.head 6 -  Height Editable? Yes
.head 5 -  Visible? Yes
.head 5 -  Border? Yes
.head 5 -  Justify: Center
.head 5 -  Format: #0
.head 5 -  Country: Default
.head 5 -  Font Name: Default
.head 5 -  Font Size: Default
.head 5 -  Font Enhancement: Default
.head 5 -  Text Color: Default
.head 5 -  Background Color: Default
.head 5 -  Input Mask: Unformatted
.head 4 -  Message Actions
.head 3 -  Background Text: Substituted Orders Show in Purple
.head 4 -  Resource Id: 1584
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class:
.head 4 -  Window Location and Size
.head 5 -  Left: 4.225"
.head 5 -  Top: 0.677"
.head 5 -  Width:  3.05"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 0.167"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? Yes
.head 4 -  Justify: Center
.head 4 -  Font Name: Default
.head 4 -  Font Size: Default
.head 4 -  Font Enhancement: Default
.head 4 -  Text Color: Magenta
.head 4 -  Background Color: Light Green
.head 3 -  !
.head 3 +  Child Table: tblCustOrders
.head 4 -  Class Child Ref Key: 5
.head 4 -  Class ChildKey: 0
.head 4 -  Class: OurFrmWndWithChildTbl
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Display Settings
.head 5 -  Window Location and Size
.head 6 -  Left: -0.013"
.head 6 -  Top: 0.958"
.head 6 -  Width:  9.725"
.head 6 -  Width Editable? Class Default
.head 6 -  Height: 3.615"
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
.head 4 +  Contents
.head 5 +  Column: colRowId
.head 6 -  Class Child Ref Key: 6
.head 6 -  Class ChildKey: 0
.head 6 -  Class: OurFrmWndWithChildTbl
.head 6 -  Property Template:
.head 6 -  Class DLL Name:
.head 6 -  Title:
.head 6 -  Visible? Class Default
.head 6 -  Editable? Class Default
.head 6 -  Maximum Data Length: Class Default
.head 6 -  Data Type: Class Default
.head 6 -  Justify: Class Default
.head 6 -  Width:  Class Default
.head 6 -  Width Editable? Class Default
.head 6 -  Format: Class Default
.head 6 -  Country: Class Default
.head 6 -  Input Mask: Class Default
.head 6 -  Cell Options
.head 7 -  Cell Type? Class Default
.head 7 -  Multiline Cell? Class Default
.head 7 -  Cell DropDownList
.head 8 -  Sorted? Class Default
.head 8 -  Vertical Scroll? Class Default
.head 8 -  Auto Drop Down? Class Default
.head 8 -  Allow Text Editing? Class Default
.head 7 -  Cell CheckBox
.head 8 -  Check Value:
.head 8 -  Uncheck Value:
.head 8 -  Ignore Case? Class Default
.head 6 -  List Values
.head 6 +  Message Actions
.head 7 +  On PAM_SETINSTANCEVARS
.head 8 -  Set colRowId.bPopulateColumn = FALSE
.head 5 +  Column: colCustNo
.head 6 -  Class Child Ref Key: 0
.head 6 -  Class ChildKey: 0
.head 6 -  Class: OurColumnClass
.head 6 -  Property Template:
.head 6 -  Class DLL Name:
.head 6 -  Title: Cust.No.
.head 6 -  Visible? Class Default
.head 6 -  Editable? No
.head 6 -  Maximum Data Length: Default
.head 6 -  Data Type: Number
.head 6 -  Justify: Class Default
.head 6 -  Width:  0.925"
.head 6 -  Width Editable? Class Default
.head 6 -  Format: Unformatted
.head 6 -  Country: Class Default
.head 6 -  Input Mask: Class Default
.head 6 -  Cell Options
.head 7 -  Cell Type? Class Default
.head 7 -  Multiline Cell? Class Default
.head 7 -  Cell DropDownList
.head 8 -  Sorted? Class Default
.head 8 -  Vertical Scroll? Class Default
.head 8 -  Auto Drop Down? Class Default
.head 8 -  Allow Text Editing? Class Default
.head 7 -  Cell CheckBox
.head 8 -  Check Value:
.head 8 -  Uncheck Value:
.head 8 -  Ignore Case? Class Default
.head 6 -  List Values
.head 6 +  Message Actions
.head 7 +  On PAM_SETINSTANCEVARS
.head 8 -  Set OurColumnClass.sSQLCOLNAME = ' CUSTOMER_ORDER.CUST_NO '
.head 8 -  Set OurColumnClass.bOrderBy = TRUE
.head 8 -  Set OurColumnClass.bInsert = FALSE
.head 8 -  Set OurColumnClass.bUpdate = FALSE
.head 7 +  On PAM_COPYROWINFOFROM
.head 8 -  Call SalTblFetchRow( hWndForm, lParam )
.head 8 -  Set nTemp = colCustNo
.head 7 +  On PAM_COPYROWINFOTO
.head 8 -  Call SalTblFetchRow( hWndForm, lParam )
.head 8 -  Set colCustNo = nTemp
.head 7 +  On PAM_SETFWDCOLUMNCOLOR
.head 8 -  ! wParam = back ground color
.head 8 -  ! lParam = text color
.head 8 +  If wParam != 0
.head 9 -  Call SalColorSet( hWndItem, COLOR_IndexWindow, wParam )
.head 8 +  If lParam != 0
.head 9 -  Call SalColorSet( hWndItem, COLOR_IndexCellText, lParam )
.head 8 -  Return TRUE
.head 5 +  Column: colOrdDateTime
.head 6 -  Class Child Ref Key: 0
.head 6 -  Class ChildKey: 0
.head 6 -  Class: OurColumnClass
.head 6 -  Property Template:
.head 6 -  Class DLL Name:
.head 6 -  Title:
.head 6 -  Visible? No
.head 6 -  Editable? Class Default
.head 6 -  Maximum Data Length: Class Default
.head 6 -  Data Type: Date/Time
.head 6 -  Justify: Class Default
.head 6 -  Width:  0.938"
.head 6 -  Width Editable? Class Default
.head 6 -  Format: Unformatted
.head 6 -  Country: Class Default
.head 6 -  Input Mask: Class Default
.head 6 -  Cell Options
.head 7 -  Cell Type? Class Default
.head 7 -  Multiline Cell? Class Default
.head 7 -  Cell DropDownList
.head 8 -  Sorted? Class Default
.head 8 -  Vertical Scroll? Class Default
.head 8 -  Auto Drop Down? Class Default
.head 8 -  Allow Text Editing? Class Default
.head 7 -  Cell CheckBox
.head 8 -  Check Value:
.head 8 -  Uncheck Value:
.head 8 -  Ignore Case? Class Default
.head 6 -  List Values
.head 6 +  Message Actions
.head 7 +  On PAM_SETINSTANCEVARS
.head 8 -  Set OurColumnClass.sSQLCOLNAME = ' CUSTOMER_ORDER.ORDER_DATE_TIME '
.head 8 -  Set OurColumnClass.bInsert = FALSE
.head 8 -  Set OurColumnClass.bUpdate = FALSE
.head 7 +  ! On PAM_COPYROWINFOFROM
.head 8 -    Call SalTblFetchRow( hWndForm, lParam )
.head 8 -    Set dtTemp = colOrdDateTime
.head 7 +  ! On PAM_COPYROWINFOTO
.head 8 -    Call SalTblFetchRow( hWndForm, lParam )
.head 8 -    Set colOrdDateTime = dtTemp
.head 5 +  Column: colCustName
.head 6 -  Class Child Ref Key: 0
.head 6 -  Class ChildKey: 0
.head 6 -  Class: OurColumnClass
.head 6 -  Property Template:
.head 6 -  Class DLL Name:
.head 6 -  Title: Customer Name
.head 6 -  Visible? Class Default
.head 6 -  Editable? No
.head 6 -  Maximum Data Length: Class Default
.head 6 -  Data Type: Class Default
.head 6 -  Justify: Class Default
.head 6 -  Width:  2.238"
.head 6 -  Width Editable? Class Default
.head 6 -  Format: Unformatted
.head 6 -  Country: Class Default
.head 6 -  Input Mask: Class Default
.head 6 -  Cell Options
.head 7 -  Cell Type? Class Default
.head 7 -  Multiline Cell? Class Default
.head 7 -  Cell DropDownList
.head 8 -  Sorted? Class Default
.head 8 -  Vertical Scroll? Class Default
.head 8 -  Auto Drop Down? Class Default
.head 8 -  Allow Text Editing? Class Default
.head 7 -  Cell CheckBox
.head 8 -  Check Value:
.head 8 -  Uncheck Value:
.head 8 -  Ignore Case? Class Default
.head 6 -  List Values
.head 6 +  Message Actions
.head 7 +  On PAM_SETINSTANCEVARS
.head 8 -  Set OurColumnClass.sSQLCOLNAME = ' CUSTOMER_MASTER.CUST_NAME '
.head 8 -  Set OurColumnClass.bOrderBy = TRUE
.head 8 -  Set OurColumnClass.bInsert = FALSE
.head 8 -  Set OurColumnClass.bUpdate = FALSE
.head 7 +  On PAM_COPYROWINFOFROM
.head 8 -  Call SalTblFetchRow( hWndForm, lParam )
.head 8 -  Set sTemp = colCustName
.head 7 +  On PAM_COPYROWINFOTO
.head 8 -  Call SalTblFetchRow( hWndForm, lParam )
.head 8 -  Set colCustName = sTemp
.head 7 +  On PAM_SETFWDCOLUMNCOLOR
.head 8 -  ! wParam = back ground color
.head 8 -  ! lParam = text color
.head 8 +  If wParam != 0
.head 9 -  Call SalColorSet( hWndItem, COLOR_IndexWindow, wParam )
.head 8 +  If lParam != 0
.head 9 -  Call SalColorSet( hWndItem, COLOR_IndexCellText, lParam )
.head 8 -  Return TRUE
.head 5 +  Column: colOrderDate
.head 6 -  Class Child Ref Key: 0
.head 6 -  Class ChildKey: 0
.head 6 -  Class: OurColumnClass
.head 6 -  Property Template:
.head 6 -  Class DLL Name:
.head 6 -  Title: Ord.Date
.head 6 -  Visible? Class Default
.head 6 -  Editable? No
.head 6 -  Maximum Data Length: Class Default
.head 6 -  Data Type: Date/Time
.head 6 -  Justify: Class Default
.head 6 -  Width:  1.263"
.head 6 -  Width Editable? Class Default
.head 6 -  Format: dd-MMM-yyyy
.head 6 -  Country: Class Default
.head 6 -  Input Mask: Class Default
.head 6 -  Cell Options
.head 7 -  Cell Type? Class Default
.head 7 -  Multiline Cell? Class Default
.head 7 -  Cell DropDownList
.head 8 -  Sorted? Class Default
.head 8 -  Vertical Scroll? Class Default
.head 8 -  Auto Drop Down? Class Default
.head 8 -  Allow Text Editing? Class Default
.head 7 -  Cell CheckBox
.head 8 -  Check Value:
.head 8 -  Uncheck Value:
.head 8 -  Ignore Case? Class Default
.head 6 -  List Values
.head 6 +  Message Actions
.head 7 +  On PAM_SETINSTANCEVARS
.head 8 -  Set OurColumnClass.sSQLCOLNAME = ' CUSTOMER_ORDER.ORD_DATE '
.head 8 -  Set OurColumnClass.bOrderBy = TRUE
.head 8 -  Set OurColumnClass.bUpdate = FALSE
.head 7 +  On PAM_COPYROWINFOFROM
.head 8 -  Call SalTblFetchRow( hWndForm, lParam )
.head 8 -  Set dtTemp = colOrderDate
.head 7 +  On PAM_COPYROWINFOTO
.head 8 -  Call SalTblFetchRow( hWndForm, lParam )
.head 8 -  Set colOrderDate = dtTemp
.head 7 +  On PAM_SETFWDCOLUMNCOLOR
.head 8 -  ! wParam = back ground color
.head 8 -  ! lParam = text color
.head 8 +  If wParam != 0
.head 9 -  Call SalColorSet( hWndItem, COLOR_IndexWindow, wParam )
.head 8 +  If lParam != 0
.head 9 -  Call SalColorSet( hWndItem, COLOR_IndexCellText, lParam )
.head 8 -  Return TRUE
.head 5 +  Column: colOrdAmt
.head 6 -  Class Child Ref Key: 0
.head 6 -  Class ChildKey: 0
.head 6 -  Class: OurColumnClass
.head 6 -  Property Template:
.head 6 -  Class DLL Name:
.head 6 -  Title: Ord.Amt
.head 6 -  Visible? Class Default
.head 6 -  Editable? No
.head 6 -  Maximum Data Length: Class Default
.head 6 -  Data Type: Number
.head 6 -  Justify: Class Default
.head 6 -  Width:  0.738"
.head 6 -  Width Editable? Class Default
.head 6 -  Format: #0
.head 6 -  Country: Class Default
.head 6 -  Input Mask: Class Default
.head 6 -  Cell Options
.head 7 -  Cell Type? Class Default
.head 7 -  Multiline Cell? Class Default
.head 7 -  Cell DropDownList
.head 8 -  Sorted? Class Default
.head 8 -  Vertical Scroll? Class Default
.head 8 -  Auto Drop Down? Class Default
.head 8 -  Allow Text Editing? Class Default
.head 7 -  Cell CheckBox
.head 8 -  Check Value:
.head 8 -  Uncheck Value:
.head 8 -  Ignore Case? Class Default
.head 6 -  List Values
.head 6 +  Message Actions
.head 7 +  On PAM_SETINSTANCEVARS
.head 8 -  Set OurColumnClass.sSQLCOLNAME = ' CUSTOMER_ORDER.ORDERED_AMOUNT '
.head 8 -  Set OurColumnClass.bOrderBy = TRUE
.head 8 -  Set OurColumnClass.bInsert = FALSE
.head 8 -  Set OurColumnClass.bUpdate = FALSE
.head 7 +  ! On PAM_COPYROWINFOFROM
.head 8 -    Call SalTblFetchRow( hWndForm, lParam )
.head 8 -    Set nTemp = colOrdAmt
.head 7 +  ! On PAM_COPYROWINFOTO
.head 8 -    Call SalTblFetchRow( hWndForm, lParam )
.head 8 -    Set colOrdAmt = nTemp
.head 7 +  On PAM_SETFWDCOLUMNCOLOR
.head 8 -  ! wParam = back ground color
.head 8 -  ! lParam = text color
.head 8 +  If wParam != 0
.head 9 -  Call SalColorSet( hWndItem, COLOR_IndexWindow, wParam )
.head 8 +  If lParam != 0
.head 9 -  Call SalColorSet( hWndItem, COLOR_IndexCellText, lParam )
.head 8 -  Return TRUE
.head 5 +  Column: colConfAmt
.head 6 -  Class Child Ref Key: 0
.head 6 -  Class ChildKey: 0
.head 6 -  Class: OurColumnClass
.head 6 -  Property Template:
.head 6 -  Class DLL Name:
.head 6 -  Title: Conf.Amt
.head 6 -  Visible? Class Default
.head 6 -  Editable? Class Default
.head 6 -  Maximum Data Length: Class Default
.head 6 -  Data Type: Number
.head 6 -  Justify: Class Default
.head 6 -  Width:  0.863"
.head 6 -  Width Editable? Class Default
.head 6 -  Format: #0
.head 6 -  Country: Class Default
.head 6 -  Input Mask: Class Default
.head 6 -  Cell Options
.head 7 -  Cell Type? Class Default
.head 7 -  Multiline Cell? Class Default
.head 7 -  Cell DropDownList
.head 8 -  Sorted? Class Default
.head 8 -  Vertical Scroll? Class Default
.head 8 -  Auto Drop Down? Class Default
.head 8 -  Allow Text Editing? Class Default
.head 7 -  Cell CheckBox
.head 8 -  Check Value:
.head 8 -  Uncheck Value:
.head 8 -  Ignore Case? Class Default
.head 6 -  List Values
.head 6 +  Message Actions
.head 7 +  On PAM_SETINSTANCEVARS
.head 8 -  Set OurColumnClass.sSQLCOLNAME = ' CUSTOMER_ORDER.CONF_AMT '
.head 8 -  Set OurColumnClass.bOrderBy = TRUE
.head 8 -  Set OurColumnClass.bInsert = FALSE
.head 8 -  Set OurColumnClass.bUpdate = FALSE
.head 7 +  On PAM_EDITCHECK
.head 8 +  If colPullFlag = 'Y'
.head 9 -  Return FALSE
.head 8 +  Else
.head 9 -  Return TRUE
.head 7 +  On SAM_AnyEdit
.head 8 +  If SalIsNull( hWndItem )
.head 9 -  Set colAllocFlag = 'N'
.head 8 +  Else
.head 9 -  Set colAllocFlag = 'Y'
.head 7 +  On SAM_Validate
.head 8 +  If colItemNo = frmAllocationsStage21.nItemNo OR colSubsItemNo = frmAllocationsStage21.nItemNo
.head 9 +  If SalIsNull( colPrevConfAmt )
.head 10 -  Set frmAllocationsStage21.dfAvailable = frmAllocationsStage21.dfAvailable + colOrdAmt
.head 9 +  Else
.head 10 -  Set frmAllocationsStage21.dfAvailable = frmAllocationsStage21.dfAvailable + colPrevConfAmt
.head 9 -  !
.head 9 +  If SalIsNull( colConfAmt )
.head 10 -  Set frmAllocationsStage21.dfAvailable = frmAllocationsStage21.dfAvailable - colOrdAmt
.head 9 +  Else
.head 10 -  Set frmAllocationsStage21.dfAvailable = frmAllocationsStage21.dfAvailable - colConfAmt
.head 9 -  !
.head 9 -  Set colPrevConfAmt = colConfAmt
.head 8 -  Call SalSendClassMessage( SAM_Validate, wParam, lParam )
.head 8 -  Return VALIDATE_OkClearFlag
.head 7 +  On PAM_SETFWDCOLUMNCOLOR
.head 8 -  ! wParam = back ground color
.head 8 -  ! lParam = text color
.head 8 +  If wParam != 0
.head 9 -  Call SalColorSet( hWndItem, COLOR_IndexWindow, wParam )
.head 8 +  If lParam != 0
.head 9 -  Call SalColorSet( hWndItem, COLOR_IndexCellText, lParam )
.head 8 -  Return TRUE
.head 5 +  Column: colPrevConfAmt
.head 6 -  Class Child Ref Key: 0
.head 6 -  Class ChildKey: 0
.head 6 -  Class: OurColumnClass
.head 6 -  Property Template:
.head 6 -  Class DLL Name:
.head 6 -  Title:
.head 6 -  Visible? No
.head 6 -  Editable? Class Default
.head 6 -  Maximum Data Length: Class Default
.head 6 -  Data Type: Number
.head 6 -  Justify: Class Default
.head 6 -  Width:  0.863"
.head 6 -  Width Editable? Class Default
.head 6 -  Format: #0
.head 6 -  Country: Class Default
.head 6 -  Input Mask: Class Default
.head 6 -  Cell Options
.head 7 -  Cell Type? Class Default
.head 7 -  Multiline Cell? Class Default
.head 7 -  Cell DropDownList
.head 8 -  Sorted? Class Default
.head 8 -  Vertical Scroll? Class Default
.head 8 -  Auto Drop Down? Class Default
.head 8 -  Allow Text Editing? Class Default
.head 7 -  Cell CheckBox
.head 8 -  Check Value:
.head 8 -  Uncheck Value:
.head 8 -  Ignore Case? Class Default
.head 6 -  List Values
.head 6 +  Message Actions
.head 7 +  On PAM_SETINSTANCEVARS
.head 8 -  Set OurColumnClass.sSQLCOLNAME = ' CUSTOMER_ORDER.CONF_AMT '
.head 8 -  Set OurColumnClass.bInsert = FALSE
.head 8 -  Set OurColumnClass.bUpdate = FALSE
.head 7 +  ! On PAM_COPYROWINFOFROM
.head 8 -    Call SalTblFetchRow( hWndForm, lParam )
.head 8 -    Set nTemp = colPrevConfAmt
.head 7 +  ! On PAM_COPYROWINFOTO
.head 8 -    Call SalTblFetchRow( hWndForm, lParam )
.head 8 -    Set colPrevConfAmt = nTemp
.head 5 +  Column: colAllocFlag
.head 6 -  Class Child Ref Key: 0
.head 6 -  Class ChildKey: 0
.head 6 -  Class: OurColumnClass
.head 6 -  Property Template:
.head 6 -  Class DLL Name:
.head 6 -  Title: Alloc.
.head 6 -  Visible? Class Default
.head 6 -  Editable? No
.head 6 -  Maximum Data Length: 1
.head 6 -  Data Type: Class Default
.head 6 -  Justify: Center
.head 6 -  Width:  0.475"
.head 6 -  Width Editable? Class Default
.head 6 -  Format: Uppercase
.head 6 -  Country: Class Default
.head 6 -  Input Mask: Class Default
.head 6 -  Cell Options
.head 7 -  Cell Type? Check Box
.head 7 -  Multiline Cell? Class Default
.head 7 -  Cell DropDownList
.head 8 -  Sorted? Class Default
.head 8 -  Vertical Scroll? Class Default
.head 8 -  Auto Drop Down? Class Default
.head 8 -  Allow Text Editing? Class Default
.head 7 -  Cell CheckBox
.head 8 -  Check Value: Y
.head 8 -  Uncheck Value: N
.head 8 -  Ignore Case? Class Default
.head 6 -  List Values
.head 6 +  Message Actions
.head 7 +  On PAM_SETINSTANCEVARS
.head 8 -  Set OurColumnClass.sSQLCOLNAME = ' CUSTOMER_ORDER.ALLOC_FLAG '
.head 8 -  Set OurColumnClass.bOrderBy = TRUE
.head 8 -  Set OurColumnClass.bInsert = FALSE
.head 8 -  Set OurColumnClass.bUpdate = FALSE
.head 7 +  ! On PAM_COPYROWINFOFROM
.head 8 -    Call SalTblFetchRow( hWndForm, lParam )
.head 8 -    Set sTemp = colAllocFlag
.head 7 +  ! On PAM_COPYROWINFOTO
.head 8 -    Call SalTblFetchRow( hWndForm, lParam )
.head 8 -    Set colAllocFlag = sTemp
.head 7 +  On PAM_SETFWDCOLUMNCOLOR
.head 8 -  ! wParam = back ground color
.head 8 -  ! lParam = text color
.head 8 +  If wParam != 0
.head 9 -  Call SalColorSet( hWndItem, COLOR_IndexWindow, wParam )
.head 8 +  If lParam != 0
.head 9 -  Call SalColorSet( hWndItem, COLOR_IndexCellText, lParam )
.head 8 -  Return TRUE
.head 5 +  Column: colPullFlag
.head 6 -  Class Child Ref Key: 0
.head 6 -  Class ChildKey: 0
.head 6 -  Class: OurColumnClass
.head 6 -  Property Template:
.head 6 -  Class DLL Name:
.head 6 -  Title: Pulled
.head 6 -  Visible? Class Default
.head 6 -  Editable? No
.head 6 -  Maximum Data Length: 1
.head 6 -  Data Type: Class Default
.head 6 -  Justify: Center
.head 6 -  Width:  0.525"
.head 6 -  Width Editable? Class Default
.head 6 -  Format: Uppercase
.head 6 -  Country: Class Default
.head 6 -  Input Mask: Class Default
.head 6 -  Cell Options
.head 7 -  Cell Type? Check Box
.head 7 -  Multiline Cell? Class Default
.head 7 -  Cell DropDownList
.head 8 -  Sorted? Class Default
.head 8 -  Vertical Scroll? Class Default
.head 8 -  Auto Drop Down? Class Default
.head 8 -  Allow Text Editing? Class Default
.head 7 -  Cell CheckBox
.head 8 -  Check Value: Y
.head 8 -  Uncheck Value: N
.head 8 -  Ignore Case? Class Default
.head 6 -  List Values
.head 6 +  Message Actions
.head 7 +  On PAM_SETINSTANCEVARS
.head 8 -  Set OurColumnClass.sSQLCOLNAME = ' CUSTOMER_ORDER.PULL_SHEET_ISSUED '
.head 8 -  Set OurColumnClass.bOrderBy = TRUE
.head 8 -  Set OurColumnClass.bUpdate = FALSE
.head 7 +  On PAM_COPYROWINFOFROM
.head 8 -  Call SalTblFetchRow( hWndForm, lParam )
.head 8 -  Set sTemp = colPullFlag
.head 7 +  On PAM_COPYROWINFOTO
.head 8 -  Call SalTblFetchRow( hWndForm, lParam )
.head 8 -  Set colPullFlag = sTemp
.head 7 +  On PAM_SETFWDCOLUMNCOLOR
.head 8 -  ! wParam = back ground color
.head 8 -  ! lParam = text color
.head 8 +  If wParam != 0
.head 9 -  Call SalColorSet( hWndItem, COLOR_IndexWindow, wParam )
.head 8 +  If lParam != 0
.head 9 -  Call SalColorSet( hWndItem, COLOR_IndexCellText, lParam )
.head 8 -  Return TRUE
.head 5 +  Column: colConfFlag
.head 6 -  Class Child Ref Key: 0
.head 6 -  Class ChildKey: 0
.head 6 -  Class: OurColumnClass
.head 6 -  Property Template:
.head 6 -  Class DLL Name:
.head 6 -  Title: Conf.Flag
.head 6 -  Visible? Class Default
.head 6 -  Editable? Class Default
.head 6 -  Maximum Data Length: 1
.head 6 -  Data Type: Class Default
.head 6 -  Justify: Center
.head 6 -  Width:  0.475"
.head 6 -  Width Editable? Class Default
.head 6 -  Format: Uppercase
.head 6 -  Country: Class Default
.head 6 -  Input Mask: Class Default
.head 6 -  Cell Options
.head 7 -  Cell Type? Check Box
.head 7 -  Multiline Cell? Class Default
.head 7 -  Cell DropDownList
.head 8 -  Sorted? Class Default
.head 8 -  Vertical Scroll? Class Default
.head 8 -  Auto Drop Down? Class Default
.head 8 -  Allow Text Editing? Class Default
.head 7 -  Cell CheckBox
.head 8 -  Check Value: Y
.head 8 -  Uncheck Value: N
.head 8 -  Ignore Case? Class Default
.head 6 -  List Values
.head 6 +  Message Actions
.head 7 +  On PAM_SETINSTANCEVARS
.head 8 -  Set OurColumnClass.sSQLCOLNAME = ' CUSTOMER_ORDER.CONF_FLAG '
.head 7 +  On PAM_DATAVAL
.head 8 +  If colConfFlag = 'Y' OR colConfFlag = 'N'
.head 9 -  Return TRUE
.head 8 +  Else
.head 9 -  Call ErrorMessage( 'Please use Y or N for the Confirmation Flag only!', hWndForm, lParam )
.head 9 -  Return FALSE
.head 7 +  On PAM_COPYROWINFOFROM
.head 8 -  Call SalTblFetchRow( hWndForm, lParam )
.head 8 -  Set sTemp = colConfFlag
.head 7 +  On PAM_COPYROWINFOTO
.head 8 -  Call SalTblFetchRow( hWndForm, lParam )
.head 8 -  Set colConfFlag = sTemp
.head 7 +  On PAM_SETFWDCOLUMNCOLOR
.head 8 -  ! wParam = back ground color
.head 8 -  ! lParam = text color
.head 8 +  If wParam != 0
.head 9 -  Call SalColorSet( hWndItem, COLOR_IndexWindow, wParam )
.head 8 +  If lParam != 0
.head 9 -  Call SalColorSet( hWndItem, COLOR_IndexCellText, lParam )
.head 8 -  Return TRUE
.head 5 +  Column: colSubsOkFlag
.head 6 -  Class Child Ref Key: 0
.head 6 -  Class ChildKey: 0
.head 6 -  Class: OurColumnClass
.head 6 -  Property Template:
.head 6 -  Class DLL Name:
.head 6 -  Title: Subs.Ok
.head 6 -  Visible? No
.head 6 -  Editable? Class Default
.head 6 -  Maximum Data Length: 1
.head 6 -  Data Type: Class Default
.head 6 -  Justify: Class Default
.head 6 -  Width:  0.938"
.head 6 -  Width Editable? Class Default
.head 6 -  Format: Uppercase
.head 6 -  Country: Class Default
.head 6 -  Input Mask: Class Default
.head 6 -  Cell Options
.head 7 -  Cell Type? Class Default
.head 7 -  Multiline Cell? Class Default
.head 7 -  Cell DropDownList
.head 8 -  Sorted? Class Default
.head 8 -  Vertical Scroll? Class Default
.head 8 -  Auto Drop Down? Class Default
.head 8 -  Allow Text Editing? Class Default
.head 7 -  Cell CheckBox
.head 8 -  Check Value:
.head 8 -  Uncheck Value:
.head 8 -  Ignore Case? Class Default
.head 6 -  List Values
.head 6 +  Message Actions
.head 7 +  On PAM_SETINSTANCEVARS
.head 8 -  Set OurColumnClass.sSQLCOLNAME = ' CUSTOMER_ORDER.SUBS_OK_FLAG '
.head 8 -  Set OurColumnClass.bOrderBy = TRUE
.head 8 -  Set OurColumnClass.bInsert = FALSE
.head 8 -  Set OurColumnClass.bUpdate = FALSE
.head 7 +  On PAM_COPYROWINFOFROM
.head 8 -  Call SalTblFetchRow( hWndForm, lParam )
.head 8 -  Set sTemp = colSubsOkFlag
.head 7 +  On PAM_COPYROWINFOTO
.head 8 -  Call SalTblFetchRow( hWndForm, lParam )
.head 8 -  Set colSubsOkFlag = sTemp
.head 7 +  On PAM_SETFWDCOLUMNCOLOR
.head 8 -  ! wParam = back ground color
.head 8 -  ! lParam = text color
.head 8 +  If wParam != 0
.head 9 -  Call SalColorSet( hWndItem, COLOR_IndexWindow, wParam )
.head 8 +  If lParam != 0
.head 9 -  Call SalColorSet( hWndItem, COLOR_IndexCellText, lParam )
.head 8 -  Return TRUE
.head 5 +  Column: colOrderBookNo
.head 6 -  Class Child Ref Key: 0
.head 6 -  Class ChildKey: 0
.head 6 -  Class: OurColumnClass
.head 6 -  Property Template:
.head 6 -  Class DLL Name:
.head 6 -  Title: Ord. Book No
.head 6 -  Visible? Class Default
.head 6 -  Editable? No
.head 6 -  Maximum Data Length: Class Default
.head 6 -  Data Type: String
.head 6 -  Justify: Class Default
.head 6 -  Width:  1.263"
.head 6 -  Width Editable? Class Default
.head 6 -  Format: Unformatted
.head 6 -  Country: Class Default
.head 6 -  Input Mask: Class Default
.head 6 -  Cell Options
.head 7 -  Cell Type? Class Default
.head 7 -  Multiline Cell? Class Default
.head 7 -  Cell DropDownList
.head 8 -  Sorted? Class Default
.head 8 -  Vertical Scroll? Class Default
.head 8 -  Auto Drop Down? Class Default
.head 8 -  Allow Text Editing? Class Default
.head 7 -  Cell CheckBox
.head 8 -  Check Value:
.head 8 -  Uncheck Value:
.head 8 -  Ignore Case? Class Default
.head 6 -  List Values
.head 6 +  Message Actions
.head 7 +  On PAM_SETINSTANCEVARS
.head 8 -  Set OurColumnClass.sSQLCOLNAME = ' CUSTOMER_ORDER.ORDER_BOOK_NO '
.head 8 -  Set OurColumnClass.bOrderBy = TRUE
.head 8 -  Set OurColumnClass.bUpdate = FALSE
.head 7 +  On PAM_COPYROWINFOFROM
.head 8 -  Call SalTblFetchRow( hWndForm, lParam )
.head 8 -  Set sTempOrderBookNo = colOrderBookNo
.head 7 +  On PAM_COPYROWINFOTO
.head 8 -  Call SalTblFetchRow( hWndForm, lParam )
.head 8 -  Set colOrderBookNo = sTempOrderBookNo
.head 7 +  On PAM_SETFWDCOLUMNCOLOR
.head 8 -  ! wParam = back ground color
.head 8 -  ! lParam = text color
.head 8 +  If wParam != 0
.head 9 -  Call SalColorSet( hWndItem, COLOR_IndexWindow, wParam )
.head 8 +  If lParam != 0
.head 9 -  Call SalColorSet( hWndItem, COLOR_IndexCellText, lParam )
.head 8 -  Return TRUE
.head 5 +  Column: colPurchaseOrderNo
.head 6 -  Class Child Ref Key: 0
.head 6 -  Class ChildKey: 0
.head 6 -  Class: OurColumnClass
.head 6 -  Property Template:
.head 6 -  Class DLL Name:
.head 6 -  Title: Purch.Ord.No
.head 6 -  Visible? Class Default
.head 6 -  Editable? No
.head 6 -  Maximum Data Length: Class Default
.head 6 -  Data Type: String
.head 6 -  Justify: Class Default
.head 6 -  Width:  1.263"
.head 6 -  Width Editable? Class Default
.head 6 -  Format: Unformatted
.head 6 -  Country: Class Default
.head 6 -  Input Mask: Class Default
.head 6 -  Cell Options
.head 7 -  Cell Type? Class Default
.head 7 -  Multiline Cell? Class Default
.head 7 -  Cell DropDownList
.head 8 -  Sorted? Class Default
.head 8 -  Vertical Scroll? Class Default
.head 8 -  Auto Drop Down? Class Default
.head 8 -  Allow Text Editing? Class Default
.head 7 -  Cell CheckBox
.head 8 -  Check Value:
.head 8 -  Uncheck Value:
.head 8 -  Ignore Case? Class Default
.head 6 -  List Values
.head 6 +  Message Actions
.head 7 +  On PAM_SETINSTANCEVARS
.head 8 -  Set OurColumnClass.sSQLCOLNAME = ' CUSTOMER_ORDER.PURCHASE_ORDER_NO '
.head 8 -  Set OurColumnClass.bOrderBy = FALSE
.head 8 -  Set OurColumnClass.bUpdate = FALSE
.head 7 +  On PAM_COPYROWINFOFROM
.head 8 -  Call SalTblFetchRow( hWndForm, lParam )
.head 8 -  Set sTempPurchOrderNo = colPurchaseOrderNo
.head 7 +  On PAM_COPYROWINFOTO
.head 8 -  Call SalTblFetchRow( hWndForm, lParam )
.head 8 -  Set colPurchaseOrderNo = sTempPurchOrderNo
.head 7 +  On PAM_SETFWDCOLUMNCOLOR
.head 8 -  ! wParam = back ground color
.head 8 -  ! lParam = text color
.head 8 +  If wParam != 0
.head 9 -  Call SalColorSet( hWndItem, COLOR_IndexWindow, wParam )
.head 8 +  If lParam != 0
.head 9 -  Call SalColorSet( hWndItem, COLOR_IndexCellText, lParam )
.head 8 -  Return TRUE
.head 5 +  Column: colSaleCat
.head 6 -  Class Child Ref Key: 0
.head 6 -  Class ChildKey: 0
.head 6 -  Class: OurColumnClass
.head 6 -  Property Template:
.head 6 -  Class DLL Name:
.head 6 -  Title: Sale Cat.
.head 6 -  Visible? Class Default
.head 6 -  Editable? No
.head 6 -  Maximum Data Length: Class Default
.head 6 -  Data Type: Class Default
.head 6 -  Justify: Center
.head 6 -  Width:  0.788"
.head 6 -  Width Editable? Class Default
.head 6 -  Format: Uppercase
.head 6 -  Country: Class Default
.head 6 -  Input Mask: Class Default
.head 6 -  Cell Options
.head 7 -  Cell Type? Class Default
.head 7 -  Multiline Cell? Class Default
.head 7 -  Cell DropDownList
.head 8 -  Sorted? Class Default
.head 8 -  Vertical Scroll? Class Default
.head 8 -  Auto Drop Down? Class Default
.head 8 -  Allow Text Editing? Class Default
.head 7 -  Cell CheckBox
.head 8 -  Check Value:
.head 8 -  Uncheck Value:
.head 8 -  Ignore Case? Class Default
.head 6 -  List Values
.head 6 +  Message Actions
.head 7 +  On PAM_SETINSTANCEVARS
.head 8 -  Set OurColumnClass.sSQLCOLNAME = ' CUSTOMER_ORDER.SALE_CAT '
.head 8 -  Set OurColumnClass.bOrderBy = TRUE
.head 8 -  Set OurColumnClass.bInsert = FALSE
.head 8 -  Set OurColumnClass.bUpdate = FALSE
.head 7 +  On PAM_COPYROWINFOFROM
.head 8 -  Call SalTblFetchRow( hWndForm, lParam )
.head 8 -  Set sTemp = colSaleCat
.head 7 +  On PAM_COPYROWINFOTO
.head 8 -  Call SalTblFetchRow( hWndForm, lParam )
.head 8 -  Set colSaleCat = sTemp
.head 7 +  On PAM_SETFWDCOLUMNCOLOR
.head 8 -  ! wParam = back ground color
.head 8 -  ! lParam = text color
.head 8 +  If wParam != 0
.head 9 -  Call SalColorSet( hWndItem, COLOR_IndexWindow, wParam )
.head 8 +  If lParam != 0
.head 9 -  Call SalColorSet( hWndItem, COLOR_IndexCellText, lParam )
.head 8 -  Return TRUE
.head 5 +  Column: colYear
.head 6 -  Class Child Ref Key: 0
.head 6 -  Class ChildKey: 0
.head 6 -  Class: OurColumnClass
.head 6 -  Property Template:
.head 6 -  Class DLL Name:
.head 6 -  Title: Year
.head 6 -  Visible? No
.head 6 -  Editable? Class Default
.head 6 -  Maximum Data Length: Class Default
.head 6 -  Data Type: Number
.head 6 -  Justify: Class Default
.head 6 -  Width:  0.938"
.head 6 -  Width Editable? Class Default
.head 6 -  Format: Unformatted
.head 6 -  Country: Class Default
.head 6 -  Input Mask: Class Default
.head 6 -  Cell Options
.head 7 -  Cell Type? Class Default
.head 7 -  Multiline Cell? Class Default
.head 7 -  Cell DropDownList
.head 8 -  Sorted? Class Default
.head 8 -  Vertical Scroll? Class Default
.head 8 -  Auto Drop Down? Class Default
.head 8 -  Allow Text Editing? Class Default
.head 7 -  Cell CheckBox
.head 8 -  Check Value:
.head 8 -  Uncheck Value:
.head 8 -  Ignore Case? Class Default
.head 6 -  List Values
.head 6 +  Message Actions
.head 7 +  On PAM_SETINSTANCEVARS
.head 8 -  Set OurColumnClass.sSQLCOLNAME = ' CUSTOMER_ORDER.YEAR_OF_SALE '
.head 8 -  Set OurColumnClass.bInsert = FALSE
.head 8 -  Set OurColumnClass.bUpdate = FALSE
.head 7 +  ! On PAM_COPYROWINFOFROM
.head 8 -    Call SalTblFetchRow( hWndForm, lParam )
.head 8 -    Set nTemp = colYear
.head 7 +  ! On PAM_COPYROWINFOTO
.head 8 -    Call SalTblFetchRow( hWndForm, lParam )
.head 8 -    Set colYear = nTemp
.head 5 +  Column: colItemNo
.head 6 -  Class Child Ref Key: 0
.head 6 -  Class ChildKey: 0
.head 6 -  Class: OurColumnClass
.head 6 -  Property Template:
.head 6 -  Class DLL Name:
.head 6 -  Title: ItemNo
.head 6 -  Visible? No
.head 6 -  Editable? Class Default
.head 6 -  Maximum Data Length: Class Default
.head 6 -  Data Type: Number
.head 6 -  Justify: Class Default
.head 6 -  Width:  0.938"
.head 6 -  Width Editable? Class Default
.head 6 -  Format: Unformatted
.head 6 -  Country: Class Default
.head 6 -  Input Mask: Class Default
.head 6 -  Cell Options
.head 7 -  Cell Type? Class Default
.head 7 -  Multiline Cell? Class Default
.head 7 -  Cell DropDownList
.head 8 -  Sorted? Class Default
.head 8 -  Vertical Scroll? Class Default
.head 8 -  Auto Drop Down? Class Default
.head 8 -  Allow Text Editing? Class Default
.head 7 -  Cell CheckBox
.head 8 -  Check Value:
.head 8 -  Uncheck Value:
.head 8 -  Ignore Case? Class Default
.head 6 -  List Values
.head 6 +  Message Actions
.head 7 +  On PAM_SETINSTANCEVARS
.head 8 -  Set OurColumnClass.sSQLCOLNAME = ' CUSTOMER_ORDER.STOCK_ITEM_NO '
.head 8 -  Set OurColumnClass.bInsert = FALSE
.head 8 -  Set OurColumnClass.bUpdate = FALSE
.head 7 +  On PAM_DATAVAL
.head 8 +  If SalIsNull( colItemNo )
.head 9 -  Call ErrorMessage( 'Please select a stock item first!', hWndForm, lParam )
.head 9 -  Return FALSE
.head 8 +  Else
.head 9 -  Return TRUE
.head 7 +  On PAM_ALLOCLOOKUPITEM
.head 8 -  ! Call PopNumber( colBatchLocationId, TRUE )
.head 8 -  ! Call PopNumber( colBatchYearOfSale, TRUE )
.head 8 -  ! Call PopString( colTreeType, TRUE )
.head 8 -  ! Call PopString( sLookUpCultId, TRUE )
.head 8 -  ! Call PopString( colCultDesc, TRUE )
.head 8 -  ! Call PopString( sLookUpRootId, TRUE )
.head 8 -  ! Call PopString( colRootDesc, TRUE )
.head 8 -  ! Call PopNumber( nLookUpYear, TRUE )
.head 8 -  ! Call PopNumber( nLookUpItemNo, TRUE )
.head 8 -  !
.head 8 -  Call PopNumber( nLookUpBatchLocationId, TRUE )
.head 8 -  Call PopNumber( nLookUpBatchYearOfSale, TRUE )
.head 8 -  Call PopString( sLookUpTreeType, TRUE )
.head 8 -  Call PopString( sLookUpTreeTypeDesc, TRUE )
.head 8 -  Call PopString( sLookUpCultId, TRUE )
.head 8 -  Call PopString( sLookUpCultDesc, TRUE )
.head 8 -  Call PopString( sLookUpRootId, TRUE )
.head 8 -  Call PopString( sLookUpRootDesc, TRUE )
.head 8 -  Call PopNumber( nLookUpYear, TRUE )
.head 8 -  Call PopNumber( nLookUpItemNo, TRUE )
.head 8 -  !
.head 8 +  If nLookUpYear != frmAllocationsStage21.nYear AND NOT nLookUpBatchLocationId > 0
.head 9 -  Call SalMessageBox( 'Cannot change to a different years stock item!  Selection canceled.', 'Warning', MB_Ok )
.head 9 -  Return FALSE
.head 8 -  Set colYear = nLookUpYear
.head 8 -  !
.head 8 -  Set colBatchLocationId = nLookUpBatchLocationId
.head 8 -  Set colBatchYearOfSale = nLookUpBatchYearOfSale
.head 8 -  Set colTreeType = sLookUpTreeType
.head 8 -  Set colCultDesc = sLookUpCultDesc
.head 8 -  Set colRootDesc = sLookUpRootDesc
.head 8 -  !
.head 8 +  If bChangeSubItem
.head 9 +  If SalIsNull( colSubsItemNo )
.head 10 -  Call SalMessageBox( 'Cannot change a substitute for a item thats not a generic!  Selection canceled.', 'Warning', MB_Ok )
.head 9 +  Else
.head 10 -  Call GetGenericStockItemFlag( nLookUpItemNo, sLookUpGenFlag, SH_cls_Execute )
.head 10 +  If sLookUpGenFlag = 'Y'
.head 11 -  Call SalMessageBox( 'Cannot change a substitute item with a generic stock item!  Selection canceled.', 'Warning', MB_Ok )
.head 10 +  Else
.head 11 -  Set colSubsItemNo = nLookUpItemNo
.head 11 -  Call SalSetFieldEdit( colSubsItemNo, TRUE )
.head 8 +  Else
.head 9 -  Set colItemNo = nLookUpItemNo
.head 9 -  Call SalSetFieldEdit( hWndItem, TRUE )
.head 8 -  Call SalSendMsg( hWndForm, PAM_SETROWCOLOR, 0, lParam )
.head 8 -  !
.head 8 +  If SalIsNull( colConfAmt )
.head 9 -  Set frmAllocationsStage21.dfAvailable = frmAllocationsStage21.dfAvailable + colOrdAmt
.head 8 +  Else
.head 9 -  Set frmAllocationsStage21.dfAvailable = frmAllocationsStage21.dfAvailable + colConfAmt
.head 8 +  If colBatchLocationId > 0
.head 9 -  Set colFutureOrder = 'Y'
.head 9 -  Call SalSendMsg( hWndForm, PAM_GETFUTUREAVAILABLE, wParam, lParam )
.head 8 +  Else
.head 9 -  Set colFutureOrder = 'N'
.head 9 -  Set colSeason = ''
.head 9 -  Set colFutureOrderDate = DATETIME_Null
.head 9 -  Call SalSendMsgToChildren( hWndForm, PAM_SETFWDCOLUMNCOLOR, 0, COLOR_Default )
.head 8 -  Return TRUE
.head 7 +  ! On PAM_COPYROWINFOFROM
.head 8 -    Call SalTblFetchRow( hWndForm, lParam )
.head 8 -    Set nTemp = colItemNo
.head 7 +  ! On PAM_COPYROWINFOTO
.head 8 -    Call SalTblFetchRow( hWndForm, lParam )
.head 8 -    Set colItemNo = nTemp
.head 5 +  Column: colSubsItemNo
.head 6 -  Class Child Ref Key: 0
.head 6 -  Class ChildKey: 0
.head 6 -  Class: OurColumnClass
.head 6 -  Property Template:
.head 6 -  Class DLL Name:
.head 6 -  Title: SubsItemNo
.head 6 -  Visible? Yes
.head 6 -  Editable? Class Default
.head 6 -  Maximum Data Length: Class Default
.head 6 -  Data Type: Number
.head 6 -  Justify: Class Default
.head 6 -  Width:  0.938"
.head 6 -  Width Editable? Class Default
.head 6 -  Format: Unformatted
.head 6 -  Country: Class Default
.head 6 -  Input Mask: Class Default
.head 6 -  Cell Options
.head 7 -  Cell Type? Class Default
.head 7 -  Multiline Cell? Class Default
.head 7 -  Cell DropDownList
.head 8 -  Sorted? Class Default
.head 8 -  Vertical Scroll? Class Default
.head 8 -  Auto Drop Down? Class Default
.head 8 -  Allow Text Editing? Class Default
.head 7 -  Cell CheckBox
.head 8 -  Check Value:
.head 8 -  Uncheck Value:
.head 8 -  Ignore Case? Class Default
.head 6 -  List Values
.head 6 +  Message Actions
.head 7 +  On PAM_SETINSTANCEVARS
.head 8 -  Set OurColumnClass.sSQLCOLNAME = ' CUSTOMER_ORDER.SUBS_ITEM_NO '
.head 8 -  Set OurColumnClass.bInsert = FALSE
.head 8 -  Set OurColumnClass.bUpdate = FALSE
.head 7 +  ! On PAM_COPYROWINFOFROM
.head 8 -    Call SalTblFetchRow( hWndForm, lParam )
.head 8 -    Set nTemp = colSubsItemNo
.head 7 +  ! On PAM_COPYROWINFOTO
.head 8 -    Call SalTblFetchRow( hWndForm, lParam )
.head 8 -    Set colSubsItemNo = nTemp
.head 5 -  !
.head 5 +  Column: colPrevItemNo
.head 6 -  Class Child Ref Key: 0
.head 6 -  Class ChildKey: 0
.head 6 -  Class: OurColumnClass
.head 6 -  Property Template:
.head 6 -  Class DLL Name:
.head 6 -  Title: ItemNo
.head 6 -  Visible? No
.head 6 -  Editable? Class Default
.head 6 -  Maximum Data Length: Class Default
.head 6 -  Data Type: Number
.head 6 -  Justify: Class Default
.head 6 -  Width:  0.938"
.head 6 -  Width Editable? Class Default
.head 6 -  Format: Unformatted
.head 6 -  Country: Class Default
.head 6 -  Input Mask: Class Default
.head 6 -  Cell Options
.head 7 -  Cell Type? Class Default
.head 7 -  Multiline Cell? Class Default
.head 7 -  Cell DropDownList
.head 8 -  Sorted? Class Default
.head 8 -  Vertical Scroll? Class Default
.head 8 -  Auto Drop Down? Class Default
.head 8 -  Allow Text Editing? Class Default
.head 7 -  Cell CheckBox
.head 8 -  Check Value:
.head 8 -  Uncheck Value:
.head 8 -  Ignore Case? Class Default
.head 6 -  List Values
.head 6 +  Message Actions
.head 7 +  On PAM_SETINSTANCEVARS
.head 8 -  Set OurColumnClass.sSQLCOLNAME = ' CUSTOMER_ORDER.STOCK_ITEM_NO '
.head 8 -  Set OurColumnClass.bInsert = FALSE
.head 8 -  Set OurColumnClass.bUpdate = FALSE
.head 7 +  ! On PAM_COPYROWINFOFROM
.head 8 -    Call SalTblFetchRow( hWndForm, lParam )
.head 8 -    Set nTemp = colPrevItemNo
.head 7 +  ! On PAM_COPYROWINFOTO
.head 8 -    Call SalTblFetchRow( hWndForm, lParam )
.head 8 -    Set colPrevItemNo = nTemp
.head 5 +  Column: colPrevSubsItemNo
.head 6 -  Class Child Ref Key: 0
.head 6 -  Class ChildKey: 0
.head 6 -  Class: OurColumnClass
.head 6 -  Property Template:
.head 6 -  Class DLL Name:
.head 6 -  Title: SubsItemNo
.head 6 -  Visible? No
.head 6 -  Editable? Class Default
.head 6 -  Maximum Data Length: Class Default
.head 6 -  Data Type: Number
.head 6 -  Justify: Class Default
.head 6 -  Width:  0.938"
.head 6 -  Width Editable? Class Default
.head 6 -  Format: Unformatted
.head 6 -  Country: Class Default
.head 6 -  Input Mask: Class Default
.head 6 -  Cell Options
.head 7 -  Cell Type? Class Default
.head 7 -  Multiline Cell? Class Default
.head 7 -  Cell DropDownList
.head 8 -  Sorted? Class Default
.head 8 -  Vertical Scroll? Class Default
.head 8 -  Auto Drop Down? Class Default
.head 8 -  Allow Text Editing? Class Default
.head 7 -  Cell CheckBox
.head 8 -  Check Value:
.head 8 -  Uncheck Value:
.head 8 -  Ignore Case? Class Default
.head 6 -  List Values
.head 6 +  Message Actions
.head 7 +  On PAM_SETINSTANCEVARS
.head 8 -  Set OurColumnClass.sSQLCOLNAME = ' CUSTOMER_ORDER.SUBS_ITEM_NO '
.head 8 -  Set OurColumnClass.bInsert = FALSE
.head 8 -  Set OurColumnClass.bUpdate = FALSE
.head 7 +  ! On PAM_COPYROWINFOFROM
.head 8 -    Call SalTblFetchRow( hWndForm, lParam )
.head 8 -    Set nTemp = colPrevSubsItemNo
.head 7 +  ! On PAM_COPYROWINFOTO
.head 8 -    Call SalTblFetchRow( hWndForm, lParam )
.head 8 -    Set colPrevSubsItemNo = nTemp
.head 5 -  !
.head 5 +  Column: colTreeType
.head 6 -  Class Child Ref Key: 0
.head 6 -  Class ChildKey: 0
.head 6 -  Class: OurColumnClass
.head 6 -  Property Template:
.head 6 -  Class DLL Name:
.head 6 -  Title: Tree Type
.head 6 -  Visible? Class Default
.head 6 -  Editable? No
.head 6 -  Maximum Data Length: Class Default
.head 6 -  Data Type: String
.head 6 -  Justify: Class Default
.head 6 -  Width:  0.913"
.head 6 -  Width Editable? Class Default
.head 6 -  Format: Unformatted
.head 6 -  Country: Class Default
.head 6 -  Input Mask: Class Default
.head 6 -  Cell Options
.head 7 -  Cell Type? Class Default
.head 7 -  Multiline Cell? Class Default
.head 7 -  Cell DropDownList
.head 8 -  Sorted? Class Default
.head 8 -  Vertical Scroll? Class Default
.head 8 -  Auto Drop Down? Class Default
.head 8 -  Allow Text Editing? Class Default
.head 7 -  Cell CheckBox
.head 8 -  Check Value:
.head 8 -  Uncheck Value:
.head 8 -  Ignore Case? Class Default
.head 6 -  List Values
.head 6 +  Message Actions
.head 7 +  On PAM_SETINSTANCEVARS
.head 8 -  Set OurColumnClass.bPopulateColumn = FALSE
.head 8 -  Set OurColumnClass.bInsert = FALSE
.head 8 -  Set OurColumnClass.bUpdate = FALSE
.head 7 +  ! On PAM_COPYROWINFOFROM
.head 8 -    Call SalTblFetchRow( hWndForm, lParam )
.head 8 -    Set sTemp = colTreeType
.head 7 +  ! On PAM_COPYROWINFOTO
.head 8 -    Call SalTblFetchRow( hWndForm, lParam )
.head 8 -    Set colTreeType = sTemp
.head 7 +  On PAM_SETFWDCOLUMNCOLOR
.head 8 -  ! wParam = back ground color
.head 8 -  ! lParam = text color
.head 8 +  If wParam != 0
.head 9 -  Call SalColorSet( hWndItem, COLOR_IndexWindow, wParam )
.head 8 +  If lParam != 0
.head 9 -  Call SalColorSet( hWndItem, COLOR_IndexCellText, lParam )
.head 8 -  Return TRUE
.head 5 +  Column: colCultDesc
.head 6 -  Class Child Ref Key: 0
.head 6 -  Class ChildKey: 0
.head 6 -  Class: OurColumnClass
.head 6 -  Property Template:
.head 6 -  Class DLL Name:
.head 6 -  Title: Cultivar Description
.head 6 -  Visible? Class Default
.head 6 -  Editable? No
.head 6 -  Maximum Data Length: Class Default
.head 6 -  Data Type: String
.head 6 -  Justify: Class Default
.head 6 -  Width:  3.138"
.head 6 -  Width Editable? Class Default
.head 6 -  Format: Unformatted
.head 6 -  Country: Class Default
.head 6 -  Input Mask: Class Default
.head 6 -  Cell Options
.head 7 -  Cell Type? Class Default
.head 7 -  Multiline Cell? Class Default
.head 7 -  Cell DropDownList
.head 8 -  Sorted? Class Default
.head 8 -  Vertical Scroll? Class Default
.head 8 -  Auto Drop Down? Class Default
.head 8 -  Allow Text Editing? Class Default
.head 7 -  Cell CheckBox
.head 8 -  Check Value:
.head 8 -  Uncheck Value:
.head 8 -  Ignore Case? Class Default
.head 6 -  List Values
.head 6 +  Message Actions
.head 7 +  On PAM_SETINSTANCEVARS
.head 8 -  Set OurColumnClass.bPopulateColumn = FALSE
.head 8 -  Set OurColumnClass.bInsert = FALSE
.head 8 -  Set OurColumnClass.bUpdate = FALSE
.head 7 +  ! On PAM_COPYROWINFOFROM
.head 8 -    Call SalTblFetchRow( hWndForm, lParam )
.head 8 -    Set sTemp = colCultDesc
.head 7 +  ! On PAM_COPYROWINFOTO
.head 8 -    Call SalTblFetchRow( hWndForm, lParam )
.head 8 -    Set colCultDesc = sTemp
.head 7 +  On PAM_SETFWDCOLUMNCOLOR
.head 8 -  ! wParam = back ground color
.head 8 -  ! lParam = text color
.head 8 +  If wParam != 0
.head 9 -  Call SalColorSet( hWndItem, COLOR_IndexWindow, wParam )
.head 8 +  If lParam != 0
.head 9 -  Call SalColorSet( hWndItem, COLOR_IndexCellText, lParam )
.head 8 -  Return TRUE
.head 5 +  Column: colRootDesc
.head 6 -  Class Child Ref Key: 0
.head 6 -  Class ChildKey: 0
.head 6 -  Class: OurColumnClass
.head 6 -  Property Template:
.head 6 -  Class DLL Name:
.head 6 -  Title: Rootstock Description
.head 6 -  Visible? Class Default
.head 6 -  Editable? No
.head 6 -  Maximum Data Length: Class Default
.head 6 -  Data Type: String
.head 6 -  Justify: Class Default
.head 6 -  Width:  2.925"
.head 6 -  Width Editable? Class Default
.head 6 -  Format: Unformatted
.head 6 -  Country: Class Default
.head 6 -  Input Mask: Class Default
.head 6 -  Cell Options
.head 7 -  Cell Type? Class Default
.head 7 -  Multiline Cell? Class Default
.head 7 -  Cell DropDownList
.head 8 -  Sorted? Class Default
.head 8 -  Vertical Scroll? Class Default
.head 8 -  Auto Drop Down? Class Default
.head 8 -  Allow Text Editing? Class Default
.head 7 -  Cell CheckBox
.head 8 -  Check Value:
.head 8 -  Uncheck Value:
.head 8 -  Ignore Case? Class Default
.head 6 -  List Values
.head 6 +  Message Actions
.head 7 +  On PAM_SETINSTANCEVARS
.head 8 -  Set OurColumnClass.bPopulateColumn = FALSE
.head 8 -  Set OurColumnClass.bInsert = FALSE
.head 8 -  Set OurColumnClass.bUpdate = FALSE
.head 7 +  ! On PAM_COPYROWINFOFROM
.head 8 -    Call SalTblFetchRow( hWndForm, lParam )
.head 8 -    Set sTemp = colRootDesc
.head 7 +  ! On PAM_COPYROWINFOTO
.head 8 -    Call SalTblFetchRow( hWndForm, lParam )
.head 8 -    Set colRootDesc = sTemp
.head 7 +  On PAM_SETFWDCOLUMNCOLOR
.head 8 -  ! wParam = back ground color
.head 8 -  ! lParam = text color
.head 8 +  If wParam != 0
.head 9 -  Call SalColorSet( hWndItem, COLOR_IndexWindow, wParam )
.head 8 +  If lParam != 0
.head 9 -  Call SalColorSet( hWndItem, COLOR_IndexCellText, lParam )
.head 8 -  Return TRUE
.head 5 -  !
.head 5 +  Column: colSpecialReq
.head 6 -  Class Child Ref Key: 0
.head 6 -  Class ChildKey: 0
.head 6 -  Class: OurColumnClass
.head 6 -  Property Template:
.head 6 -  Class DLL Name:
.head 6 -  Title: Special Requirements
.head 6 -  Visible? Class Default
.head 6 -  Editable? No
.head 6 -  Maximum Data Length: Class Default
.head 6 -  Data Type: String
.head 6 -  Justify: Class Default
.head 6 -  Width:  2.925"
.head 6 -  Width Editable? Class Default
.head 6 -  Format: Unformatted
.head 6 -  Country: Class Default
.head 6 -  Input Mask: Class Default
.head 6 -  Cell Options
.head 7 -  Cell Type? Class Default
.head 7 -  Multiline Cell? Class Default
.head 7 -  Cell DropDownList
.head 8 -  Sorted? Class Default
.head 8 -  Vertical Scroll? Class Default
.head 8 -  Auto Drop Down? Class Default
.head 8 -  Allow Text Editing? Class Default
.head 7 -  Cell CheckBox
.head 8 -  Check Value:
.head 8 -  Uncheck Value:
.head 8 -  Ignore Case? Class Default
.head 6 -  List Values
.head 6 +  Message Actions
.head 7 +  On PAM_SETINSTANCEVARS
.head 8 -  Set OurColumnClass.sSQLCOLNAME = ' CUSTOMER_ORDER.SPEC_REQUIREMENT '
.head 8 -  Set OurColumnClass.bUpdate = FALSE
.head 7 +  On PAM_COPYROWINFOFROM
.head 8 -  Call SalTblFetchRow( hWndForm, lParam )
.head 8 -  Set sTemp = colSpecialReq
.head 7 +  On PAM_COPYROWINFOTO
.head 8 -  Call SalTblFetchRow( hWndForm, lParam )
.head 8 -  Set colSpecialReq = sTemp
.head 7 +  On PAM_SETFWDCOLUMNCOLOR
.head 8 -  ! wParam = back ground color
.head 8 -  ! lParam = text color
.head 8 +  If wParam != 0
.head 9 -  Call SalColorSet( hWndItem, COLOR_IndexWindow, wParam )
.head 8 +  If lParam != 0
.head 9 -  Call SalColorSet( hWndItem, COLOR_IndexCellText, lParam )
.head 8 -  Return TRUE
.head 5 -  !
.head 5 +  Column: colLoadId
.head 6 -  Class Child Ref Key: 0
.head 6 -  Class ChildKey: 0
.head 6 -  Class: OurColumnClass
.head 6 -  Property Template:
.head 6 -  Class DLL Name:
.head 6 -  Title:
.head 6 -  Visible? No
.head 6 -  Editable? No
.head 6 -  Maximum Data Length: Class Default
.head 6 -  Data Type: String
.head 6 -  Justify: Class Default
.head 6 -  Width:  2.925"
.head 6 -  Width Editable? Class Default
.head 6 -  Format: Unformatted
.head 6 -  Country: Class Default
.head 6 -  Input Mask: Class Default
.head 6 -  Cell Options
.head 7 -  Cell Type? Class Default
.head 7 -  Multiline Cell? Class Default
.head 7 -  Cell DropDownList
.head 8 -  Sorted? Class Default
.head 8 -  Vertical Scroll? Class Default
.head 8 -  Auto Drop Down? Class Default
.head 8 -  Allow Text Editing? Class Default
.head 7 -  Cell CheckBox
.head 8 -  Check Value:
.head 8 -  Uncheck Value:
.head 8 -  Ignore Case? Class Default
.head 6 -  List Values
.head 6 +  Message Actions
.head 7 +  On PAM_SETINSTANCEVARS
.head 8 -  Set OurColumnClass.sSQLCOLNAME = ' CUSTOMER_ORDER.LOAD_ID '
.head 8 -  Set OurColumnClass.bUpdate = FALSE
.head 7 +  On PAM_COPYROWINFOFROM
.head 8 -  Call SalTblFetchRow( hWndForm, lParam )
.head 8 -  Set sTemp = colLoadId
.head 7 +  On PAM_COPYROWINFOTO
.head 8 -  Call SalTblFetchRow( hWndForm, lParam )
.head 8 -  Set colLoadId = sTemp
.head 5 +  Column: colContPriceFlag
.head 6 -  Class Child Ref Key: 0
.head 6 -  Class ChildKey: 0
.head 6 -  Class: OurColumnClass
.head 6 -  Property Template:
.head 6 -  Class DLL Name:
.head 6 -  Title:
.head 6 -  Visible? No
.head 6 -  Editable? No
.head 6 -  Maximum Data Length: Class Default
.head 6 -  Data Type: String
.head 6 -  Justify: Class Default
.head 6 -  Width:  2.925"
.head 6 -  Width Editable? Class Default
.head 6 -  Format: Unformatted
.head 6 -  Country: Class Default
.head 6 -  Input Mask: Class Default
.head 6 -  Cell Options
.head 7 -  Cell Type? Class Default
.head 7 -  Multiline Cell? Class Default
.head 7 -  Cell DropDownList
.head 8 -  Sorted? Class Default
.head 8 -  Vertical Scroll? Class Default
.head 8 -  Auto Drop Down? Class Default
.head 8 -  Allow Text Editing? Class Default
.head 7 -  Cell CheckBox
.head 8 -  Check Value:
.head 8 -  Uncheck Value:
.head 8 -  Ignore Case? Class Default
.head 6 -  List Values
.head 6 +  Message Actions
.head 7 +  On PAM_SETINSTANCEVARS
.head 8 -  Set OurColumnClass.sSQLCOLNAME = ' CUSTOMER_ORDER.CONT_PRICE_FLAG '
.head 8 -  Set OurColumnClass.bUpdate = FALSE
.head 7 +  On PAM_COPYROWINFOFROM
.head 8 -  Call SalTblFetchRow( hWndForm, lParam )
.head 8 -  Set sTemp = colContPriceFlag
.head 7 +  On PAM_COPYROWINFOTO
.head 8 -  Call SalTblFetchRow( hWndForm, lParam )
.head 8 -  Set colContPriceFlag = sTemp
.head 5 +  Column: colContPrice
.head 6 -  Class Child Ref Key: 0
.head 6 -  Class ChildKey: 0
.head 6 -  Class: OurColumnClass
.head 6 -  Property Template:
.head 6 -  Class DLL Name:
.head 6 -  Title:
.head 6 -  Visible? No
.head 6 -  Editable? No
.head 6 -  Maximum Data Length: Class Default
.head 6 -  Data Type: Number
.head 6 -  Justify: Class Default
.head 6 -  Width:  2.925"
.head 6 -  Width Editable? Class Default
.head 6 -  Format: Unformatted
.head 6 -  Country: Class Default
.head 6 -  Input Mask: Class Default
.head 6 -  Cell Options
.head 7 -  Cell Type? Class Default
.head 7 -  Multiline Cell? Class Default
.head 7 -  Cell DropDownList
.head 8 -  Sorted? Class Default
.head 8 -  Vertical Scroll? Class Default
.head 8 -  Auto Drop Down? Class Default
.head 8 -  Allow Text Editing? Class Default
.head 7 -  Cell CheckBox
.head 8 -  Check Value:
.head 8 -  Uncheck Value:
.head 8 -  Ignore Case? Class Default
.head 6 -  List Values
.head 6 +  Message Actions
.head 7 +  On PAM_SETINSTANCEVARS
.head 8 -  Set OurColumnClass.sSQLCOLNAME = ' CUSTOMER_ORDER.CONTRACT_PRICE '
.head 8 -  Set OurColumnClass.bUpdate = FALSE
.head 7 +  On PAM_COPYROWINFOFROM
.head 8 -  Call SalTblFetchRow( hWndForm, lParam )
.head 8 -  Set nTemp = colContPrice
.head 7 +  On PAM_COPYROWINFOTO
.head 8 -  Call SalTblFetchRow( hWndForm, lParam )
.head 8 -  Set colContPrice = nTemp
.head 5 +  Column: colInvoiced
.head 6 -  Class Child Ref Key: 0
.head 6 -  Class ChildKey: 0
.head 6 -  Class: OurColumnClass
.head 6 -  Property Template:
.head 6 -  Class DLL Name:
.head 6 -  Title:
.head 6 -  Visible? No
.head 6 -  Editable? No
.head 6 -  Maximum Data Length: Class Default
.head 6 -  Data Type: String
.head 6 -  Justify: Class Default
.head 6 -  Width:  2.925"
.head 6 -  Width Editable? Class Default
.head 6 -  Format: Unformatted
.head 6 -  Country: Class Default
.head 6 -  Input Mask: Class Default
.head 6 -  Cell Options
.head 7 -  Cell Type? Class Default
.head 7 -  Multiline Cell? Class Default
.head 7 -  Cell DropDownList
.head 8 -  Sorted? Class Default
.head 8 -  Vertical Scroll? Class Default
.head 8 -  Auto Drop Down? Class Default
.head 8 -  Allow Text Editing? Class Default
.head 7 -  Cell CheckBox
.head 8 -  Check Value:
.head 8 -  Uncheck Value:
.head 8 -  Ignore Case? Class Default
.head 6 -  List Values
.head 6 +  Message Actions
.head 7 +  On PAM_SETINSTANCEVARS
.head 8 -  Set OurColumnClass.sSQLCOLNAME = ' CUSTOMER_ORDER.INVOICED_FLAG '
.head 8 -  Set OurColumnClass.bUpdate = FALSE
.head 7 +  On PAM_COPYROWINFOFROM
.head 8 -  Call SalTblFetchRow( hWndForm, lParam )
.head 8 -  Set sTemp = colInvoiced
.head 7 +  On PAM_COPYROWINFOTO
.head 8 -  Call SalTblFetchRow( hWndForm, lParam )
.head 8 -  Set colInvoiced = sTemp
.head 5 +  Column: colNPASentFlag
.head 6 -  Class Child Ref Key: 0
.head 6 -  Class ChildKey: 0
.head 6 -  Class: OurColumnClass
.head 6 -  Property Template:
.head 6 -  Class DLL Name:
.head 6 -  Title:
.head 6 -  Visible? No
.head 6 -  Editable? No
.head 6 -  Maximum Data Length: Class Default
.head 6 -  Data Type: String
.head 6 -  Justify: Class Default
.head 6 -  Width:  2.925"
.head 6 -  Width Editable? Class Default
.head 6 -  Format: Unformatted
.head 6 -  Country: Class Default
.head 6 -  Input Mask: Class Default
.head 6 -  Cell Options
.head 7 -  Cell Type? Class Default
.head 7 -  Multiline Cell? Class Default
.head 7 -  Cell DropDownList
.head 8 -  Sorted? Class Default
.head 8 -  Vertical Scroll? Class Default
.head 8 -  Auto Drop Down? Class Default
.head 8 -  Allow Text Editing? Class Default
.head 7 -  Cell CheckBox
.head 8 -  Check Value:
.head 8 -  Uncheck Value:
.head 8 -  Ignore Case? Class Default
.head 6 -  List Values
.head 6 +  Message Actions
.head 7 +  On PAM_SETINSTANCEVARS
.head 8 -  Set OurColumnClass.sSQLCOLNAME = ' CUSTOMER_ORDER.NPA_SENT_FLAG '
.head 7 +  On PAM_COPYROWINFOFROM
.head 8 -  Call SalTblFetchRow( hWndForm, lParam )
.head 8 -  Set sTemp = colNPASentFlag
.head 7 +  On PAM_COPYROWINFOTO
.head 8 -  Call SalTblFetchRow( hWndForm, lParam )
.head 8 -  Set colNPASentFlag = sTemp
.head 5 +  Column: colNPARecdFlag
.head 6 -  Class Child Ref Key: 0
.head 6 -  Class ChildKey: 0
.head 6 -  Class: OurColumnClass
.head 6 -  Property Template:
.head 6 -  Class DLL Name:
.head 6 -  Title:
.head 6 -  Visible? No
.head 6 -  Editable? No
.head 6 -  Maximum Data Length: Class Default
.head 6 -  Data Type: String
.head 6 -  Justify: Class Default
.head 6 -  Width:  2.925"
.head 6 -  Width Editable? Class Default
.head 6 -  Format: Unformatted
.head 6 -  Country: Class Default
.head 6 -  Input Mask: Class Default
.head 6 -  Cell Options
.head 7 -  Cell Type? Class Default
.head 7 -  Multiline Cell? Class Default
.head 7 -  Cell DropDownList
.head 8 -  Sorted? Class Default
.head 8 -  Vertical Scroll? Class Default
.head 8 -  Auto Drop Down? Class Default
.head 8 -  Allow Text Editing? Class Default
.head 7 -  Cell CheckBox
.head 8 -  Check Value:
.head 8 -  Uncheck Value:
.head 8 -  Ignore Case? Class Default
.head 6 -  List Values
.head 6 +  Message Actions
.head 7 +  On PAM_SETINSTANCEVARS
.head 8 -  Set OurColumnClass.sSQLCOLNAME = ' CUSTOMER_ORDER.NPA_RECD_FLAG '
.head 8 -  Set OurColumnClass.bUpdate = FALSE
.head 7 +  On PAM_COPYROWINFOFROM
.head 8 -  Call SalTblFetchRow( hWndForm, lParam )
.head 8 -  Set sTemp = colNPARecdFlag
.head 7 +  On PAM_COPYROWINFOTO
.head 8 -  Call SalTblFetchRow( hWndForm, lParam )
.head 8 -  Set colNPARecdFlag = sTemp
.head 5 -  !
.head 5 +  Column: colFutureOrder
.head 6 -  Class Child Ref Key: 0
.head 6 -  Class ChildKey: 0
.head 6 -  Class: OurColumnClass
.head 6 -  Property Template:
.head 6 -  Class DLL Name:
.head 6 -  Title: Fut. Order
.head 6 -  Visible? Yes
.head 6 -  Editable? No
.head 6 -  Maximum Data Length: Default
.head 6 -  Data Type: String
.head 6 -  Justify: Left
.head 6 -  Width:  1.05"
.head 6 -  Width Editable? Yes
.head 6 -  Format: Unformatted
.head 6 -  Country: Default
.head 6 -  Input Mask: Unformatted
.head 6 -  Cell Options
.head 7 -  Cell Type? Check Box
.head 7 -  Multiline Cell? No
.head 7 -  Cell DropDownList
.head 8 -  Sorted? Yes
.head 8 -  Vertical Scroll? Yes
.head 8 -  Auto Drop Down? No
.head 8 -  Allow Text Editing? Yes
.head 7 -  Cell CheckBox
.head 8 -  Check Value: Y
.head 8 -  Uncheck Value: N
.head 8 -  Ignore Case? Yes
.head 6 -  List Values
.head 6 +  Message Actions
.head 7 +  On PAM_SETINSTANCEVARS
.head 8 -  Set OurColumnClass.sSQLCOLNAME = "@IF(@ISNA( CUSTOMER_ORDER.BATCH_LOCATION_ID ), 'N', 'Y' )"
.head 8 -  Set OurColumnClass.bUpdate = FALSE
.head 8 -  Set OurColumnClass.bInsert = FALSE
.head 7 +  On PAM_COPYROWINFOFROM
.head 8 -  Call SalTblFetchRow( hWndForm, lParam )
.head 8 -  Set sTemp = colFutureOrder
.head 7 +  On PAM_COPYROWINFOTO
.head 8 -  Call SalTblFetchRow( hWndForm, lParam )
.head 8 -  Set colFutureOrder = sTemp
.head 7 +  On PAM_SETFWDCOLUMNCOLOR
.head 8 -  ! wParam = back ground color
.head 8 -  ! lParam = text color
.head 8 +  If wParam != 0
.head 9 -  Call SalColorSet( hWndItem, COLOR_IndexWindow, wParam )
.head 8 +  If lParam != 0
.head 9 -  Call SalColorSet( hWndItem, COLOR_IndexCellText, lParam )
.head 8 -  Return TRUE
.head 5 +  Column: colBatchLocationId
.head 6 -  Class Child Ref Key: 0
.head 6 -  Class ChildKey: 0
.head 6 -  Class: OurColumnClass
.head 6 -  Property Template:
.head 6 -  Class DLL Name:
.head 6 -  Title:
.head 6 -  Visible? No
.head 6 -  Editable? Class Default
.head 6 -  Maximum Data Length: Class Default
.head 6 -  Data Type: Number
.head 6 -  Justify: Class Default
.head 6 -  Width:  Default
.head 6 -  Width Editable? Class Default
.head 6 -  Format: Class Default
.head 6 -  Country: Class Default
.head 6 -  Input Mask: Class Default
.head 6 -  Cell Options
.head 7 -  Cell Type? Class Default
.head 7 -  Multiline Cell? Class Default
.head 7 -  Cell DropDownList
.head 8 -  Sorted? Class Default
.head 8 -  Vertical Scroll? Class Default
.head 8 -  Auto Drop Down? Class Default
.head 8 -  Allow Text Editing? Class Default
.head 7 -  Cell CheckBox
.head 8 -  Check Value:
.head 8 -  Uncheck Value:
.head 8 -  Ignore Case? Class Default
.head 6 -  List Values
.head 6 +  Message Actions
.head 7 +  On PAM_SETINSTANCEVARS
.head 8 -  Set OurColumnClass.sSQLCOLNAME = 'CUSTOMER_ORDER.BATCH_LOCATION_ID'
.head 7 +  On PAM_COPYROWINFOFROM
.head 8 -  Call SalTblFetchRow( hWndForm, lParam )
.head 8 -  Set nTemp = colBatchLocationId
.head 7 +  On PAM_COPYROWINFOTO
.head 8 -  Call SalTblFetchRow( hWndForm, lParam )
.head 8 -  Set colBatchLocationId = nTemp
.head 5 +  Column: colBatchYearOfSale
.head 6 -  Class Child Ref Key: 0
.head 6 -  Class ChildKey: 0
.head 6 -  Class: OurColumnClass
.head 6 -  Property Template:
.head 6 -  Class DLL Name:
.head 6 -  Title:
.head 6 -  Visible? No
.head 6 -  Editable? Class Default
.head 6 -  Maximum Data Length: Class Default
.head 6 -  Data Type: Number
.head 6 -  Justify: Class Default
.head 6 -  Width:  Default
.head 6 -  Width Editable? Class Default
.head 6 -  Format: Class Default
.head 6 -  Country: Class Default
.head 6 -  Input Mask: Class Default
.head 6 -  Cell Options
.head 7 -  Cell Type? Class Default
.head 7 -  Multiline Cell? Class Default
.head 7 -  Cell DropDownList
.head 8 -  Sorted? Class Default
.head 8 -  Vertical Scroll? Class Default
.head 8 -  Auto Drop Down? Class Default
.head 8 -  Allow Text Editing? Class Default
.head 7 -  Cell CheckBox
.head 8 -  Check Value:
.head 8 -  Uncheck Value:
.head 8 -  Ignore Case? Class Default
.head 6 -  List Values
.head 6 +  Message Actions
.head 7 +  On PAM_SETINSTANCEVARS
.head 8 -  Set OurColumnClass.sSQLCOLNAME = 'CUSTOMER_ORDER.BATCH_YEAR_OF_SALE'
.head 7 +  On PAM_COPYROWINFOFROM
.head 8 -  Call SalTblFetchRow( hWndForm, lParam )
.head 8 -  Set nTemp = colBatchYearOfSale
.head 7 +  On PAM_COPYROWINFOTO
.head 8 -  Call SalTblFetchRow( hWndForm, lParam )
.head 8 -  Set colBatchYearOfSale = nTemp
.head 5 +  Column: colSeason
.head 6 -  Class Child Ref Key: 0
.head 6 -  Class ChildKey: 0
.head 6 -  Class: OurColumnClass
.head 6 -  Property Template:
.head 6 -  Class DLL Name:
.head 6 -  Title: Season
.head 6 -  Visible? Class Default
.head 6 -  Editable? No
.head 6 -  Maximum Data Length: Class Default
.head 6 -  Data Type: Class Default
.head 6 -  Justify: Class Default
.head 6 -  Width:  1.338"
.head 6 -  Width Editable? Class Default
.head 6 -  Format: Class Default
.head 6 -  Country: Class Default
.head 6 -  Input Mask: Class Default
.head 6 -  Cell Options
.head 7 -  Cell Type? Class Default
.head 7 -  Multiline Cell? Class Default
.head 7 -  Cell DropDownList
.head 8 -  Sorted? Class Default
.head 8 -  Vertical Scroll? Class Default
.head 8 -  Auto Drop Down? Class Default
.head 8 -  Allow Text Editing? Class Default
.head 7 -  Cell CheckBox
.head 8 -  Check Value:
.head 8 -  Uncheck Value:
.head 8 -  Ignore Case? Class Default
.head 6 -  List Values
.head 6 +  Message Actions
.head 7 +  On PAM_SETINSTANCEVARS
.head 8 -  Set OurColumnClass.bPopulateColumn = FALSE
.head 7 +  On PAM_COPYROWINFOFROM
.head 8 -  Call SalTblFetchRow( hWndForm, lParam )
.head 8 -  Set sTemp = colSeason
.head 7 +  On PAM_COPYROWINFOTO
.head 8 -  Call SalTblFetchRow( hWndForm, lParam )
.head 8 -  Set colSeason = sTemp
.head 7 +  On PAM_SETFWDCOLUMNCOLOR
.head 8 -  ! wParam = back ground color
.head 8 -  ! lParam = text color
.head 8 +  If wParam != 0
.head 9 -  Call SalColorSet( hWndItem, COLOR_IndexWindow, wParam )
.head 8 +  If lParam != 0
.head 9 -  Call SalColorSet( hWndItem, COLOR_IndexCellText, lParam )
.head 8 -  Return TRUE
.head 5 +  Column: colFutureOrderDate
.head 6 -  Class Child Ref Key: 0
.head 6 -  Class ChildKey: 0
.head 6 -  Class: OurColumnClass
.head 6 -  Property Template:
.head 6 -  Class DLL Name:
.head 6 -  Title: Future.Ord.Date
.head 6 -  Visible? Class Default
.head 6 -  Editable? No
.head 6 -  Maximum Data Length: Class Default
.head 6 -  Data Type: Date/Time
.head 6 -  Justify: Center
.head 6 -  Width:  1.338"
.head 6 -  Width Editable? Class Default
.head 6 -  Format: dd-MMM-yyyy
.head 6 -  Country: Class Default
.head 6 -  Input Mask: Class Default
.head 6 -  Cell Options
.head 7 -  Cell Type? Class Default
.head 7 -  Multiline Cell? Class Default
.head 7 -  Cell DropDownList
.head 8 -  Sorted? Class Default
.head 8 -  Vertical Scroll? Class Default
.head 8 -  Auto Drop Down? Class Default
.head 8 -  Allow Text Editing? Class Default
.head 7 -  Cell CheckBox
.head 8 -  Check Value:
.head 8 -  Uncheck Value:
.head 8 -  Ignore Case? Class Default
.head 6 -  List Values
.head 6 +  Message Actions
.head 7 +  On PAM_SETINSTANCEVARS
.head 8 -  Set OurColumnClass.bPopulateColumn = FALSE
.head 7 +  On PAM_COPYROWINFOFROM
.head 8 -  Call SalTblFetchRow( hWndForm, lParam )
.head 8 -  Set dtTemp = colFutureOrderDate
.head 7 +  On PAM_COPYROWINFOTO
.head 8 -  Call SalTblFetchRow( hWndForm, lParam )
.head 8 -  Set colFutureOrderDate = dtTemp
.head 7 +  On PAM_SETFWDCOLUMNCOLOR
.head 8 -  ! wParam = back ground color
.head 8 -  ! lParam = text color
.head 8 +  If wParam != 0
.head 9 -  Call SalColorSet( hWndItem, COLOR_IndexWindow, wParam )
.head 8 +  If lParam != 0
.head 9 -  Call SalColorSet( hWndItem, COLOR_IndexCellText, lParam )
.head 8 -  Return TRUE
.head 4 +  Functions
.head 5 +  Function: UpdateItemAllocFlag
.head 6 -  Description: This function sets the item alloc flag in the stock_item_sale
table and does COMMIT itself.
.head 6 +  Returns
.head 7 -  Boolean:
.head 6 +  Parameters
.head 7 -  Number: nItemNo
.head 7 -  Number: nYear
.head 7 -  String: sItemAllocFlag
.head 7 -  Number: nActionType
.head 6 +  Static Variables
.head 7 -  Sql Handle: hSqlHandle
.head 7 -  Boolean: bHandleConnected
.head 7 -  Boolean: bHandlePrepared
.head 6 +  Local variables
.head 7 -  String: sSql
.head 7 -  String: sFuncName
.head 7 -  Boolean: bOk
.head 6 +  Actions
.head 7 -  Set sFuncName = 'UpdateItemAllocFlag'
.head 7 +  Select Case nActionType
.head 8 +  Case SH_cls_Execute
.head 9 +  Loop Execute
.head 10 +  Loop Connect
.head 11 +  If bHandleConnected
.head 12 -  Break Connect
.head 11 +  Else
.head 12 -  Set bHandleConnected = SqlConnect( hSqlHandle ) 
.head 12 +  If bHandleConnected
.head 13 -  Call SqlSetLockTimeout( hSqlHandle, SQLTIMEOUT )
.head 13 -  Call SqlSetParameter( hSqlHandle, DBP_PRESERVE, TRUE, ''  )
.head 13 -  Break Connect
.head 12 +  Else
.head 13 +  If IDNO = SalMessageBox( 'Could not connect handle in function '||sFuncName||'! Contact programmers! RETRY?', 'Error', MB_YesNo )
.head 14 -  Break Connect
.head 10 +  Loop Prepare
.head 11 +  If bHandlePrepared
.head 12 -  Break Prepare
.head 11 +  Else
.head 12 -  Set sSql = 'UPDATE Stock_Item_Sale 
SET Allocated_Flag = :sItemAllocFlag 
WHERE
  Stock_Item_No = :nItemNo AND 
  Year_Of_Sale = :nYear '
.head 12 +  If SqlPrepare( hSqlHandle, sSql )
.head 13 -  Set bHandlePrepared = TRUE
.head 13 -  Break Prepare
.head 12 +  Else
.head 13 -  Set bHandlePrepared = FALSE
.head 13 +  If IDNO = SalMessageBox( 'Could not prepare handle in function '||sFuncName||'! Contact programmers! RETRY?', 'Error', MB_YesNo )
.head 14 -  Break Prepare
.head 10 -  !
.head 10 +  If SqlExecute( hSqlHandle )
.head 11 -  Call UpdateItemAllocFlag( 0, 0, '', SH_cls_Commit )
.head 11 -  Return TRUE
.head 10 +  Else
.head 11 -  Set bHandlePrepared = FALSE
.head 11 -  Call UpdateItemAllocFlag( 0, 0, '', SH_cls_Rollback )
.head 11 +  If IDNO = SalMessageBox( 'Could not execute handle in function '||sFuncName||'! Contact programmers! RETRY?', 'Error', MB_YesNo )
.head 12 -  Return FALSE
.head 8 +  Case SH_cls_Commit
.head 9 -  Set bOk = TRUE
.head 9 +  Loop Commit
.head 10 +  If bHandleConnected
.head 11 +  If SqlCommit( hSqlHandle )
.head 12 -  Break Commit
.head 11 +  Else
.head 12 +  If IDNO = SalMessageBox( 'Could not commit handle in function '||sFuncName||'! Contact programmers! RETRY?', 'Error', MB_YesNo )
.head 13 -  Set bOk = FALSE
.head 13 -  Break Commit
.head 10 +  Else
.head 11 -  Break Commit
.head 9 -  Return bOk
.head 8 +  Case SH_cls_Rollback
.head 9 -  Set bOk = TRUE
.head 9 +  Loop Rollback
.head 10 +  If bHandleConnected
.head 11 -  Set bHandlePrepared = FALSE
.head 11 +  If SqlPrepareAndExecute( hSqlHandle, 'ROLLBACK' )
.head 12 -  Break Rollback
.head 11 +  Else
.head 12 +  If IDNO = SalMessageBox( 'Could not rollback handle in function '||sFuncName||'! Contact programmers! RETRY?', 'Error', MB_YesNo )
.head 13 -  Set bOk = FALSE
.head 13 -  Break Rollback
.head 10 +  Else
.head 11 -  Break Rollback
.head 9 -  Return bOk
.head 8 +  Case SH_cls_Disconnect
.head 9 -  Set bOk = TRUE
.head 9 +  Loop Disconnect
.head 10 +  If bHandleConnected
.head 11 +  If SqlDisconnect( hSqlHandle )
.head 12 -  Set bHandleConnected = FALSE
.head 12 -  Set bHandlePrepared = FALSE
.head 12 -  Break Disconnect
.head 11 +  Else
.head 12 +  If IDNO = SalMessageBox( 'Could not disconnect handle in function '||sFuncName||'Contact programmers! RETRY?', 'Error', MB_YesNo )
.head 13 -  Set bOk = FALSE
.head 13 -  Break Disconnect
.head 10 +  Else
.head 11 -  Break Disconnect
.head 9 -  Return bOk
.head 8 +  Case SH_cls_RePrepare
.head 9 -  Set bHandlePrepared = FALSE
.head 9 -  Return TRUE
.head 4 +  Window Variables
.head 5 -  String: sSqlWhereNoSubs
.head 5 -  String: sSqlWhereSubs
.head 5 -  !
.head 5 -  Number: nStartAvailable
.head 5 -  Number: nTotalConf
.head 5 -  Number: nLastRow
.head 5 -  Number: nGenericRowColor
.head 5 -  Number: nFCRPRowColor
.head 5 -  Number: nLookUpItemNo
.head 5 -  Number: nLookUpYear
.head 5 -  Number: nLookUpBatchLocationId
.head 5 -  ! Next two added to fill parameters in function calls. GF 
.head 5 -  Number: naBatchLocationId[*]
.head 5 -  Number: naBatchLocationAlloc[*]
.head 5 -  !
.head 5 -  Number: nLookUpBatchYearOfSale
.head 5 -  String: sLookUpTreeType
.head 5 -  String: sLookUpTreeTypeDesc
.head 5 -  String: sLookUpCultId
.head 5 -  String: sLookUpCultDesc
.head 5 -  String: sLookUpRootId
.head 5 -  String: sLookUpRootDesc
.head 5 -  String: sLookUpGenFlag
.head 5 -  Number: nTemp
.head 5 -  String: sTmpStr
.head 5 -  String: sTempOrderBookNo
.head 5 -  String: sTempPurchOrderNo
.head 5 -  Date/Time: dtTemp
.head 5 -  Date/Time: dtParentDT
.head 5 -  Boolean: bChangeSubItem
.head 5 -  Boolean: bChange
.head 5 -  Boolean: bError
.head 5 -  !
.head 5 -  Boolean: bFCRPNoRows
.head 5 -  Boolean: bNonFCRPNoRows
.head 4 +  Message Actions
.head 5 +  On PAM_SETINSTANCEVARS
.head 6 -  Set sSQLTABLENAME = ' CUSTOMER_ORDER '
.head 6 -  Set sSQLPOPTABLENAME = ' CUSTOMER_ORDER, CUSTOMER_MASTER, CUSTOMER_TYPE '
.head 6 -  Set sSqlWhereNoSubs = " WHERE Customer_Order.Cust_No = Customer_Master.Cust_No AND 
  Customer_Master.Customer_Type = Customer_Type.Cust_Type AND 
  Customer_Order.Year_of_sale = :frmAllocationsStage21.dfYear AND 
  NOT Customer_Order.Invoiced_Flag = 'Y' AND
  Customer_Order.Stock_Item_No = :frmAllocationsStage21.nItemNo "
.head 6 -  Set sSqlWhereSubs = " WHERE Customer_Order.Cust_No = Customer_Master.Cust_No AND 
  Customer_Master.Customer_Type = Customer_Type.Cust_Type AND 
  Customer_Order.Year_of_sale = :frmAllocationsStage21.dfYear AND 
  NOT Customer_Order.Invoiced_Flag = 'Y' AND
 ( Customer_Order.Stock_Item_No = :frmAllocationsStage21.nItemNo OR 
   Customer_Order.Subs_Item_No = :frmAllocationsStage21.nItemNo ) "
.head 6 -  Set sSQLWHERE = sSqlWhereSubs
.head 6 -  Set sORDERBY = ' ORDER BY CUSTOMER_ORDER.ORD_DATE, CUSTOMER_TYPE.ALLOC_PRIORITY '
.head 6 -  Set sROWID = ' CUSTOMER_ORDER.ROWID '
.head 6 -  Set sTableHeading = 'Customer Orders'
.head 6 -  Set nTableFillType = TBL_FillAll
.head 6 -  !
.head 6 -  Set nGenericRowColor = COLOR_Magenta
.head 6 -  Set nFCRPRowColor = COLOR_Jade
.head 6 -  Set nLastRow = -1
.head 6 -  Set bChangeSubItem = FALSE
.head 5 +  On PAM_POPULATE
.head 6 -  Call SalSendMsg( frmAllocationsStage21, PAM_DETREC, 0, 0 )
.head 6 +  If frmAllocationsStage21.nOnOrdAsSubs > 0
.head 7 -  Set sSQLWHERE = sSqlWhereSubs
.head 6 +  Else
.head 7 -  Set sSQLWHERE = sSqlWhereNoSubs
.head 6 -  Return SalSendClassMessage( PAM_POPULATE, wParam, lParam ) 
.head 5 -  !
.head 5 +  On SAM_FetchRowDone
.head 6 -  Set colTreeType = frmAllocationsStage21.dfTreeType
.head 6 -  Set colCultDesc = frmAllocationsStage21.dfCultDesc
.head 6 -  Set colRootDesc = frmAllocationsStage21.dfRootDesc
.head 6 -  !
.head 6 -  Call SalSendMsg( hWndForm, PAM_SETROWCOLOR, 0, lParam )
.head 6 -  !
.head 6 +  If colFutureOrder = 'Y'
.head 7 -  Call SalSendMsg( hWndForm, PAM_GETFUTUREAVAILABLE, wParam, lParam )
.head 5 +  On PAM_GETFUTUREAVAILABLE
.head 6 -  Call GetEstAvailDate( colBatchLocationId, colBatchYearOfSale, colFutureOrderDate, SH_cls_Execute )
.head 6 -  Set colSeason = GetSeason( colFutureOrderDate )
.head 6 -  Call SalSendMsgToChildren( hWndForm, PAM_SETFWDCOLUMNCOLOR, 0, GetSeasonColor( colSeason ) )
.head 6 -  Set colSeason = colSeason || ' ' || SalNumberToStrX( SalDateYear( colFutureOrderDate ), 0 )
.head 6 -  Return TRUE
.head 5 +  On PAM_SPLIT
.head 6 +  If MyTableAnyRows( hWndForm, ROW_Selected, 0, nRow )
.head 7 +  If nRow > 1
.head 8 -  Call SalMessageBox( 'Please select one row at a time to split.', 'Warning', MB_Ok )
.head 7 +  Else
.head 8 -  Set nRow = TBL_MinRow
.head 8 -  Call SalTblFindNextRow( hWndForm, nRow, ROW_Selected, 0 )
.head 8 -  Call SalTblFetchRow( hWndForm, nRow )
.head 8 -  !
.head 8 +  If colPullFlag = 'Y'
.head 9 -  Call SalMessageBox( 'Cannot SPLIT a pulled item!', 'Warning', MB_Ok )
.head 8 +  Else
.head 9 +  If SalIsNull( colSubsItemNo )
.head 10 -  Call SalTblSetRowFlags( hWndForm, nRow, ROW_Selected, FALSE )
.head 10 -  Call SalTblInsertRow( hWndForm, nRow+1 )
.head 10 -  Call CopyTableRowFromTo( hWndForm, nRow, nRow + 1 )
.head 10 -  Call SalTblSetContext( hWndForm, nRow+1 )
.head 10 -  Call SalTblSetRowFlags( hWndForm, nRow+1, ROW_New, TRUE )
.head 10 -  Call SalTblSetRowFlags( hWndForm, nRow+1, ROW_Selected, FALSE )
.head 10 -  !
.head 10 -  Set colOrdAmt = 0
.head 10 -  Set colAllocFlag = 'N'
.head 10 -  Set colConfFlag = 'N'
.head 10 -  Set colOrderBookNo = colOrderBookNo || ' - A.Split'
.head 9 +  Else
.head 10 -  Call SalMessageBox( 'Cannot SPLIT a subtitute item!', 'Warning', MB_Ok )
.head 6 +  Else
.head 7 -  Call SalMessageBox( 'Please select a row to split first!', 'Warning', MB_Ok )
.head 5 -  !
.head 5 +  On PAM_RECOMMENDEDALLOC
.head 6 +  If SalTblAnyRows( hWndForm, ROW_Edited | ROW_New | ROW_MarkDeleted, 0 )
.head 7 +  If IDYES = SalMessageBox( 'Your Changes will be lost!  Continue!', 'Warning', MB_YesNo )
.head 8 -  Call SalSendMsg( hWndForm, PAM_POPULATE, 0, 0 )
.head 7 +  Else
.head 8 -  Return FALSE
.head 6 -  Set nStartAvailable = frmAllocationsStage21.dfAvailable
.head 6 -  Set nTotalConf = 0
.head 6 -  !
.head 6 -  Call MyTableLoop( hWndForm, hWndForm, PAM_ROWRECOALLOC1, 0, 0, 'Recommeded Allocations Step 1 of 3', nHiToLow )
.head 6 -  !
.head 6 -  Set nStartAvailable = nStartAvailable - nTotalConf
.head 6 -  !
.head 6 -  Call MyTableLoop( hWndForm, hWndForm, PAM_ROWRECOALLOC2, 0, 0, 'Recommeded Allocations Step 2 of 3', nHiToLow )
.head 6 -  Call MyTableLoop( hWndForm, hWndForm, PAM_ROWRECOALLOC3, 0, 0, 'Recommeded Allocations Step 3 of 3', nLowToHi )
.head 6 -  !
.head 6 -  Call MyTableLoop( hWndForm, hWndForm, PAM_SETROWCOLOR, 0, 0, 'Reseting Row Colors', nLowToHi )
.head 6 -  !
.head 6 -  Set frmAllocationsStage21.dfAvailable = nStartAvailable
.head 6 -  Set frmAllocationsStage21.dfAllocFlag = 'Y'
.head 6 -  Return TRUE
.head 5 +  On PAM_ROWRECOALLOC1
.head 6 +  If SalIsNull( colConfAmt )
.head 7 -  Set nStartAvailable = nStartAvailable + colOrdAmt
.head 6 +  Else
.head 7 -  Set nStartAvailable = nStartAvailable + colConfAmt
.head 7 -  Set nTotalConf = nTotalConf + colConfAmt
.head 6 -  Return TRUE
.head 5 +  On PAM_ROWRECOALLOC2
.head 6 +  If colSaleCat = 'FC' OR colSaleCat = 'RP'
.head 7 +  If SalIsNull( colConfAmt )
.head 8 +  If nStartAvailable >= colOrdAmt
.head 9 -  Set colConfAmt = colOrdAmt
.head 9 -  Call SalSetFieldEdit( colConfAmt, TRUE )
.head 9 -  Set nStartAvailable = nStartAvailable - colOrdAmt
.head 9 -  Set colPrevConfAmt = colConfAmt
.head 9 -  Set colAllocFlag = 'Y'
.head 9 -  Call SalSetFieldEdit( colAllocFlag, TRUE )
.head 8 +  Else
.head 9 -  Set colConfAmt = nStartAvailable
.head 9 -  Call SalSetFieldEdit( colConfAmt, TRUE )
.head 9 -  Set nStartAvailable = 0
.head 9 -  Set colPrevConfAmt = colConfAmt
.head 9 -  Set colAllocFlag = 'Y'
.head 9 -  Call SalSetFieldEdit( colAllocFlag, TRUE )
.head 6 -  Return TRUE
.head 5 +  On PAM_ROWRECOALLOC3
.head 6 +  If colSaleCat = 'FC' OR colSaleCat = 'RP'
.head 7 -  Return TRUE
.head 6 +  Else
.head 7 +  If SalIsNull( colConfAmt )
.head 8 +  If nStartAvailable >= colOrdAmt
.head 9 -  Set colConfAmt = colOrdAmt
.head 9 -  Call SalSetFieldEdit( colConfAmt, TRUE )
.head 9 -  Set nStartAvailable = nStartAvailable - colOrdAmt
.head 9 -  Set colPrevConfAmt = colConfAmt
.head 9 -  Set colAllocFlag = 'Y'
.head 9 -  Call SalSetFieldEdit( colAllocFlag, TRUE )
.head 8 +  Else
.head 9 -  Set colConfAmt = nStartAvailable
.head 9 -  Call SalSetFieldEdit( colConfAmt, TRUE )
.head 9 -  Set nStartAvailable = 0
.head 9 -  Set colPrevConfAmt = colConfAmt
.head 9 -  Set colAllocFlag = 'Y'
.head 9 -  Call SalSetFieldEdit( colAllocFlag, TRUE )
.head 7 -  Return TRUE
.head 5 -  !
.head 5 +  On PAM_ALLOCSELECTEDASIS
.head 6 -  Call MyTableLoop( hWndForm, hWndForm, PAM_ALLOCROWASIS, 0, 0, 'Allocating Selected As Ordered', nLowToHiWithPositioning )
.head 6 -  Set frmAllocationsStage21.dfAllocFlag = 'Y'
.head 5 +  On PAM_ALLOCROWASIS
.head 6 +  If SalIsNull( colConfAmt )
.head 7 -  Set colConfAmt = colOrdAmt
.head 7 -  Call SalSetFieldEdit( colConfAmt, TRUE )
.head 7 -  Set colPrevConfAmt = colConfAmt
.head 7 -  Set colAllocFlag = 'Y'
.head 7 -  Call SalSetFieldEdit( colAllocFlag, TRUE )
.head 6 -  Return TRUE
.head 5 -  !
.head 5 +  On PAM_SETROWCOLOR
.head 6 +  If colSubsItemNo > 0 
.head 7 -  Call VisTblSetRowColor( hWndForm, lParam, nGenericRowColor )
.head 6 +  If colSaleCat = 'FC' OR colSaleCat = 'RP'
.head 7 -  Call VisTblSetRowColor( hWndForm, lParam, nFCRPRowColor )
.head 6 -  Return TRUE
.head 5 -  !
.head 5 +  On PAM_UNDOITEMSELECTION
.head 6 -  Set bChange = FALSE
.head 6 +  If colItemNo != colPrevItemNo
.head 7 -  Set colItemNo = colPrevItemNo
.head 7 -  Set bChange = TRUE
.head 6 +  If colSubsItemNo != colPrevSubsItemNo
.head 7 -  Set colSubsItemNo = colPrevSubsItemNo
.head 7 -  Set bChange = TRUE
.head 6 +  If bChange
.head 7 +  If colItemNo = frmAllocationsStage21.nItemNo
.head 8 -  Call GetItemFullBasicDetails( colItemNo, colTreeType, sTmpStr, sTmpStr, colCultDesc, sTmpStr, colRootDesc, sTmpStr, sTmpStr, sTmpStr, SH_cls_Execute )
.head 7 +  Else
.head 8 -  Call GetItemFullBasicDetails( colSubsItemNo, colTreeType, sTmpStr, sTmpStr, colCultDesc, sTmpStr, colRootDesc, sTmpStr, sTmpStr, sTmpStr, SH_cls_Execute )
.head 6 -  Return TRUE
.head 5 -  !
.head 5 +  On PAM_WRITEINSERTSUPDATES
.head 6 +  If IDYES = SalMessageBox( 'Are you ready to insert/update/delete the modified rows?',
sTableHeading, MB_YesNo|MB_IconExclamation )
.head 7 -  Call SalMessageBox( 'Please note, during this process:
If available figures fall bellow 20, we will attempt to allocate generic items with the next available substitute.', 'NOTE', MB_Ok )
.head 7 +  If MyTableDataVal( hWndForm )
.head 8 -  Set bChange = FALSE
.head 8 -  Set bError = FALSE
.head 8 -  Call MyTableLoop( hWndForm, hWndForm, PAM_ROWACTION, ROW_Edited, 0, 'Changing Orders', nLowToHiWithPositioning )
.head 8 +  If bChange AND NOT bError
.head 9 -  Call UpdateItemAllocFlag( frmAllocationsStage21.nItemNo, 
frmAllocationsStage21.nYear, frmAllocationsStage21.dfAllocFlag, SH_cls_Execute )
.head 9 -  Call SalSendMsg( hWndForm, PAM_POPULATE, 0, 0 )
.head 9 -  Set bEdit = TRUE
.head 5 +  On PAM_ROWACTION
.head 6 +  If SalTblQueryRowFlags( hWndForm, lParam, ROW_New )
.head 7 +  If NewAddOrder( colCustNo, colYear, colOrderDate, colItemNo, colOrdAmt, colConfAmt, colOrderBookNo, colSaleCat, colSubsOkFlag, naBatchLocationId, naBatchLocationAlloc, colBatchYearOfSale, hWndForm, PAM_INSERT, 
dtParentDT, SH_cls_Execute | nLess20OkDontAsk )
.head 8 -  Call SalTblSetRowFlags( hWndForm, lParam, ROW_New, FALSE )
.head 8 -  Call SalTblSetRowFlags( hWndForm, lParam, ROW_Edited, FALSE )
.head 8 -  Set bChange = TRUE
.head 7 +  Else
.head 8 -  Set bError = TRUE
.head 6 +  Else If SalTblQueryRowFlags( hWndForm, lParam, ROW_Edited )
.head 7 +  If NewSaveOrder( colCustNo, colOrdDateTime, colItemNo, colYear, colOrdAmt, colConfAmt, colAllocFlag, colSubsOkFlag, colPurchaseOrderNo, naBatchLocationId, naBatchLocationAlloc, colBatchYearOfSale, DATETIME_Null, '', hWndForm, 
PAM_UPDATE,  SH_cls_Execute | nLess20OkDontAsk )
.head 8 +  If colSubsItemNo != colPrevSubsItemNo AND NOT SalIsNull( colPrevSubsItemNo )
.head 9 +  If NewChangeOrderSubstitute( colCustNo, colOrdDateTime, colSubsItemNo, SH_cls_Execute )
.head 10 -  Call SalTblSetRowFlags( hWndForm, lParam, ROW_Edited, FALSE )
.head 10 -  Set bChange = TRUE
.head 9 +  Else
.head 10 -  Set bError = TRUE
.head 8 +  Else
.head 9 -  Call SalTblSetRowFlags( hWndForm, lParam, ROW_Edited, FALSE )
.head 9 -  Set bChange = TRUE
.head 7 +  Else
.head 8 -  Set bError = TRUE
.head 6 -  Call SalSendMsg( hWndForm, PAM_SETROWCOLOR, 0, lParam )
.head 6 -  Return TRUE
.head 5 +  On SAM_Destroy
.head 6 -  Call GetItemTotalAvail( 0, 0, nStartAvailable, SH_cls_Disconnect)
.head 6 -  Call NewAddOrder( 0, 0, DATETIME_Null, 0, 0, 0, '', '', '', naBatchLocationId, naBatchLocationAlloc, 0, hWndNULL, 0, dtParentDT, SH_cls_Disconnect)
.head 6 -  Call NewSaveOrder( 0, DATETIME_Null, 0, 0, 0, 0, '', '', '', naBatchLocationId, naBatchLocationAlloc, 0, DATETIME_Null, '', hWndNULL, 0, SH_cls_Disconnect)
.head 6 -  Call NewChangeOrderSubstitute( 0, DATETIME_Null, 0, SH_cls_Disconnect)
.head 6 -  Call GetGenericStockItemFlag( 0, sLookUpGenFlag, SH_cls_Disconnect)
.head 6 -  Call UpdateItemAllocFlag( 0,0, '', SH_cls_Disconnect)
.head 6 -  Return SalSendClassMessage( SAM_Destroy, wParam, lParam )
.head 3 -  !
.head 3 +  Pushbutton: pbRecommendedAlloc
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: OurPushbuttonClass
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title: Recommend Allocation
.head 4 -  Window Location and Size
.head 5 -  Left: 4.513"
.head 5 -  Top: 4.948"
.head 5 -  Width:  2.138"
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
.head 4 -  Button Appearance: Standard
.head 4 +  Message Actions
.head 5 +  On PAM_CLICK
.head 6 -  Call SalSendMsg( tblCustOrders, PAM_RECOMMENDEDALLOC, 0, 0 )
.head 3 +  Pushbutton: pbAllocSelectAsOrd
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: OurPushbuttonClass
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title: Alloc.Selected As Ord.
.head 4 -  Window Location and Size
.head 5 -  Left: 4.513"
.head 5 -  Top: 4.635"
.head 5 -  Width:  2.138"
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
.head 4 -  Button Appearance: Standard
.head 4 +  Message Actions
.head 5 +  On PAM_CLICK
.head 6 -  Call SalSendMsg( tblCustOrders, PAM_ALLOCSELECTEDASIS, 0, 0 )
.head 3 +  Pushbutton: pbSplitOrder
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: OurPushbuttonClass
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title: Split Order
.head 4 -  Window Location and Size
.head 5 -  Left: 1.188"
.head 5 -  Top: 4.948"
.head 5 -  Width:  1.5"
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
.head 4 -  Button Appearance: Standard
.head 4 +  Message Actions
.head 5 +  On PAM_CLICK
.head 6 -  Call SalSendMsg( tblCustOrders, PAM_SPLIT, 0, 0 )
.head 3 +  Pushbutton: pbUndoItemSelection
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: OurPushbuttonClass
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title: UNDO Item Selection
.head 4 -  Window Location and Size
.head 5 -  Left: 2.688"
.head 5 -  Top: 4.635"
.head 5 -  Width:  1.825"
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
.head 4 -  Button Appearance: Standard
.head 4 +  Message Actions
.head 5 +  On PAM_CLICK
.head 6 +  If IDYES = SalMessageBox( 'Undoing Future batch selection is not implemented! Continue?', 'Note', MB_YesNo )
.head 7 -  Call MyTableLoop( tblCustOrders, tblCustOrders, PAM_UNDOITEMSELECTION, 0, 0, 'Undoing Item Selections', nLowToHi )
.head 3 +  Pushbutton: pbPickItem
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: JanPickIntoTablePbClass
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title: Pick Items - F9
.head 4 -  Window Location and Size
.head 5 -  Left: 2.688"
.head 5 -  Top: 4.948"
.head 5 -  Width:  1.825"
.head 5 -  Width Editable? Class Default
.head 5 -  Height: 0.292"
.head 5 -  Height Editable? Class Default
.head 4 -  Visible? Class Default
.head 4 -  Keyboard Accelerator: F9
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Class Default
.head 4 -  Picture File Name: C:\CENTURA\ICONS\Pick.ico
.head 4 -  Picture Transparent Color: Class Default
.head 4 -  Image Style: Class Default
.head 4 -  Text Color: Class Default
.head 4 -  Background Color: Class Default
.head 4 -  Button Appearance: Standard
.head 4 +  Message Actions
.head 5 +  On PAM_SETINSTANCEVARS
.head 6 -  Set pbPickItem.sPickDialogName = 'dlgQueryItem'
.head 6 -  Set pbPickItem.hWndChildTable = tblCustOrders
.head 6 -  Set pbPickItem.bPickModalDialog = FALSE
.head 6 -  Set pbPickItem.nLookUpMessage = PAM_ALLOCLOOKUPITEM
.head 6 -  Set pbPickItem.bOneToManySelect = TRUE
.head 5 +  On SAM_Click
.head 6 +  Call SalModalDialog( dlgChangeItemOrSub, hWndForm, tblCustOrders.bChangeSubItem )
.head 7 -  ! Call PopNumber( tblCustOrders.bChangeSubItem, TRUE )
.head 6 -  Call SalSendClassMessage( SAM_Click, wParam, lParam )
.head 5 +  On PAM_PUSHFIELDS
.head 6 -  Call PushNumber( nYear )
.head 6 -  Call PushString( 'JanSelectFromTablePbClass' )
.head 6 -  Call PushString( dfTreeType )
.head 6 -  Call PushString( dfCultDesc )
.head 6 -  Call PushString( '' )
.head 6 -  Return TRUE
.head 2 +  Functions
.head 3 +  Function: GetItemDetails
.head 4 -  Description:
.head 4 +  Returns
.head 5 -  Boolean:
.head 4 +  Parameters
.head 5 -  Number: nItemNo
.head 5 -  Number: nYear
.head 5 -  Receive String: sTreeType
.head 5 -  Receive String: sCultDesc
.head 5 -  Receive String: sRootDesc
.head 5 -  Receive String: sItemAllocFlag
.head 5 -  Receive Number: nItemTotalAvail
.head 5 -  Receive Number: nOnOrdAsSubs
.head 5 -  Number: nActionType
.head 4 +  Static Variables
.head 5 -  Sql Handle: hSqlHandle
.head 5 -  Boolean: bHandleConnected
.head 5 -  Boolean: bHandlePrepared
.head 4 +  Local variables
.head 5 -  String: sSql
.head 5 -  String: sFuncName
.head 5 -  Boolean: bOk
.head 5 -  Number: nInd
.head 5 -  !
.head 5 -  String: sGotTreeType
.head 5 -  String: sGotCultDesc
.head 5 -  String: sGotRootDesc
.head 5 -  String: sGotItemAllocFlag
.head 5 -  Number: nGotItemTotalAvail
.head 5 -  Number: nGotOnOrdAsSubs
.head 4 +  Actions
.head 5 -  Set sFuncName = 'GetItemDetails'
.head 5 +  Select Case nActionType
.head 6 +  Case SH_cls_Execute
.head 7 +  Loop Execute
.head 8 +  Loop Connect
.head 9 +  If bHandleConnected
.head 10 -  Break Connect
.head 9 +  Else
.head 10 -  Set bHandleConnected = SqlConnect( hSqlHandle ) 
.head 10 +  If bHandleConnected
.head 11 -  Call SqlSetLockTimeout( hSqlHandle, SQLTIMEOUT )
.head 11 -  Call SqlSetParameter( hSqlHandle, DBP_PRESERVE, TRUE, ''  )
.head 11 -  Break Connect
.head 10 +  Else
.head 11 +  If IDNO = SalMessageBox( 'Could not connect handle in function '||sFuncName||'! Contact programmers! RETRY?', 'Error', MB_YesNo )
.head 12 -  Break Connect
.head 8 +  Loop Prepare
.head 9 +  If bHandlePrepared
.head 10 -  Break Prepare
.head 9 +  Else
.head 10 -  Set sSql = 'SELECT 
  Stock_Item.Tree_Type, 
  Stock_Item.Cult_Desc, 
  Stock_Item.Root_Desc, 
  Stock_Item_Sale.Allocated_Flag, 
  Stock_Item_Sale.Tot_Avail, 
  Stock_Item_Sale.On_Ord_As_Subs 
FROM 
  Stock_Item, 
  Stock_Item_Sale 
INTO 
  :sGotTreeType, 
  :sGotCultDesc, 
  :sGotRootDesc, 
  :sGotItemAllocFlag, 
  :nGotItemTotalAvail, 
  :nGotOnOrdAsSubs 
WHERE
  Stock_Item.Item_No = :nItemNo AND 
  Stock_Item.Item_No = Stock_Item_Sale.Stock_Item_No AND 
  Stock_Item_Sale.Year_Of_Sale = :nYear '
.head 10 +  If SqlPrepare( hSqlHandle, sSql )
.head 11 -  Set bHandlePrepared = TRUE
.head 11 -  Break Prepare
.head 10 +  Else
.head 11 -  Set bHandlePrepared = FALSE
.head 11 +  If IDNO = SalMessageBox( 'Could not prepare handle in function '||sFuncName||'! Contact programmers! RETRY?', 'Error', MB_YesNo )
.head 12 -  Break Prepare
.head 8 -  !
.head 8 -  Set sTreeType = ''
.head 8 -  Set sCultDesc = ''
.head 8 -  Set sRootDesc = ''
.head 8 -  Set sItemAllocFlag = ''
.head 8 -  Set nItemTotalAvail = NUMBER_Null
.head 8 -  Set nOnOrdAsSubs = NUMBER_Null
.head 8 -  !
.head 8 -  Set sGotTreeType = ''
.head 8 -  Set sGotCultDesc = ''
.head 8 -  Set sGotRootDesc = ''
.head 8 -  Set sGotItemAllocFlag = ''
.head 8 -  Set nGotItemTotalAvail = NUMBER_Null
.head 8 -  Set nGotOnOrdAsSubs = NUMBER_Null
.head 8 -  !
.head 8 +  If SqlExecute( hSqlHandle )
.head 9 -  Call SqlFetchNext( hSqlHandle, nInd )
.head 9 -  Set sTreeType = sGotTreeType
.head 9 -  Set sCultDesc = sGotCultDesc
.head 9 -  Set sRootDesc = sGotRootDesc
.head 9 -  Set sItemAllocFlag = sGotItemAllocFlag
.head 9 -  Set nItemTotalAvail = nGotItemTotalAvail
.head 9 -  Set nOnOrdAsSubs = nGotOnOrdAsSubs
.head 9 -  Return TRUE
.head 8 +  Else
.head 9 -  Set bHandlePrepared = FALSE
.head 9 +  If IDNO = SalMessageBox( 'Could not execute handle in function '||sFuncName||'! Contact programmers! RETRY?', 'Error', MB_YesNo )
.head 10 -  Return FALSE
.head 6 +  Case SH_cls_Commit
.head 7 -  Set bOk = TRUE
.head 7 +  Loop Commit
.head 8 +  If bHandleConnected
.head 9 +  If SqlCommit( hSqlHandle )
.head 10 -  Break Commit
.head 9 +  Else
.head 10 +  If IDNO = SalMessageBox( 'Could not commit handle in function '||sFuncName||'! Contact programmers! RETRY?', 'Error', MB_YesNo )
.head 11 -  Set bOk = FALSE
.head 11 -  Break Commit
.head 8 +  Else
.head 9 -  Break Commit
.head 7 -  Return bOk
.head 6 +  Case SH_cls_Rollback
.head 7 -  Set bOk = TRUE
.head 7 +  Loop Rollback
.head 8 +  If bHandleConnected
.head 9 -  Set bHandlePrepared = FALSE
.head 9 +  If SqlPrepareAndExecute( hSqlHandle, 'ROLLBACK' )
.head 10 -  Break Rollback
.head 9 +  Else
.head 10 +  If IDNO = SalMessageBox( 'Could not rollback handle in function '||sFuncName||'! Contact programmers! RETRY?', 'Error', MB_YesNo )
.head 11 -  Set bOk = FALSE
.head 11 -  Break Rollback
.head 8 +  Else
.head 9 -  Break Rollback
.head 7 -  Return bOk
.head 6 +  Case SH_cls_Disconnect
.head 7 -  Set bOk = TRUE
.head 7 +  Loop Disconnect
.head 8 +  If bHandleConnected
.head 9 +  If SqlDisconnect( hSqlHandle )
.head 10 -  Set bHandleConnected = FALSE
.head 10 -  Set bHandlePrepared = FALSE
.head 10 -  Break Disconnect
.head 9 +  Else
.head 10 +  If IDNO = SalMessageBox( 'Could not disconnect handle in function '||sFuncName||'Contact programmers! RETRY?', 'Error', MB_YesNo )
.head 11 -  Set bOk = FALSE
.head 11 -  Break Disconnect
.head 8 +  Else
.head 9 -  Break Disconnect
.head 7 -  Return bOk
.head 6 +  Case SH_cls_RePrepare
.head 7 -  Set bHandlePrepared = FALSE
.head 7 -  Return TRUE
.head 2 +  Window Parameters
.head 3 -  Number: nItemNo
.head 3 -  Number: nYear
.head 2 +  Window Variables
.head 3 -  Number: nOnOrdAsSubs
.head 2 +  Message Actions
.head 3 +  On PAM_SETINSTANCEVARS
.head 4 -  Set sDatabase = SqlDatabase
.head 4 -  Set bQueryTableAllowed = FALSE
.head 4 -  Set bDeleteRowsAllowed = FALSE
.head 4 -  Set bUnDeleteRowsAllowed = FALSE
.head 4 -  Set bAddRowsAllowed = FALSE
.head 4 -  Set bOrderTableAllowed = TRUE
.head 3 +  On SAM_CreateComplete
.head 4 -  Set dfYear = nYear
.head 4 -  ! Call SalSendMsg( hWndForm, PAM_DETREC, 0, 0 )
.head 4 -  !
.head 4 -  Call SalHideWindow( SalParentWindow( hWndForm ) )
.head 4 -  Call SalWaitCursor( FALSE )
.head 3 +  On PAM_DETREC
.head 4 -  Return GetItemDetails( nItemNo, nYear, dfTreeType, dfCultDesc, dfRootDesc, dfAllocFlag, dfAvailable, nOnOrdAsSubs, SH_cls_Execute )
.head 3 +  On SAM_Destroy
.head 4 -  Call SalShowWindow( SalParentWindow( hWndForm ) )
.head 4 -  !
.head 4 -  Call GetItemDetails( 0, 0,dfTreeType, dfCultDesc, dfRootDesc, dfAllocFlag, dfAvailable, nOnOrdAsSubs, SH_cls_Disconnect)
.head 4 -  Call SalPostMsg( SalParentWindow( hWndForm ), PAM_RETURN, tblCustOrders.bEdit, nReturnStage2Alloc )
.head 4 -  Call SalSendClassMessage( SAM_Destroy, wParam, lParam )
.head 1 +  Dialog Box: dlgChangeItemOrSub
.head 2 -  Class: Our_Dialog_Box
.head 2 -  Property Template:
.head 2 -  Class DLL Name:
.head 2 -  Title: Pick Over Item or Substitute
.head 2 -  Accessories Enabled? Class Default
.head 2 -  Visible? Class Default
.head 2 -  Display Settings
.head 3 -  Display Style? Class Default
.head 3 -  Visible at Design time? No
.head 3 -  Type of Dialog: Modal
.head 3 -  Allow Dock to Parent? No
.head 3 -  Docking Orientation: All
.head 3 -  Window Location and Size
.head 4 -  Left: 0.625"
.head 4 -  Top: 1.635"
.head 4 -  Width:  5.763"
.head 4 -  Width Editable? Class Default
.head 4 -  Height: 1.812"
.head 4 -  Height Editable? Class Default
.head 3 -  Absolute Screen Location? Class Default
.head 3 -  Font Name: Class Default
.head 3 -  Font Size: Class Default
.head 3 -  Font Enhancement: Class Default
.head 3 -  Text Color: Class Default
.head 3 -  Background Color: Class Default
.head 3 -  Resizable? No
.head 3 -  Vertical Scroll? Yes
.head 3 -  Horizontal Scroll? Yes
.head 2 -  Description:
.head 2 +  Tool Bar
.head 3 -  Display Settings
.head 4 -  Display Style? Class Default
.head 4 -  Location? Class Default
.head 4 -  Visible? Class Default
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
.head 3 +  Contents
.head 4 +  Pushbutton: pbHelp
.head 5 -  Class Child Ref Key: 9
.head 5 -  Class ChildKey: 0
.head 5 -  Class: Our_Dialog_Box
.head 5 -  Property Template:
.head 5 -  Class DLL Name:
.head 5 -  Title:
.head 5 -  Window Location and Size
.head 6 -  Left: Class Default
.head 6 -  Top: Class Default
.head 6 -  Width:  Class Default
.head 6 -  Width Editable? Class Default
.head 6 -  Height: Class Default
.head 6 -  Height Editable? Class Default
.head 5 -  Visible? Class Default
.head 5 -  Keyboard Accelerator: Class Default
.head 5 -  Font Name: Class Default
.head 5 -  Font Size: Class Default
.head 5 -  Font Enhancement: Class Default
.head 5 -  Picture File Name:
.head 5 -  Picture Transparent Color: Class Default
.head 5 -  Image Style: Class Default
.head 5 -  Text Color: Class Default
.head 5 -  Background Color: Class Default
.head 5 -  Button Appearance: Standard
.head 5 -  Message Actions
.head 4 +  Pushbutton: pbCancel
.head 5 -  Class Child Ref Key: 10
.head 5 -  Class ChildKey: 0
.head 5 -  Class: Our_Dialog_Box
.head 5 -  Property Template:
.head 5 -  Class DLL Name:
.head 5 -  Title:
.head 5 -  Window Location and Size
.head 6 -  Left: Class Default
.head 6 -  Top: Class Default
.head 6 -  Width:  Class Default
.head 6 -  Width Editable? Class Default
.head 6 -  Height: Class Default
.head 6 -  Height Editable? Class Default
.head 5 -  Visible? Class Default
.head 5 -  Keyboard Accelerator: Class Default
.head 5 -  Font Name: Class Default
.head 5 -  Font Size: Class Default
.head 5 -  Font Enhancement: Class Default
.head 5 -  Picture File Name:
.head 5 -  Picture Transparent Color: Class Default
.head 5 -  Image Style: Class Default
.head 5 -  Text Color: Class Default
.head 5 -  Background Color: Class Default
.head 5 -  Button Appearance: Standard
.head 5 -  Message Actions
.head 4 +  Pushbutton: pbItemEnq
.head 5 -  Class Child Ref Key: 11
.head 5 -  Class ChildKey: 0
.head 5 -  Class: Our_Dialog_Box
.head 5 -  Property Template:
.head 5 -  Class DLL Name:
.head 5 -  Title:
.head 5 -  Window Location and Size
.head 6 -  Left: Class Default
.head 6 -  Top: Class Default
.head 6 -  Width:  Class Default
.head 6 -  Width Editable? Class Default
.head 6 -  Height: Class Default
.head 6 -  Height Editable? Class Default
.head 5 -  Visible? Class Default
.head 5 -  Keyboard Accelerator: Class Default
.head 5 -  Font Name: Class Default
.head 5 -  Font Size: Class Default
.head 5 -  Font Enhancement: Class Default
.head 5 -  Picture File Name:
.head 5 -  Picture Transparent Color: Class Default
.head 5 -  Image Style: Class Default
.head 5 -  Text Color: Class Default
.head 5 -  Background Color: Class Default
.head 5 -  Button Appearance: Standard
.head 5 -  Message Actions
.head 2 +  Contents
.head 3 -  !
.head 3 +  Radio Button: rbChangeItem
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class:
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title: Change Stock Item
.head 4 -  Window Location and Size
.head 5 -  Left: 0.175"
.head 5 -  Top: 0.448"
.head 5 -  Width:  1.9"
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
.head 6 +  If SalIsButtonChecked( hWndItem )
.head 7 -  Set bChangeSubItem = FALSE
.head 3 +  Radio Button: rbChangeSubItem
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class:
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title: Change Substitute Item
.head 4 -  Window Location and Size
.head 5 -  Left: 2.213"
.head 5 -  Top: 0.438"
.head 5 -  Width:  2.375"
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
.head 6 +  If SalIsButtonChecked( hWndItem )
.head 7 -  Set bChangeSubItem = TRUE
.head 3 -  !
.head 3 +  Data Field: dfDatabase
.head 4 -  Class Child Ref Key: 1
.head 4 -  Class ChildKey: 0
.head 4 -  Class: Our_Dialog_Box
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Data
.head 5 -  Maximum Data Length: Class Default
.head 5 -  Data Type: Class Default
.head 5 -  Editable? Class Default
.head 4 -  Display Settings
.head 5 -  Window Location and Size
.head 6 -  Left: Class Default
.head 6 -  Top: Class Default
.head 6 -  Width:  Class Default
.head 6 -  Width Editable? Class Default
.head 6 -  Height: Class Default
.head 6 -  Height Editable? Class Default
.head 5 -  Visible? Class Default
.head 5 -  Border? Class Default
.head 5 -  Justify: Class Default
.head 5 -  Format: Class Default
.head 5 -  Country: Class Default
.head 5 -  Font Name: Class Default
.head 5 -  Font Size: Class Default
.head 5 -  Font Enhancement: Class Default
.head 5 -  Text Color: Class Default
.head 5 -  Background Color: Class Default
.head 5 -  Input Mask: Class Default
.head 4 -  Message Actions
.head 3 +  Data Field: dfCurrentDate
.head 4 -  Class Child Ref Key: 2
.head 4 -  Class ChildKey: 0
.head 4 -  Class: Our_Dialog_Box
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Data
.head 5 -  Maximum Data Length: Class Default
.head 5 -  Data Type: Class Default
.head 5 -  Editable? Class Default
.head 4 -  Display Settings
.head 5 -  Window Location and Size
.head 6 -  Left: Class Default
.head 6 -  Top: Class Default
.head 6 -  Width:  Class Default
.head 6 -  Width Editable? Class Default
.head 6 -  Height: Class Default
.head 6 -  Height Editable? Class Default
.head 5 -  Visible? Class Default
.head 5 -  Border? Class Default
.head 5 -  Justify: Class Default
.head 5 -  Format: Class Default
.head 5 -  Country: Class Default
.head 5 -  Font Name: Class Default
.head 5 -  Font Size: Class Default
.head 5 -  Font Enhancement: Class Default
.head 5 -  Text Color: Class Default
.head 5 -  Background Color: Class Default
.head 5 -  Input Mask: Class Default
.head 4 -  Message Actions
.head 2 -  Functions
.head 2 +  Window Parameters
.head 3 -  Receive Boolean: bChangeSubItem
.head 2 -  Window Variables
.head 2 +  Message Actions
.head 3 +  On PAM_SETINSTANCEVARS
.head 4 -  Set sDatabase = SqlDatabase
.head 3 +  On SAM_CreateComplete
.head 4 -  Set rbChangeSubItem = bChangeSubItem
.head 4 -  Call SalWaitCursor( FALSE )
