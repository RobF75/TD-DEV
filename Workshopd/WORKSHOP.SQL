CREATE TABLE SYSADM.VEHICLE (VEHICLE_ID INTEGER NOT NULL, 
VEHICLE_TYPE CHAR (40) NOT NULL, 
LOCATION CHAR (40) NOT NULL, 
MAKE CHAR (40) NOT NULL, 
MODEL CHAR (40) , 
BUILD_DATE DATE , 
VIN CHAR (40) , 
REG_NO CHAR (40) , 
ENGINE_NO CHAR (40) , 
TRANS_TYPE CHAR (40) , 
TRANS_NO CHAR (40) , 
DIFF_TYPE CHAR (40) , 
DIFF_NO CHAR (40) , 
FUEL_TYPE CHAR (20) , 
FUEL_FILTER_NO CHAR (40) , 
OIL_FILTER_NO CHAR (40) , 
AIR_FILTER_NO CHAR (40) , 
WATER_FILTER_NO CHAR (40) , 
PWR_STR_FILTER_NO CHAR (40) , 
VOLTAGE SMALLINT , 
BATTERY_TYPE CHAR (20) , 
ENGINE_OIL_TYPE CHAR (20) , 
ENGINE_OIL_CAP SMALLINT , 
TRANS_OIL_TYPE CHAR (20) , 
TRANS_OIL_CAP SMALLINT , 
DIFF_OIL_TYPE CHAR (20) , 
DIFF_OIL_CAP SMALLINT , 
PWR_STEER_OIL_TYPE CHAR (20) , 
PWR_STEER_OIL_CAP SMALLINT , 
TYRES_TYPE CHAR (20) , 
TYRES_QUANTITY SMALLINT , 
SPARK_PLUG_TYPE CHAR (20) , 
SPARK_PLUG_QUANT SMALLINT , 
SPARK_PLUG_GAP FLOAT , 
IGNITION_TIMING FLOAT , 
VALVE_CLEARANCE_IN FLOAT , 
VALVE_CLEARANCE_EX FLOAT , 
SERV_PERIOD_DAYS SMALLINT , 
SERV_DISTANCE CHAR (20) , 
HUBS_F_OIL_TYPE CHAR (20) , 
HUBS_R_OIL_TYPE CHAR (20) , 
DRIVER CHAR (40) ) PCTFREE 10
/
INSERT INTO SYSADM.VEHICLE VALUES(:1,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,:14,:15,:16,:17,:18,:19,:20,:21,:22,:23,:24,:25,:26,:27,:28,:29,:30,:31,:32,:33,:34,:35,:36,:37,:38,:39,:40,:41,:42)
\
$datatypes NUMERIC,CHARACTER,CHARACTER,CHARACTER,CHARACTER,DATE,CHARACTER,CHARACTER,CHARACTER,CHARACTER,CHARACTER,CHARACTER,CHARACTER,CHARACTER,CHARACTER,CHARACTER,CHARACTER,CHARACTER,CHARACTER,NUMERIC,CHARACTER,CHARACTER,NUMERIC,CHARACTER,NUMERIC,CHARACTER,NUMERIC,CHARACTER,NUMERIC,CHARACTER,NUMERIC,CHARACTER,NUMERIC,NUMERIC,NUMERIC,NUMERIC,NUMERIC,NUMERIC,CHARACTER,CHARACTER,CHARACTER,CHARACTER
1,"Truck","Monbulk","Scania R142M","R142M 6X4",,"1096097","ELY-102","561657","","","","","DIESEL","Z75 X2  Z159 X1","Z89A","AF472M P119372","","",24,"","del xhp",23,"85W-140",,"85W-140",,"ATF",,"11 22.5",,"",,,,,,,"","GREASE","GREASE","",
9,"Car","Monbulk","Mazda T/Cab Ute   ","B2600",,"","FCB-421","","5 SP MAN","","","","UNLEADED","Z405","Z411","A488","","",12,"","SUPER XHP",5,"HD 80W90",3,"LS90",,"ATF",,"205R16",4,"",,,,,,,"","GREASE","OIL","Toddy"
10,"Dozer","Monbulk","Fiat 8","8b",,"","","","","","","","DIESEL","","","","","",24,"","1330",,"1330",,"1330",,"",,"",,"",,,,,,,"","","80W90","",
12,"Rotary Hoes - Pedestrian","Monbulk","Howard Gem Wide","",,"","","","","","","","","","","","","",,"","",,"",,"",,"",,"",,"",,,,,,,"","","","",
13,"Rotary Hoes - Pedestrian","Hoddles","Howard Dislate 20""","",,"","","","","","","","","","","","","",,"","",,"",,"",,"",,"",,"",,,,,,,"","","","",
14,"Rotary Hoes - Tractor","Monbulk","Agric. 60""","",,"","","","","","","","","","","","","",,"","",,"",,"",,"",,"",,"",,,,,,,"","","","",
15,"Rotary Hoes - Tractor","Hoddles","Howard NR40 80""","",,"","","","","","","","","","","","","",,"","",,"",,"",,"",,"",,"",,,,,,,"","","","",
16,"Rotary Hoes - Tractor","Taggerty","Celli 6'","",,"","","","","","","","","","","","","",,"","",,"",,"",,"",,"",,"",,,,,,,"","","","",
17,"Pump","Shangrala","Deutz 4/cge - Diesel","F4L912",,"","","27571056","N/A","","N/A","","DIESEL","Z75","Z72","OIL BATH  ","AIR  COOLED","N/A",12,"","1330",,"N/A",,"N/A",,"N/A",,"N/A",,"",,,,,,,"","N/A","N/A","",
18,"Pump","Monbulk","K&L Model Model 70","",,"","","","","","","","","","","","","",,"","",,"",,"",,"",,"",,"",,,,,,,"","","","",
19,"Pump","Hoddles","Perkins 3","4-236c",,"","","","N/A","","N/A","","DIESEL","R2132P","z38","hda  5667","","N/A",12,"","1330",,"N/A",,"N/A",,"N/A",,"N/A",,"N/A",,,,,,,"","N/A","N/A","",
23,"Truck","Monbulk","Scania 111","LK111 HS",,"","BLZ-O37","5207643","GR860","","","","DIESEL","Z75 X2","Z89A","","WF2054","",24,"","del xhp",,"85W-140",,"85W-140",,"ATF",,"11 22.5",,"",,,,,,,"","GREASE","OIL","",
24,"Trailer","Monbulk","40' Boggy","",,"","","","","","","","","","","","","",,"","",,"",,"",,"",,"",,"",,,,,,,"","","","",
26,"Car","Monbulk","BMW","318I E36",,"WBACA42OOOAL24880","NJO-789","","AUTO","","","","UNLEADED","Z168","BMW","A478","","",12,"","",4,"MF220.ATF",3,"HD80W90",1,"ATF",,"",,"NGK-R-BKR6EK",4,,,,,,"","","","Wes"
27,"Car","Monbulk","Holden T/Cab Ute Rodeo","Rodeo  4X4",,"JAATF5ITH7100473","ECI-511","","5 SP MAN","","","","UNLEADED","Z200","Z79A","A455","","",12,"","SUPER XHP",,"",,"HD80W90",,"ATF",,"205R16",,"",,,,,,,"","GREASE","OIL","Spare"
28,"Car","Monbulk","Mazda T/Cab Ute","B2600 4X4 ",,"JMOUFYO63000205193","EIS-657","","5 SP MAN","","","","UNLEADED","Z405","Z411","A488","","",12,"","SUPER XHP",5,"HD 80W90",3,"LS90",,"ATF",,"205R16",4,"",,,,,,,"","GREASE","OIL","Spare"
29,"Car","Monbulk","Holden Jackaroo","Jackaroo 4X4 UBS 25",,"JACUBS25GP7101159","NOJ-806","029382","AUTO","RMQ","","","UNLEADED","GM 25121113  Z200","Z79A","GM 97039002","","",12,"","SUPER XHP",,"MF220.ATF",,"LS90",,"ATF",,"",,"NKG-BKR6E-11",,,,,,,"","","","Graham"
30,"Car","Monbulk","Holden Astra","Astra  LD",,"LD8LN68 P21432","DKZ-464","16LF 25006925","5 SP MAN","","","","UNLEADED","","Z154","A329","","",12,"","SUPER XHP",,"",,"HD80W90",,"ATF",,"",,"",,,,,,,"","","","Office"
31,"Car","Monbulk","Ford Ute","XE",,"JG40AB29842C","CEW-782","","3 SP  MAN","78DA7003DA","","","SUPER","","Z9","A326A","","",12,"","SUPER XHP",,"HD 80W90",,"HD80W90",,"",,"",,"",,,,,,,"","GREASE","OIL","Workshop"
32,"Car","Monbulk","Mazda T/Cab Ute   ","B2600",,"JMOUFO6300239827","FDX-595","","","","","","UNLEADED","","","","","",12,"","SUPER XHP",,"",,"",,"ATF",,"205R16",,"",,,,,,,"","GREASE","OIL","Bill"
33,"Car","Monbulk","Mazda T/Cab Ute  ","B2600 ",,"","FCN-923","","5 SP MAN","","","","ULP/GAS","","","","","",12,"","SUPER XHP",,"HD 80W90",,"LS90",,"ATF",,"205R16",,"NKG-BKR6E-11",4,,,,,,"","GREASE","OIL","David"
34,"Car","Monbulk","Nissan Maxima   ","Maxima J30 ",,"JJN100HJ30A0002297","EOM-299","V6  30(E)","AUTO","RE4F02AFH36 TRANSAXLE ","","","UNLEADED","Z201","Z145A","A360","","",12,"","SUPER XHP",,"MF220.ATF",,"LS90",,"ATF",,"",,"",,,,,,,"","","","Dani"
35,"Car","Monbulk","Toyota Landcruiser","FJ45RP-KQ",,"FJ45-193010","BDX-137","2F","4 SPD","H41","KO82","","SUPER","Z196","Z9","A328","","",12,"","SUPER XHP",7,"HD 80W90",4,"HD80W90",3,"",,"7.50-16",,"NKG-BP5EY",6,.9,,,,,"","GREASE","GREASE","Spare / Hoddles Ute"
36,"Car","Monbulk","Toyota Hiace Bus","",,"RH42RB-JRGQ","DKJ-O56","","4 SPD","","","","SUPER","","Z37","A203A","","",12,"","SUPER XHP",,"HD 80W90",,"HD80W90",,"",,"",,"",,,,,,,"","GREASE","","Bus"
37,"Car","Monbulk","Suzuki 4X4 Ute  ","SJ40T",,"SJ40T107577","CHX-617","F10A-695840","4 SPD","","","","SUPER","z14","Z125","A324","n/a","n/a",12,"","SUPER XHP",3,"HD 80W90",1,"HD80W90",1,"N/A",,"6.OO-16",4,"BP5ES",4,.8,,,0,,"","GREASE","OIL","Prop Shed"
38,"Car","Taggerty","Suzuki 4X4 Ute","SJ40T",,"SJ40T100542","NOT REG","F10A","4 SPD","","","","SUPER","Z14","Z125","A324","","",12,"","SUPER XHP",,"HD 80W90",,"HD80W90",,"",,"6.OO-16",,"",,,,,,,"","","","",
39,"Car","Monbulk","Toyota  Hiace Com ","RZH125R",,"JT743UHC500001147","NDD-913 ","2RZ ","5 SP MAN","","","","UNLEADED","23300-75020","Z10--Z9","A1215","","",12,"","SUPER XHP",4,"75W-90",2,"HD80W90",2,"ATF",,"",,"NKG BPR5EY",4,.9,,,,,"","GREASE","OIL","Bus"
40,"Car","Monbulk","Toyota Landcruiser","HZJ75RP-MRQ",,"JT3PJ7508520006","NKY-204","1HZ","5 SP MAN","H55F","KO85","","DIESEL","04234-6810-P         SEC  Z380","Z334","A340","","",12,"","SUPER XHP",,"HD 80W90",,"HD80W90",,"ATF",,"7.50-16",,"",,,,,,,"","GREASE","OIL","Mal"
41,"Car","Taggerty","Toyota Landcruiser","HJ45-RP-KQ",,"HJ45 031629","ALK-925","","4 SPD","","","","DIESEL","","R2374P","","","",12,"","SUPER XHP",,"HD 80W90",,"HD80W90",,"",,"7.50-16",,"",,,,,,,"","GREASE","OIL","Taggerty"
42,"Car","Monbulk","Toyota Dyna 150","150-LY61R-MBDQ",,"JT73IL76107000348","NME-024","","5 SP MAN","","","","DIESEL","Z380","Z9","A215X","","",12,"","del xhp",6,"75W-90",3,"HD80W90",3,"ATF",,"7.00x15",4,"",,,,,,,"","GREASE","OIL","Glenn"
43,"Car","Monbulk","Toyota  HILUX","RN46",,"RN46014277","ANU-926","","4 SPD","L40","G142","","SUPER","Z366","Z37","A310","","",12,"","SUPER XHP",6,"HD 80W90",,"HD80W90",,"",,"7.50-16",4,"NKG-BP5EY",4,,7,,,,"","GREASE","OIL","Gary Dowd"
44,"Car","Monbulk","Toyota Landcruiser","FZR80R-GNPNKQ",,"JT711UJ8OO8O16566","NCU-651","1FZ-FE","AUTO","","","","UNLEADED","","Z9","A340","","",12,"","SUPER XHP",,"MF220.ATF",,"LS90",,"ATF",,"",,"",,,,,,,"","GREASE","OIL","Don"
45,"Car","Monbulk","Subaru  Impreza  ","",,"","FLS-426","","","","","","","","","","","",12,"","",,"",,"",,"",,"",,"",,,,,,,"","","","Lizzy"
46,"Car","Monbulk","Nissan  720  T/Cab","UJY720TMBY",,"UJY720927740","NVV-021","SD25-2488","5 SP MAN","","","","DIESEL","Z169A","Z115","","","",,"","del xhp",,"HD 80W90",,"HD80W90",,"ATF",,"",4,"",,,,,,,"","GREASE","OIL","Ernie"
47,"Car","Monbulk","Suzuki Vitara","",,"","NMI-891","","","","","","","","","","","",12,"","",,"",,"",,"",,"",,"",,,,,,,"","","","Dawn"
48,"Car","Monbulk","Suzuki 4X4 Seira   ","",,"","DSY-002","","","","","","UNLEADED","","","","","",12,"","",,"",,"",,"",,"",,"",,,,,,,"","","","Jack"
49,"Car","Monbulk","Mercedes  ","420 SEL Saloon",,"L26035 2A 272823","CYG-419","","AUTO","","","","UNLEADED","","","","","",12,"","",,"",,"",,"",,"",,"",,,,,,,"","","","Don"
50,"Tractor","Monbulk","Kubota  No:1","M6030 DT",,"50525 ","","","4SPD+HI/LO+CREEP","","","","DIESEL","R2132P","Z64","","","",12,"","SUPER-UNI",,"SUPER -UNI",,"SUPER-UNI",,"ATF",,"",,"",,,,,,,"","80W-90","","",
51,"Tractor","Monbulk","Fiat 550 Forklift No:2","550",,"","","","4SPD+HI/LO","","","","DIESEL","R2132P","Z49A","OIL BATH","","",12,"","SUPER-UNI",,"SUPER -UNI",,"SUPER-UNI",,"SUPER-UNI",,"",,"",,,,,,,"","GREASE","80W90","",
52,"Tractor","Monbulk","Fiat 540 No:3","540 SPRAY TRACTOR",,"596134","","","4SPD+HI/LO","","","","DIESEL","R2132P   X 2","Z49A","OIL BATH","","WASHABLE",12,"","SUPER-UNI",,"SUPER -UNI",,"SUPER-UNI",,"SUPER-UNI",,"",,"",,,,,,,"","GREASE","80W90","",
53,"Tractor","Monbulk","Fiat 600 No:4","600",,"712590","","","4SPD+HI/LO","","","","DIESEL","R2132P   X2","Z49A","OIL BATH","","",12,"","SUPER-UNI",,"SUPER -UNI",,"SUPER-UNI",,"N/A",,"",,"",,,,,,,"","GREASE","80W90","",
54,"Tractor","Monbulk","Fiat 640 4X4  No:5","640",,"486436","","","4SPD+HI/LO+CREEP","","","","DIESEL","R2132P","Z49A","OIL BATH","","",12,"","SUPER-UNI",,"SUPER -UNI",,"SUPER-UNI",,"SUPER-UNI",,"",,"",,,,,,,"","","80W90","",
55,"Tractor","Monbulk","Fiat 540 No:6 ","540",,"","","","4SPD+HI/LO","","","","DIESEL","","","","","",12,"","",,"",,"",,"",,"",,"",,,,,,,"","","","",
56,"Tractor","Unknown","Ghost No:7","",,"","","","","","","","","","","","","",,"","",,"",,"",,"",,"",,"",,,,,,,"","","","",
57,"Tractor","Monbulk","Fiat 415 No:8","415",,"733938","","","4SPD+HI/LO","","","","DIESEL","","","","","",24,"","SUPER-UNI",,"SUPER -UNI",,"SUPER-UNI",,"N/A",,"",,"",,,,,,,"","GREASE","80W90","",
58,"Tractor","Monbulk","Fiat 666 No:9","666",,"3977370","","","4SPD+HI/LO","","","","DIESEL","R2132P","Z49A","ARM 10-1222   P112-3160","HYD  FT4921","",12,"","SUPER-UNI",,"424 MOBIL FLUID",,"424 MOBIL FLUID",,"ATF",,"",,"",,,,,,,"","GREASE","80W90","",
59,"Tractor","Monbulk","Fiat 450 No:10","450",,"365174","","","","","","","","","","","","",12,"","SUPER-UNI",,"SUPER -UNI",,"SUPER-UNI",,"SUPER-UNI",,"",,"",,,,,,,"","GREASE","80W90","",
60,"Tractor","Monbulk","Fiat 640 No:11","640  4X4",,"","","","","","","","DIESEL","R2132P","Z49A","OIL BATH","","",12,"","SUPER-UNI",,"SUPER -UNI",,"SUPER-UNI",,"SUPER-UNI",,"",,"",,,,,,,"","","80W90","",
61,"Tractor","Monbulk","Kubota 7500  No:12","M7500 DT",,"51689","","","","","","","DIESEL","R2132P  X 2","Z64","995032  995571","","",12,"","SUPER-UNI",,"SUPER -UNI",,"SUPER-UNI",,"ATF",,"",,"",,,,.01,0,,"","80W-90","OIL","",
62,"Tractor","Monbulk","Kubota Narrow No:13","M6030 DT ",,"50205","","","","","","","DIESEL","R2132P","Z64","ARM995571=995032","","",12,"","SUPER-UNI",,"",,"",,"ATF",,"",,"",,,,,,,"","80W-90","OIL","",
63,"Tractor","Monbulk","Kubota 4030 No:14","M4030 DT ",,"50317","DYA-014","2602-DI-A-66086","","","","","DIESEL","Z107","Z131A","","HYD 35861-82630","WASHABLE",12,"","SUPER-UNI",14,"424 MOBIL FLUID",48,"424 MOBIL FLUID",,"10W30",2,"",4,"",,,,,,,"","80W-90","OIL","",
64,"Tractor","Monbulk","Kubota 7030 No:15","M7030 DT",,"50208","","","","","","","DIESEL","R2132P","","","","",12,"","SUPER-UNI",,"SUPER -UNI",,"SUPER-UNI",,"ATF",,"",,"",,,,,,,"","80W-90","OIL","",
65,"Tractor","Monbulk","Iseki  Digger No:16","T6500 4X4",,"T6500-01204","","","","","","","DIESEL","ISEKI","R2435P","ARM992350=101246","","",24,"","SUPER-UNI",,"",,"",,"ATF",,"",,"",,,,,,,"","80W-90","80W90","",
66,"Tractor","Monbulk","Kubota MOD  No:17","M5970DTB",,"","","","","","","","DIESEL","R2132P","Z64","","","",12,"90 SERIES","SUPER-UNI",10,"424 MOBIL FLUID",55,"424 MOBIL FLUID",,"ATF",,"",,"",,,,,,,"","80W-90","OIL","",
67,"Tractor","Monbulk","Fiat 450 No:18","450",,"365168","","","","","","","DIESEL","R2132P","Z49A","","","",12,"","SUPER-UNI",,"SUPER -UNI",,"SUPER-UNI",,"",,"",,"",,,,,,,"","GREASE","80W90","",
68,"Tractor","Monbulk","Fiat 415 No:19","415",,"  03080M","","415--7262113","6 SPD","","SINGE SPEED","","DIESEL","R2115P  X2","R3PB","OIL BATH","","",24,"80  SERIES","SUPER-UNI",,"SUPER -UNI",,"SUPER-UNI",,"N/A",,"",,"",,,,,,0,"","GREASE","OIL","",
69,"Tractor","Monbulk","Leyland No:20","154D",,"308144/Z","","","","","","","DIESEL","","","","","",12,"","SUPER-UNI",,"HD 80W90",,"HD80W90",,"SUPER-UNI",,"",,"",,,,,,,"","GREASE","80W90","",
70,"Tractor","Monbulk","Kubota 4030 Fork No:21","M4030 DT",,"50318","DYA-015","","","","","","DIESEL","","","","","",12,"","SUPER-UNI",,"424 MOBIL FLUID",,"424 MOBIL FLUID",,"ATF",,"",,"",,,,,,,"","80W-90","OIL","",
71,"Tractor","Monbulk","Fiat 450 No:22","450",,"3651174","","","","","","","DIESEL","R2132P","Z49A","","","",12,"","SUPER-UNI",,"SUPER -UNI",,"SUPER-UNI",,"",,"",,"",,,,,,,"","GREASE","80W90","",
72,"Tractor","Monbulk","Fiat 540 No:23","540",,"564873","","","","","","","DIESEL","R2132P","Z49A","","","",12,"","SUPER-UNI",,"SUPER -UNI",,"SUPER-UNI",,"",,"",,"",,,,,,,"","GREASE","80W90","",
73,"Tractor","Taggerty","Ditch Witch No:24","OLD",,"","","WISCON","","","","","","","","","","",12,"","",,"",,"",,"",,"",,"",,,,,,,"","","","",
74,"Tractor","Monbulk","Kubota 245 No:25","L245H CHOP HOE",,"","","","","","","","DIESEL","Z132","Z68","ARM 10-2745","","",12,"N70Z","SUPER-UNI",,"SUPER -UNI",,"SUPER-UNI",,"N/A",,"",,"",,,,,,,"","GREASE","80W90","",
75,"Tractor","Monbulk","Kubota 245 No:26","L245H CHOP HOE",,"12943","","","","","","","DIESEL","Z132","Z63","ARM-10-2745","","",12,"N70Z","SUPER-UNI",,"SUPER -UNI",,"SUPER-UNI",,"N/A",,"",,"",,,,,,,"","GREASE","80W90","",
77,"Tractor","Monbulk","Iseki No:28","2160 4X4",,"","","","","","","","DIESEL","","","","","",12,"","",,"",,"",,"",,"",,"",,,,,,,"","","","",
78,"Tractor","Pots","Kubota No:29","L2950 4X4",,"L2850D81235","NFG-505","","","","","","DIESEL","KUBOTA","Z89A","ARM10-1275=P138627","","KUBOTA",12,"","SUPER-UNI",,"424 MOBIL FLUID",,"SUPER-UNI",,"",,"",,"",,,,,,,"","80W-90","OIL","",
79,"Tractor","Monbulk","Kubota 7030 No:30","M7030DT 4X4",,"71351","NFG-516","","","","","","DIESEL","R2132P","Z64","","HYD  KUBOTA","",12,"","SUPER-UNI",,"SUPER -UNI",,"SUPER-UNI",,"ATF",,"",,"",,,,,,,"","80W-90","OIL","",
80,"Tractor","Monbulk","Ditch Witch No:31","3210 DB DEUTZ 2 CYL",,"6E1438","","F2L511","","","","","DIESEL","Z167","Z63","P11-9775","","",12,"","",,"",,"",,"",,"",,"",,,,,,,"","","","",
81,"Tractor","Monbulk","Kubota 7030 No:32","M7030  DT",,"M70-71228","NFG-502","","","","","","DIESEL","R2132P","Z64","","","",12,"","SUPER-UNI",,"SUPER -UNI",,"SUPER-UNI",,"ATF",,"",,"",,,,,,,"","80W-90","OIL","",
82,"Tractor","Monbulk","Kubota 4030 No:33","M4030DT",,"60219","NFG-503","2602-DI-A113692","","","","","DIESEL","Z10-7","Z131A","","","",12,"","SUPER-UNI",14,"424 MOBIL FLUID",48,"424 MOBIL FLUID",,"10W30",2,"",,"",,,,,,,"","80W-90","OIL","",
83,"Tractor","Monbulk","Fiat 6066 No:34","6066/20",,"385452","","","","","","","DIESEL","R2132P","Z49A","ARM10-1222","","",12,"","SUPER-UNI",,"424 MOBIL FLUID",,"424 MOBIL FLUID",,"ATF",,"",,"",,,,,,,"","GREASE","80W90","",
84,"Tractor","Monbulk","Kubota 245 No:35","L245H  TOP DRESSER",,"","","","","","","","DIESEL","","","","","",12,"","SUPER-UNI",,"SUPER -UNI",,"SUPER-UNI",,"N/A",,"",,"",,,,,,,"","GREASE","80W90","",
86,"Tractor","Monbulk","Kubota 5950 No:37","M5950 CABIN 4X4",,"","","","","","","","DIESEL","","","","","",12,"","",,"",,"",,"",,"",,"",,,,,,,"","","","",
85,"Tractor","Taggerty","Kubota 2WD No:36","M6030 ",,"10143","","D-3200-1A","","","","","DIESEL","R2132P","Z64","","","",12,"","SUPER-UNI",,"SUPER -UNI",,"SUPER-UNI",,"ATF",,"",,"",,,,,,,"","GREASE","OIL","",
87,"Tractor","Taggerty","Kubota 6950 Fork No:38","M6950 DT",,"","","","","","","","DIESEL","","","","","",12,"","SUPER-UNI",,"",,"",,"ATF",,"",,"",,,,,,,"","80W-90","","",
88,"Truck","Monbulk","Mitsubishi Canter","",,"6F6EHDIIDKA021764","NHD-325","","5 SP MAN","","","","DIESEL","Z188","Z162 b/p z251","hda  5804","","",24,"","1330",,"85W-140",,"85W-140",,"ATF",,"7.00----16",,"",,,,,,,"","GREASE","GREASE","Rob Rich"
89,"Truck","Monbulk","Bedford","TK4591",,"MO27487","HYH-319","","4 SPD","","","","SUPER","","R2069P","","","",12,"","SUPER XHP",,"HD 80W90",,"85W-140",,"N/A",,"7.5O -20",,"CHAMPION J8",6,,,,,,"","GREASE","","",
90,"Truck","Monbulk","Kenworth","SHIT HEAP",,"401724","ETP-650","23131166","900 SERIES","RT-915","380 EATON","2 OFF","DIESEL","Z159","HDZ232","P117332","LFW-4016","",24,"","1200 SERIES",,"1350",,"85W-140",,"ATF",,"11 22.5",,"",,,,,,,"","80W-90","","",
91,"Truck","Monbulk","Ford Trader","CREW CAB",,"SGDGGP--41417","FEK-396","3.5 LITRE","5 SP MAN","","","","DIESEL","R2444P","Z175--BLF R2453","ARM99-5082","","",12,"","",,"",,"",,"",,"",,"",,,,,,,"","","","",
92,"Truck","Monbulk","Ford Cargo","0913",,"","FFQ-503","6.0LTR  363TC","6 SPD","","","","DIESEL","R2132P  X2","EFL 255","","","",12,"","1330",,"85W-140",,"85W-140",,"N/A",,"7.5O -20",,"",,,,,,,"","GREASE","","",
93,"Truck","Monbulk","Nissan Diesel UD","CMF87KHSB",,"JNBCMF87KOOOOO238","DZS-124","FE6 -034188B","6 SPD","","","","DIESEL","R2452P   Z192","LF3436","AF1768M","","",24,"","del xhp",,"HD 80W90",,"HD80W90",,"ATF",,"8.25--16",6,"",,,,,,,"","GREASE","","",
94,"Truck","Monbulk","Bedford-Isuzu","SPG540",,"","BSO-586","E120 1217000391","6 SPD","","","","DIESEL","R2392P","R2364P","99--5005","","",24,"","1330",,"HD 80W90",,"HD80W90",,"ATF",,"10.OO--20",8,"",,,,,,,"","GREASE","GREASE","",
95,"Truck","Monbulk","Isuzu","FVR5MF",,"JALFVR13NG3551160","EEM-665","65A1--T","10  SPD  RR","RT6610","W3A","","DIESEL","R2199P  X3","1132401632GM","","","",24,"","del xhp",,"1350",,"HD80W90",,"ATF",,"11 22.5",,"",,,,,,,"","GREASE","","",
96,"Truck","Monbulk","Scania 112","R112M",,"1101195","DLK-473","","10  SPD","","","2 OFF","DIESEL","Z75  X2","Z89A","HDA5321","PFC16A","",24,"","del xhp",,"85W-140",,"85W-140",,"ATF",,"11 22.5",,"",,,,,,,"","GREASE","","",
97,"Truck","Monbulk","Scania 112","R112M",,"1111687","ESI-433","DSC1101   5283667","10  SPD","","","","DIESEL","Z75  X2","Z89A","HDA5321PFC16A","","",24,"","del xhp",,"85W-140",,"85W-140",,"ATF",,"11 22.5",,"",,,,,,,"","GREASE","","",
98,"Truck","Monbulk","Isuzu  450MED","FSR  5MF",,"JALFSR11HK3602067","NPD-408","LJ2-485338","5 SP MAN","","","","DIESEL","R2199P  X2","R2390P","P812105","","",24,"","del xhp",,"HD 80W90",,"HD80W90",,"ATF",,"",,"",,,,,,,"","GREASE","","",
99,"Truck","Monbulk","Bedford","TK",,"","NOT  REG","","","","","","","","","","","",,"","",,"",,"",,"",,"",,"",,,,,,,"","","","",
100,"Dozer","Monbulk","Fiat 10  ","10  C",,"","","","","","","","DIESEL","","","","","",24,"","1330",,"1330",,"1330",,"",,"",,"",,,,,,,"","","80W90","",
101,"Pump","Vegie Patch","Same","1053p",,"","","1053P  31398","","","","","DIESEL","R2132P","Z64","","AIR  COOLED","N/A",12,"","1330",,"N/A",,"N/A",,"N/A",,"N/A",,"N/A",,,,,,150,"","N/A","N/A","",
102,"Pump","Taggerty","Same","1055P",,"","","","N/A","","N/A","","DIESEL","R2388P","Z64","P770197 +O198","AIR COOLED","N/A",12,"","1330",,"N/A",,"N/A",,"N/A",,"N/A",,"N/A",,,,,,,"","N/A","N/A","",
103,"Pump","Taggerty","Lister","",,"","","","N/A","","N/A","","DIESEL","","","","","",,"","",,"N/A",,"N/A",,"N/A",,"N/A",,"N/A",,,,,,,"","N/A","N/A","",
104,"Pump","Hoddles","Same","1055P",,"","","1055P82-8816","N/A","","N/A","","DIESEL","r2388p","z64","af-4748k","","",12,"","1330",,"N/A",,"N/A",,"N/A",,"N/A",,"N/A",,,,,,,"","N/A","N/A","",
105,"Pump","Beenak","Deutz","",,"7760639","","","N/A","","N/A","","DIESEL","Z75","Z72","OIL BATH","","",12,"","1330",,"N/A",,"N/A",,"N/A",,"N/A",,"N/A",,,,,,,"","N/A","OIL","",
106,"Pump","Monbulk","Perkins","236c",,"236c -1241l","","","N/A","","N/A","","DIESEL","R2132P","Z38","hda  5667","","",12,"","1330",,"N/A",,"N/A",,"N/A",,"N/A",,"N/A",,,,,,,"","N/A","N/A","",
107,"Trailer","Monbulk","Bogie Flat Top","FLAT TOP",,"","00508S","N/A","N/A","","N/A","","N/A","N/A","N/A","N/A","N/A","N/A",12,"N/A","N/A",,"N/A",,"SUPER-UNI",,"N/A",,"10.OO--20",,"N/A",,,,,,,"","N/A","N/A","",
108,"Trailer","Monbulk","Tri Pan","",,"","00509S","N/A","N/A","","N/A","","N/A","","","","","",24,"N/A","N/A",,"N/A",,"N/A",,"N/A",,"8.25 --15",,"N/A",,,,,,,"","80W-90","80W90","",
109,"Trailer","Monbulk","Dog","",,"","J93728","N/A","N/A","","N/A","","N/A","","","","","",24,"N/A","N/A",,"N/A",,"N/A",,"N/A",,"8.25--16",,"N/A",,,,,,,"","GREASE","GREASE","",
110,"Trailer","Monbulk","Tri Pan Reyco","TRANSPRO R1-12-12.5",1981-12-22,"","00510S","","N/A","","N/A","","N/A","","","","","",24,"N/A","del xhp",,"N/A",,"N/A",,"N/A",,"8.25 --15",,"N/A",,,,,,,"","80W-90","80W90","",
111,"Trailer","Monbulk","Bogie Pan","",,"","17304S","","N/A","","N/A","","N/A","","","","","",24,"N/A","N/A",,"N/A",,"N/A",,"N/A",,"8.25 --15",,"N/A",,,,,,,"","GREASE","GREASE","",
112,"Trailer","Monbulk","Bogie Flat Top","",,"","00511S","","N/A","","","","N/A","","","","","",12,"N/A","N/A",,"N/A",,"N/A",,"N/A",,"10.OO--20",,"N/A",,,,,,,"","GREASE","GREASE","",
113,"Trailer","Monbulk","Low Loader","OLD  S/AXLE",,"","173035","","N/A","","N/A","","N/A","","","","","",12,"N/A","N/A",,"N/A",,"N/A",,"N/A",,"10.OO--20",,"N/A",,,,,,,"","GREASE","80W90","",
114,"Trailer","Monbulk","Britstand Low Loader","",,"","204175","","N/A","","N/A","","N/A","","","","","",12,"N/A","N/A",,"N/A",,"N/A",,"ATF",,"8.25 --15",,"N/A",,,,,,,"","GREASE","80W90","",
115,"Trailer","Monbulk","45' Bogie","",,"","","","","","","","","","","","","",,"","",,"",,"",,"",,"",,"",,,,,,,"","","","",
116,"Trailer","Monbulk","45' Tri Flat Top","",,"","","","","","","","","","","","","",,"","",,"",,"",,"",,"",,"",,,,,,,"","","","",
121,"Motorbikes","Monbulk","Suzuki  DR250","DR250",,"","","","","","","","","","","","","",,"","",,"",,"",,"",,"",,"",,,,,,,"","","","",
119,"Car","Monbulk","Toyota Hiace Bus","RH42RB",,"RH42B-004040","DFV-064","18R--2128196","4 SPD COL","","","","SUPER","Z91","Z37","A203A","N/A","N/A",12,"50  SERIES","SUPER XHP",,"HD 80W90",,"HD80W90",,"N/A",,"185R--14 LT",4,"NKG-BP5EY",4,.9,,,,,"","GREASE","OIL","Bus"
120,"Car","Monbulk","Jeep   ","Cherokee Sport",,"","RRJ-993","","","","","","","","","","","",,"","",,"",,"",,"",,"",,"",,,,,,,"","","","Wes"
122,"Motorbikes","Monbulk","Suzuki  4x4","4X4",,"","","","","","","","","","","","","",,"","",,"",,"",,"",,"",,"",,,,,,,"","","","",
123,"Trailer","Monbulk","Farm Trailers","",,"","","","","","","","","","","","","",,"","",,"",,"",,"",,"",,"",,,,,,,"","","","",
124,"Generators","Monbulk","Office","",,"","","","","","","","","","","","","",,"","",,"",,"",,"",,"",,"",,,,,,,"","","","",
125,"Generators","Monbulk","Don's House","",,"","","","","","","","","","","","","",,"","",,"",,"",,"",,"",,"",,,,,,,"","","","",
126,"Generators","Monbulk","Graham","",,"","","","","","","","","","","","","",,"","",,"",,"",,"",,"",,"",,,,,,,"","","","",
127,"Generators","Monbulk","Honda Portable","",,"","","","","","","","","","","","","",,"","",,"",,"",,"",,"",,"",,,,,,,"","","","",
130,"Miscellaneous","Monbulk","Gems","",,"","","","","","","","","","","","","",,"","",,"",,"",,"",,"",,"",,,,,,,"","","","",
131,"Dozer","Monbulk","KOMATSU","GD 300",,"","","","10  SPD","","","","DIESEL","","","","","",,"","",,"",,"",,"",,"",,"",,,,,,,"","","","",
/
CREATE UNIQUE INDEX SYSADM.PKVEHICLE ON SYSADM.VEHICLE(VEHICLE_ID) PCTFREE 10
/
CREATE TABLE SYSADM.VEHICLE_CHECK_LIST (CHECK_LIST_ID INTEGER NOT NULL, 
VEHICLE_TYPE CHAR (40) NOT NULL, 
SEQ_NO INTEGER NOT NULL, 
LEFT_CONDITION CHAR (80) , 
RIGHT_CONDITION CHAR (80) ) PCTFREE 10
/
INSERT INTO SYSADM.VEHICLE_CHECK_LIST VALUES(:1,:2,:3,:4,:5)
\
$datatypes NUMERIC,CHARACTER,NUMERIC,CHARACTER,CHARACTER
51,"Tractor",190,"   clamps and fittings","  U bolts & pivots.Grease all points"
47,"Tractor",100,"[] Add fuel conditioner","   wipers and washers"
52,"Tractor",210,"   tighten all nuts, clamps & ","   gear case"
53,"Tractor",220,"   fittings (incl. exhaust brake)","[] Check / Drain & refill power "
49,"Tractor",120,"[] Check maximum engine rev's","[] Check operation of heater &"
48,"Tractor",110,"[] Lift pump filter","[] Check condition of wiper blades"
54,"Tractor",230,"[] Check adjust idle speed","   steering oil"
50,"Tractor",140,"[] Check / Tighten all air intake","[] Check radio-CB,air con&int lights"
214,"Car",35,"[] Check condition & adjust fan belt","[] Check all tailshafts-slip joints"
213,"Car",30,"[] Check /drain/refill coolant level","   transfer case and diffs"
216,"Car",45,"[] Clean fuel sediment bowl","   bearings"
215,"Car",40,"[] Check / clean /replace air filter","   universals, mountaing plates &"
217,"Car",50,"[] Change fuel filters","[] Check all gear change controls"
218,"Car",55,"[] Check / adjust tappet clearance","[] Check operation of clutch /adjust"
219,"Car",60,"[] Check / Tighten all air intake","[] Grease drive line"
221,"Car",70,"   system nut clamps and flanges","STEERING BRAKES:"
222,"Car",75,"[] Check/ Tighten all radiator hose","[] Check steering rods, linkages &"
226,"Car",95,"[] Check exhaust system, tighten all","   Grease all points"
224,"Car",85,"[] Check/Tighten fuel system clamps","[] Check front & rear suspension"
225,"Car",90,"   and fittings","   U bolts, shackle bushes"
223,"Car",80,"   clamps and fittings","   king pins - grease all points"
228,"Car",105,"   (including exhaust brake)","   gear case"
227,"Car",100,"   nuts, clamps & fittings","[] Check / Top up steering bevel"
229,"Car",110,"[] Check adjust idle speed","[] Check Brake Lines & hoses, cables"
260,"Dozer",35,"[] Change fuel filters","   wipers and washers"
261,"Dozer",40,"[] Add fuel conditioner","[] Check condition of wiper blades"
259,"Dozer",30,"[] Check /drain/refill coolant level","   plugs + engine stop"
258,"Dozer",25,"[] Replace coolant filter","[] Check operation of starter & glow"
264,"Dozer",55,"[] Check / Tighten all radiator hose","[]Check/Top up steer.level gear case"
262,"Dozer",45,"[] Check / Clean lift pump filter","[] Check heater & demister fan"
263,"Dozer",50,"   cooling fins","   king pins - grease all points"
46,"Tractor",90,"[] Change fuel filters","[] Check operation of windscreen"
44,"Tractor",40,"[] Replace coolant filter","[] Check operation of starter & glow"
43,"Tractor",30,"   Bypass Filter","[] Test, check and top up battery"
45,"Tractor",50,"[] Check /drain/refill coolant level","   plugs + engine stop"
42,"Tractor",20,"[] Change Oil & Filters","[] Inspect all wiring & connections"
41,"Tractor",10,"ENGINE:","ELECTRICAL:"
55,"Tractor",240,"[] Clean radiator screen","[] Check brake lines, hoses, cables"
56,"Tractor",250,"[] Check / repair and list any oil","   & linkages"
57,"Tractor",260,"   leaks or faults","[] Check / Change brake fluid levels"
58,"Tractor",270,"TRANSMISSION AND HYDRAULICS:","[] Adjust foot brakes, linings/pads"
59,"Tractor",280,"[] Check for oil leaks faults in","   Front                        %"
60,"Tractor",290,"   gear box, diff and tailshaft","   Rear                         %"
61,"Tractor",300,"[] Check / change oils - gear box","[] Adjust handbrake"
62,"Tractor",310,"   transfer case & diffs+ wheel hubs","[] Check wheel retaining nuts"
63,"Tractor",320,"[] Change transmission filter","[] Check air / water pressure of"
64,"Tractor",330,"[] Change hydraulics filter","   all tyres including spare"
65,"Tractor",340,"[] Check all tailshafts-slip joints","[] Check tyre wear"
78,"Tractor",670,"","[] Road test steering operation"
79,"Tractor",680,"","[] Road test clutch operation"
267,"Dozer",70,"[] Check exhaust system, tighten all","   clutchs + brakes"
268,"Dozer",75,"   nuts, clamps & fittings","[] Check all brake hoses, lines, "
269,"Dozer",80,"   (including exhaust brake)","   cables + linkages"
270,"Dozer",85,"[] Check adjust idle speed","[] Check / Change brake fluid+levels"
271,"Dozer",90,"[] Clean radiator screen","[] Adjust foot brakes, linings/pads"
272,"Dozer",95,"[] Check / repair and list any oil","   Front                        %"
273,"Dozer",100,"   leaks or faults","   Rear                         %"
265,"Dozer",60,"   clamps and fittings","[] Check operation of steering "
275,"Dozer",110,"[] Check for oil leaks faults in","[] Check wheel retaining nuts"
276,"Dozer",115,"   gear box, diff and tailshaft","[] Check air pressure of all tyres"
277,"Dozer",120,"[] Change Transmission filter","   Rear            %               %"
278,"Dozer",125,"[] Change hydraulics filter","[] Check wheel bearings"
279,"Dozer",130,"[] Check all tailshafts-slip joints","[] Check track adjustment, sprockets"
280,"Dozer",135,"[] Check all gear change controls","   (Door operation, windscreen etc)"
281,"Dozer",140,"[] Grease drive line","[] Road test clutch operation"
274,"Dozer",105,"TRANSMISSION AND HYDRAULICS:","[] Adjust handbrake"
307,"Generators",40,"[] Check / clean /replace air filter","   universals, mountaing plates &"
304,"Generators",25,"[] Replace coolant filter","[] Check / change oils - gear box"
303,"Generators",20,"   Bypass Filter","   gear box, diff and tailshaft"
301,"Generators",10,"ENGINE:","TRANSMISSION:"
308,"Generators",45,"[] Clean fuel sediment bowl","   bearings"
305,"Generators",30,"[] Check /drain/refill collant level","   transfer case and diffs"
302,"Generators",15,"[] Change Oil & Filters","[] Check for oil leaks faults in"
306,"Generators",35,"[] Check condition & adjust fan belt","[] Check all tailshafts-slip joints"
311,"Generators",60,"[] Check / adjust tappet clearance","[] Grease drive line"
312,"Generators",65,"[] Tighten all air intake system nut","",
313,"Generators",70,"   clamps and flanges","STEERING BRAKES:"
314,"Generators",75,"[] Tighten all radiator hose clamps","[] Check steering rods, linkages &"
315,"Generators",80,"   and fittings","   king pins - grease all points"
309,"Generators",50,"[] Change fuel filters","[] Check all gear change controls"
316,"Generators",85,"[] Tighten fuel system clamps","[] Check front & rear suspension"
310,"Generators",55,"[] Check / retension head bolts","[] Check operation of clutch /adjust"
319,"Generators",100,"   nuts, clamps & fittings","[] Check / Top up steering bevel"
318,"Generators",95,"[] Check exhaust system, tighten all","   Grease all points"
317,"Generators",90,"   and fittings","   U bolts, shackle bushes"
322,"Generators",115,"[] Clean radiator screen","   steering oil"
324,"Generators",125,"   leaks or faults","   & air lines"
321,"Generators",110,"[] Check adjust idle speed","[] Check / Drain & refill power "
320,"Generators",105,"   (including exhaust brake)","   gear case"
323,"Generators",120,"[] Check / repair and list any oil","[] Check S/Cams & bushes, boosters"
328,"Generators",145,"[] Test, check and top up battery","   Rear                         %"
326,"Generators",135,"ELECTRICAL:","[] Adjust foot brakes, linings/pads"
329,"Generators",150,"   electrolyte levels","   Rear                         %"
330,"Generators",155,"[] Check operation of starter & glow","[] Adjust handbrake"
325,"Generators",130,"","[] Check brake fluid levels"
331,"Generators",160,"   plugs","[] Check wheel retaining nuts"
332,"Generators",165,"[] Check operation of lights, brake ","[] Check air pressure of all tyres"
327,"Generators",140,"[] Inspect all wiring & connections","   Front                        %"
209,"Car",10,"ENGINE:","TRANSMISSION:"
210,"Car",15,"[] Change Oil & Filters","[] Check for oil leaks faults in"
211,"Car",20,"   Bypass Filter","   gear box, diff and tailshaft"
212,"Car",25,"[] Replace coolant filter","[] Check / change oils - gear box"
230,"Car",115,"[] Clean radiator screen","[] Check / Change brake fluid levels"
231,"Car",120,"[] Check / repair and list any oil","[] Adjust foot brakes, linings/pads"
232,"Car",125,"   leaks or faults","   Front                        %"
233,"Car",130,"","   Rear                         %"
234,"Car",135,"ELECTRICAL:","   Rear                         %"
235,"Car",140,"[] Inspect all wiring & connections","[] Adjust handbrake"
236,"Car",145,"[] Test, check and top up battery","[] Check wheel retaining nuts"
237,"Car",150,"   electrolyte levels","[] Check air pressure of all tyres"
238,"Car",155,"[] Check operation of starter & glow","   including spare"
239,"Car",160,"   plugs","[] Check tyre wear"
240,"Car",165,"[] Check operation of lights, brake ","   Front           %               %"
241,"Car",170,"   lights, indicators, hazard lights","   Rear            %               %"
242,"Car",175,"   instruments & lights","[] Check wheel bearings"
243,"Car",180,"[] Check operation of windscreen","",
244,"Car",185,"   wipers and washers","FINAL INSPECTION:"
245,"Car",190,"[] Check condition of wiper blades","[] Grease all lubrication points"
246,"Car",195,"[] Check operation of heater &","[] Check cabin for defects"
247,"Car",200,"   demister fan","   (Door operation, windscreen etc)"
248,"Car",205,"[] Check radio-CB, air conditioning ","[] Check Reg. Label"
249,"Car",210,"   and interior lights","[] Road test in all gears"
250,"Car",215,"[] Check computer fault codes","[] Road test brake & handbrake"
251,"Car",220,"","[] Road test clutch operation"
255,"Dozer",10,"ENGINE:","ELECTRICAL:"
256,"Dozer",15,"[] Change Oil & Filters","[] Inspect all wiring & connections"
257,"Dozer",20,"   Bypass Filter","[] Test, check and top up battery"
333,"Generators",170,"   lights, indicators, hazard lights","   including spare"
334,"Generators",175,"   instruments & lights","[] Check tyre wear"
335,"Generators",180,"[] Check operation of windscreen","   Front           %               %"
336,"Generators",185,"   wipers and washers","   Rear            %               %"
337,"Generators",190,"[] Check condition of wiper blades","[] Check wheel bearings"
338,"Generators",195,"[] Check operation of heater &","",
339,"Generators",200,"   demister fan","FINAL INSPECTION:"
340,"Generators",205,"[] Check radio-CB, air conditioning ","[] Grease all lubrication points"
341,"Generators",210,"   and interior lights","[] Check cabin for defects"
342,"Generators",215,"","   (Door operation, windscreen etc)"
343,"Generators",220,"","[] Road test in all gears"
344,"Generators",225,"","[] Road test brake & handbrake"
345,"Generators",230,"","[] Road test steering operation"
346,"Generators",235,"","[] Road test clutch operation"
347,"Miscellaneous",10,"ENGINE:","TRANSMISSION:"
348,"Miscellaneous",15,"[] Change Oil & Filters","[] Check for oil leaks faults in"
349,"Miscellaneous",20,"   Bypass Filter","   gear box, diff and tailshaft"
350,"Miscellaneous",25,"[] Replace coolant filter","[] Check / change oils - gear box"
351,"Miscellaneous",30,"[] Check /drain/refill collant level","   transfer case and diffs"
352,"Miscellaneous",35,"[] Check condition & adjust fan belt","[] Check all tailshafts-slip joints"
353,"Miscellaneous",40,"[] Check / clean /replace air filter","   universals, mountaing plates &"
354,"Miscellaneous",45,"[] Clean fuel sediment bowl","   bearings"
355,"Miscellaneous",50,"[] Change fuel filters","[] Check all gear change controls"
356,"Miscellaneous",55,"[] Check / retension head bolts","[] Check operation of clutch /adjust"
357,"Miscellaneous",60,"[] Check / adjust tappet clearance","[] Grease drive line"
358,"Miscellaneous",65,"[] Tighten all air intake system nut","",
359,"Miscellaneous",70,"   clamps and flanges","STEERING BRAKES:"
360,"Miscellaneous",75,"[] Tighten all radiator hose clamps","[] Check steering rods, linkages &"
361,"Miscellaneous",80,"   and fittings","   king pins - grease all points"
362,"Miscellaneous",85,"[] Tighten fuel system clamps","[] Check front & rear suspension"
363,"Miscellaneous",90,"   and fittings","   U bolts, shackle bushes"
364,"Miscellaneous",95,"[] Check exhaust system, tighten all","   Grease all points"
365,"Miscellaneous",100,"   nuts, clamps & fittings","[] Check / Top up steering bevel"
366,"Miscellaneous",105,"   (including exhaust brake)","   gear case"
367,"Miscellaneous",110,"[] Check adjust idle speed","[] Check / Drain & refill power "
368,"Miscellaneous",115,"[] Clean radiator screen","   steering oil"
369,"Miscellaneous",120,"[] Check / repair and list any oil","[] Check S/Cams & bushes, boosters"
370,"Miscellaneous",125,"   leaks or faults","   & air lines"
371,"Miscellaneous",130,"","[] Check brake fluid levels"
372,"Miscellaneous",135,"ELECTRICAL:","[] Adjust foot brakes, linings/pads"
373,"Miscellaneous",140,"[] Inspect all wiring & connections","   Front                        %"
374,"Miscellaneous",145,"[] Test, check and top up battery","   Rear                         %"
375,"Miscellaneous",150,"   electrolyte levels","   Rear                         %"
376,"Miscellaneous",155,"[] Check operation of starter & glow","[] Adjust handbrake"
377,"Miscellaneous",160,"   plugs","[] Check wheel retaining nuts"
378,"Miscellaneous",165,"[] Check operation of lights, brake ","[] Check air pressure of all tyres"
379,"Miscellaneous",170,"   lights, indicators, hazard lights","   including spare"
380,"Miscellaneous",175,"   instruments & lights","[] Check tyre wear"
381,"Miscellaneous",180,"[] Check operation of windscreen","   Front           %               %"
382,"Miscellaneous",185,"   wipers and washers","   Rear            %               %"
383,"Miscellaneous",190,"[] Check condition of wiper blades","[] Check wheel bearings"
384,"Miscellaneous",195,"[] Check operation of heater &","",
385,"Miscellaneous",200,"   demister fan","FINAL INSPECTION:"
386,"Miscellaneous",205,"[] Check radio-CB, air conditioning ","[] Grease all lubrication points"
387,"Miscellaneous",210,"   and interior lights","[] Check cabin for defects"
388,"Miscellaneous",215,"","   (Door operation, windscreen etc)"
389,"Miscellaneous",220,"","[] Road test in all gears"
390,"Miscellaneous",225,"","[] Road test brake & handbrake"
391,"Miscellaneous",230,"","[] Road test steering operation"
392,"Miscellaneous",235,"","[] Road test clutch operation"
393,"Motorbikes",10,"ENGINE:","TRANSMISSION:"
394,"Motorbikes",15,"[] Change Oil & Filters","[] Check for oil leaks faults in"
395,"Motorbikes",20,"[] Check /drain/refill collant level","   gear box, diff and tailshaft"
396,"Motorbikes",25,"[] Check condition & adjust fan belt","[] Check / change oils - gear box"
397,"Motorbikes",30,"[] Check / clean /replace air filter","   transfer case and diffs"
398,"Motorbikes",35,"[] Clean fuel sediment bowl","[] Check all tailshafts-slip joints"
399,"Motorbikes",40,"[] Change fuel filters","   universals, mountaing plates &"
400,"Motorbikes",45,"[] Check / adjust tappet clearance","   bearings + drive shafts"
401,"Motorbikes",50,"[] Check / Tighten all air intake","[] Check all gear change controls"
402,"Motorbikes",55,"   system nut clamps and flanges","[] Check operation of clutch /adjust"
403,"Motorbikes",60,"[] Check / Tighten fuel system","[] Grease drive line"
404,"Motorbikes",65,"   clamps and fittings","",
405,"Motorbikes",70,"[] Check exhaust system, tighten all","STEERING BRAKES:"
406,"Motorbikes",75,"   nuts, clamps & fittings","[] Check steering rods, linkages &"
407,"Motorbikes",80,"   (including exhaust brake)","   king pins - grease all points"
408,"Motorbikes",85,"[] Check / Adjust timming","[] Check front & rear suspension"
409,"Motorbikes",90,"[] Check / Replace spark plugs","   U bolts, pivot bushs"
410,"Motorbikes",95,"[] Drain carburetor","   Grease all points"
411,"Motorbikes",100,"[] Check adjust idle speed","[] Check all brake lines, hoses"
412,"Motorbikes",105,"[] Clean radiator screen","   and cables"
413,"Motorbikes",110,"","   Rear                         %"
414,"Motorbikes",115,"","[] Adjust handbrake"
415,"Motorbikes",120,"","[] Check wheel retaining nuts"
416,"Motorbikes",125,"","[] Check air pressure of all tyres"
417,"Motorbikes",130,"","   including spare"
418,"Motorbikes",135,"ELECTRICAL:","[] Check tyre wear"
419,"Motorbikes",140,"[] Inspect all wiring & connections","   Front           %               %"
420,"Motorbikes",145,"[] Test, check and top up battery","   Rear            %               %"
421,"Motorbikes",150,"   electrolyte levels"," [] Check wheel bearings"
422,"Motorbikes",155,"[] Check operation of starter","",
423,"Motorbikes",160,"  + engine stop","FINAL INSPECTION:"
424,"Motorbikes",165,"[] Check operation of lights, brake ","[] Grease all lubrication points"
425,"Motorbikes",170,"   lights, indicators, hazard lights","[] Check Reg. Label"
426,"Motorbikes",175,"   instruments & lights","[] Road test in all gears"
427,"Motorbikes",180,"","[] Road test brake & handbrake"
428,"Motorbikes",185,"","[] Road test steering operation"
429,"Motorbikes",190,"","[] Road test clutch operation"
430,"Motorbikes",195,"","",
431,"Motorbikes",200,"","",
432,"Motorbikes",205,"","",
433,"Motorbikes",210,"","",
434,"Motorbikes",215,"","",
435,"Motorbikes",220,"","",
436,"Motorbikes",225,"","",
437,"Motorbikes",230,"","",
438,"Motorbikes",235,"","",
439,"Pump",10,"ENGINE:","WATER PUMP : GENERATORS"
440,"Pump",15,"[] Change Oil & Filters","[] Check for oil leaks"
441,"Pump",20,"   Bypass Filter","[] Check all tailshafts-slip joints"
442,"Pump",25,"[] Replace coolant filter","   universals, mountaing plates &"
443,"Pump",30,"[] Check /drain/refill collant level","   bearings + couplings"
444,"Pump",35,"[] Check condition & adjust fan belt","[] Check gland seal"
445,"Pump",40,"[] Check / clean /replace air filter","[] Grease drive line"
446,"Pump",45,"[] Clean fuel sediment bowl","",
447,"Pump",50,"[] Change fuel filters","FINAL INSPECTION:"
448,"Pump",55,"[] Check maximum engine rev's","[] Test operation + pump pressure"
449,"Pump",60,"[] Check / adjust tappet clearance","[] Check for loose nuts + bolts"
450,"Pump",65,"[] Check / Tighten all air intake","",
451,"Pump",70,"   system nut clamps and flanges","",
452,"Pump",75,"[] Check / Tighten all radiator hose","",
453,"Pump",80,"   clamps and fittings","",
454,"Pump",85,"[] Check / Tighten fuel system","",
455,"Pump",90,"   clamps and fittings","",
456,"Pump",95,"[] Check exhaust system, tighten all","",
457,"Pump",100,"   nuts, clamps & fittings","",
458,"Pump",105,"   (including exhaust brake)","",
459,"Pump",110,"[] Check adjust idle speed","",
460,"Pump",115,"[] Clean radiator screen","",
461,"Pump",120,"[] Check / repair and list any oil","",
462,"Pump",125,"   leaks or faults","",
463,"Pump",130,"","",
464,"Pump",135,"ELECTRICAL:","",
465,"Pump",140,"[] Inspect all wiring & connections","",
466,"Pump",145,"[] Test, check and top up battery","",
467,"Pump",150,"   electrolyte levels","",
468,"Pump",155,"[] Check operation of starter & glow","",
469,"Pump",160,"   plugs + engine stop","",
470,"Pump",165,"[] Check operation of lights, brake ","",
471,"Pump",170,"   lights, indicators, hazard lights","",
472,"Pump",175,"   instruments & lights","",
473,"Pump",180,"[] Check engine shutdown / watch","",
474,"Pump",185,"   dog function","",
475,"Pump",190,"","",
476,"Pump",195,"","",
477,"Pump",200,"","",
478,"Pump",205,"","",
479,"Pump",210,"","",
480,"Pump",215,"","",
481,"Pump",220,"","",
482,"Pump",225,"","",
483,"Pump",230,"","",
484,"Pump",235,"","",
485,"Rotary Hoes - Pedestrian",10,"ENGINE:","TRANSMISSION:"
486,"Rotary Hoes - Pedestrian",15,"[] Change Oil & Filters","[] Check for oil leaks faults in"
487,"Rotary Hoes - Pedestrian",20,"   Bypass Filter","   gear box, diff and tailshaft"
488,"Rotary Hoes - Pedestrian",25,"[] Replace coolant filter","[] Check / change oils - gear box"
489,"Rotary Hoes - Pedestrian",30,"[] Check /drain/refill collant level","   transfer case and diffs"
490,"Rotary Hoes - Pedestrian",35,"[] Check condition & adjust fan belt","[] Check all tailshafts-slip joints"
491,"Rotary Hoes - Pedestrian",40,"[] Check / clean /replace air filter","   universals, mountaing plates &"
492,"Rotary Hoes - Pedestrian",45,"[] Clean fuel sediment bowl","   bearings"
493,"Rotary Hoes - Pedestrian",50,"[] Change fuel filters","[] Check all gear change controls"
494,"Rotary Hoes - Pedestrian",55,"[] Check / retension head bolts","[] Check operation of clutch /adjust"
495,"Rotary Hoes - Pedestrian",60,"[] Check / adjust tappet clearance","[] Grease drive line"
496,"Rotary Hoes - Pedestrian",65,"[] Tighten all air intake system nut","",
497,"Rotary Hoes - Pedestrian",70,"   clamps and flanges","STEERING BRAKES:"
498,"Rotary Hoes - Pedestrian",75,"[] Tighten all radiator hose clamps","[] Check steering rods, linkages &"
499,"Rotary Hoes - Pedestrian",80,"   and fittings","   king pins - grease all points"
500,"Rotary Hoes - Pedestrian",85,"[] Tighten fuel system clamps","[] Check front & rear suspension"
501,"Rotary Hoes - Pedestrian",90,"   and fittings","   U bolts, shackle bushes"
502,"Rotary Hoes - Pedestrian",95,"[] Check exhaust system, tighten all","   Grease all points"
503,"Rotary Hoes - Pedestrian",100,"   nuts, clamps & fittings","[] Check / Top up steering bevel"
504,"Rotary Hoes - Pedestrian",105,"   (including exhaust brake)","   gear case"
505,"Rotary Hoes - Pedestrian",110,"[] Check adjust idle speed","[] Check / Drain & refill power "
506,"Rotary Hoes - Pedestrian",115,"[] Clean radiator screen","   steering oil"
507,"Rotary Hoes - Pedestrian",120,"[] Check / repair and list any oil","[] Check S/Cams & bushes, boosters"
508,"Rotary Hoes - Pedestrian",125,"   leaks or faults","   & air lines"
509,"Rotary Hoes - Pedestrian",130,"","[] Check brake fluid levels"
510,"Rotary Hoes - Pedestrian",135,"ELECTRICAL:","[] Adjust foot brakes, linings/pads"
511,"Rotary Hoes - Pedestrian",140,"[] Inspect all wiring & connections","   Front                        %"
512,"Rotary Hoes - Pedestrian",145,"[] Test, check and top up battery","   Rear                         %"
513,"Rotary Hoes - Pedestrian",150,"   electrolyte levels","   Rear                         %"
514,"Rotary Hoes - Pedestrian",155,"[] Check operation of starter & glow","[] Adjust handbrake"
515,"Rotary Hoes - Pedestrian",160,"   plugs","[] Check wheel retaining nuts"
516,"Rotary Hoes - Pedestrian",165,"[] Check operation of lights, brake ","[] Check air pressure of all tyres"
517,"Rotary Hoes - Pedestrian",170,"   lights, indicators, hazard lights","   including spare"
518,"Rotary Hoes - Pedestrian",175,"   instruments & lights","[] Check tyre wear"
519,"Rotary Hoes - Pedestrian",180,"[] Check operation of windscreen","   Front           %               %"
520,"Rotary Hoes - Pedestrian",185,"   wipers and washers","   Rear            %               %"
521,"Rotary Hoes - Pedestrian",190,"[] Check condition of wiper blades","[] Check wheel bearings"
522,"Rotary Hoes - Pedestrian",195,"[] Check operation of heater &","",
523,"Rotary Hoes - Pedestrian",200,"   demister fan","FINAL INSPECTION:"
524,"Rotary Hoes - Pedestrian",205,"[] Check radio-CB, air conditioning ","[] Grease all lubrication points"
525,"Rotary Hoes - Pedestrian",210,"   and interior lights","[] Check cabin for defects"
526,"Rotary Hoes - Pedestrian",215,"","   (Door operation, windscreen etc)"
527,"Rotary Hoes - Pedestrian",220,"","[] Road test in all gears"
528,"Rotary Hoes - Pedestrian",225,"","[] Road test brake & handbrake"
529,"Rotary Hoes - Pedestrian",230,"","[] Road test steering operation"
530,"Rotary Hoes - Pedestrian",235,"","[] Road test clutch operation"
531,"Rotary Hoes - Tractor",10,"ENGINE:","TRANSMISSION:"
532,"Rotary Hoes - Tractor",15,"[] Change Oil & Filters","[] Check for oil leaks faults in"
533,"Rotary Hoes - Tractor",20,"   Bypass Filter","   gear box, diff and tailshaft"
534,"Rotary Hoes - Tractor",25,"[] Replace coolant filter","[] Check / change oils - gear box"
535,"Rotary Hoes - Tractor",30,"[] Check /drain/refill collant level","   transfer case and diffs"
536,"Rotary Hoes - Tractor",35,"[] Check condition & adjust fan belt","[] Check all tailshafts-slip joints"
538,"Rotary Hoes - Tractor",45,"[] Clean fuel sediment bowl","   bearings"
537,"Rotary Hoes - Tractor",40,"[] Check / clean /replace air filter","   universals, mountaing plates &"
539,"Rotary Hoes - Tractor",50,"[] Change fuel filters","[] Check all gear change controls"
540,"Rotary Hoes - Tractor",55,"[] Check / retension head bolts","[] Check operation of clutch /adjust"
541,"Rotary Hoes - Tractor",60,"[] Check / adjust tappet clearance","[] Grease drive line"
542,"Rotary Hoes - Tractor",65,"[] Tighten all air intake system nut","",
543,"Rotary Hoes - Tractor",70,"   clamps and flanges","STEERING BRAKES:"
544,"Rotary Hoes - Tractor",75,"[] Tighten all radiator hose clamps","[] Check steering rods, linkages &"
545,"Rotary Hoes - Tractor",80,"   and fittings","   king pins - grease all points"
546,"Rotary Hoes - Tractor",85,"[] Tighten fuel system clamps","[] Check front & rear suspension"
547,"Rotary Hoes - Tractor",90,"   and fittings","   U bolts, shackle bushes"
548,"Rotary Hoes - Tractor",95,"[] Check exhaust system, tighten all","   Grease all points"
549,"Rotary Hoes - Tractor",100,"   nuts, clamps & fittings","[] Check / Top up steering bevel"
550,"Rotary Hoes - Tractor",105,"   (including exhaust brake)","   gear case"
551,"Rotary Hoes - Tractor",110,"[] Check adjust idle speed","[] Check / Drain & refill power "
552,"Rotary Hoes - Tractor",115,"[] Clean radiator screen","   steering oil"
553,"Rotary Hoes - Tractor",120,"[] Check / repair and list any oil","[] Check S/Cams & bushes, boosters"
554,"Rotary Hoes - Tractor",125,"   leaks or faults","   & air lines"
555,"Rotary Hoes - Tractor",130,"","[] Check brake fluid levels"
556,"Rotary Hoes - Tractor",135,"ELECTRICAL:","[] Adjust foot brakes, linings/pads"
557,"Rotary Hoes - Tractor",140,"[] Inspect all wiring & connections","   Front                        %"
558,"Rotary Hoes - Tractor",145,"[] Test, check and top up battery","   Rear                         %"
559,"Rotary Hoes - Tractor",150,"   electrolyte levels","   Rear                         %"
560,"Rotary Hoes - Tractor",155,"[] Check operation of starter & glow","[] Adjust handbrake"
561,"Rotary Hoes - Tractor",160,"   plugs","[] Check wheel retaining nuts"
562,"Rotary Hoes - Tractor",165,"[] Check operation of lights, brake ","[] Check air pressure of all tyres"
563,"Rotary Hoes - Tractor",170,"   lights, indicators, hazard lights","   including spare"
564,"Rotary Hoes - Tractor",175,"   instruments & lights","[] Check tyre wear"
565,"Rotary Hoes - Tractor",180,"[] Check operation of windscreen","   Front           %               %"
566,"Rotary Hoes - Tractor",185,"   wipers and washers","   Rear            %               %"
567,"Rotary Hoes - Tractor",190,"[] Check condition of wiper blades","[] Check wheel bearings"
568,"Rotary Hoes - Tractor",195,"[] Check operation of heater &","",
569,"Rotary Hoes - Tractor",200,"   demister fan","FINAL INSPECTION:"
570,"Rotary Hoes - Tractor",205,"[] Check radio-CB, air conditioning ","[] Grease all lubrication points"
571,"Rotary Hoes - Tractor",210,"   and interior lights","[] Check cabin for defects"
572,"Rotary Hoes - Tractor",215,"","   (Door operation, windscreen etc)"
573,"Rotary Hoes - Tractor",220,"","[] Road test in all gears"
574,"Rotary Hoes - Tractor",225,"","[] Road test brake & handbrake"
575,"Rotary Hoes - Tractor",230,"","[] Road test steering operation"
576,"Rotary Hoes - Tractor",235,"","[] Road test clutch operation"
588,"Trailer",65,"ELECTRICAL:","BRAKES, SUPSPENSION:"
589,"Trailer",70,"[] Inspect all wiring & connections","[] Check rear suspension"
590,"Trailer",75,"[] Check operation of lights, brake","   U bolts, shackle bushes"
591,"Trailer",80,"   lights, indicators, hazard lights","   Grease all points"
592,"Trailer",85,"   & lights","[] Check S/Cams & bushes, diaphrams"
593,"Trailer",90,"[] Check trailer plug / socket","   & air lines"
594,"Trailer",95,"[] Check operation of water pumps","[] Check all brake hoses, lines,"
595,"Trailer",100,"","   Cables"
596,"Trailer",105,"","[] Check for air leaks"
597,"Trailer",110,"","[] Drain air tanks"
598,"Trailer",115,"","[] Check brake fluid levels"
600,"Trailer",125,"","   Front                        %"
599,"Trailer",120,"","[] Adjust foot brakes, linings/pads"
601,"Trailer",130,"","   including spare"
602,"Trailer",135,"","[] Check tyre wear"
603,"Trailer",140,"","   Front           %               %"
604,"Trailer",145,"","   Rear            %               %"
605,"Trailer",150,"","[] Check wheel bearings"
606,"Trailer",155,"","",
607,"Trailer",160,"","FINAL INSPECTION:"
608,"Trailer",165,"","[] Grease all lubrication points"
609,"Trailer",170,"","[] Check for defects ( Tailgates,"
610,"Trailer",175,"","   tarps, body rivets, etc)"
611,"Trailer",180,"","[] Check Reg. Label"
612,"Trailer",185,"","",
613,"Trailer",190,"","",
614,"Trailer",195,"","",
615,"Trailer",200,"","",
617,"Trailer",210,"","",
616,"Trailer",205,"","",
618,"Trailer",215,"","",
619,"Trailer",220,"","",
620,"Trailer",225,"","",
621,"Trailer",230,"","",
622,"Trailer",235,"","",
623,"Truck",10,"ENGINE:","TRANSMISSION:"
624,"Truck",15,"[] Change Oil & Filters","[] Check for oil leaks faults in"
625,"Truck",20,"   Bypass Filter","   gear box, diff and tailshaft"
626,"Truck",25,"[] Replace coolant filter","[] Check / change oils - gear box"
627,"Truck",30,"[] Check /drain/refill coolant level","   transfer case and diffs"
628,"Truck",35,"[] Check condition & adjust fan belt","[] Check all tailshafts-slip joints"
629,"Truck",40,"[] Check / clean /replace air filter","   univers.,mount.plates&bearings"
630,"Truck",45,"[] Clean fuel sediment bowl","[] Check all gear change controls"
631,"Truck",50,"[] Change fuel filters","[] Check / Change clutch fluid"
632,"Truck",55,"[] Add fuel conditioner","[] Check operation of clutch /adjust"
633,"Truck",60,"[] Check / adjust tappet clearance","[] Check steering rods, linkages &"
634,"Truck",65,"[] Check / Tighten all air intake","   king pins - grease all points"
635,"Truck",70,"    system nut clamps and flanges","[] Check front & rear suspension U"
636,"Truck",75,"[] Check / Tighten all radiator hose","  bolts,shackle bushes.Grease points"
637,"Truck",80,"   clamps and fittings","[] Check / Top up steering level"
638,"Truck",85,"[] Check /Tighten fuel system","   gear case"
639,"Truck",90,"   clamps and fittings","[] Check / Drain & refill power "
640,"Truck",95,"[] Check exhaust system, tighten all","   steering oil"
641,"Truck",100,"   nuts, clamps & fittings","[] Check S/Cams & bushes, diaphrams"
642,"Truck",105,"   (including exhaust brake)","   & air lines + fluid lines"
643,"Truck",110,"[] Check adjust idle speed","[] Drain air tanks"
644,"Truck",115,"[] Clean radiator screen","[] Check / List air leaks"
645,"Truck",120,"[] Check / repair and list any oil","[] Check brake fluid levels"
646,"Truck",125,"   leaks or faults","[] Adjust foot brakes, linings/pads"
647,"Truck",130,"[] Inspect all wiring & connections","[] Adjust handbrake"
648,"Truck",135,"[] Test, check and top up battery","[] Check wheel retaining nuts"
649,"Truck",140,"   electrolyte levels","[] Check air pressure of all tyres"
650,"Truck",145,"[] Check operation of starter & glow","   including spare"
651,"Truck",150,"   plugs + engine stop","[] Check tyre wear"
652,"Truck",155,"[] Check operation of lights, brake ","   Front           %               %"
653,"Truck",160,"   lights, indicators, hazard lights","   Rear            %               %"
654,"Truck",165,"   instruments & lights","[] Check wheel bearings"
655,"Truck",170,"[] Check operation of windscreen","[] Grease turn table"
656,"Truck",175,"   wipers and washers","FINAL INSPECTION:"
657,"Truck",180,"[] Check condition of wiper blades","[] Grease all lubrication points"
658,"Truck",185,"[] Check operation of heater &","[] Check cabin for defects"
659,"Truck",190,"   demister fan","   (Door operation, windscreen etc)"
660,"Truck",195,"[] Check radio-CB, air conditioning,","[] Check Reg. Label"
661,"Truck",200,"   interior lights and phone","[] Road test in all gears"
662,"Truck",205,"[] Check trailer plug","[] Road test brake & handbrake"
663,"Truck",210,"","[] Road test steering operation"
664,"Truck",215,"","[] Road test clutch operation"
671,"Car",107,"[] Check / Adjust Timming","[] Check / Drain & refill power "
670,"Car",51,"[] Add Fuel Conditioner","[] Check / Change clutch fluid"
672,"Car",108,"[] Check / Replace Spark Plugs","   steering oil"
673,"Car",217,"","[] Road test steering operation"
674,"Truck",56,"[] Lift pump filter","[] Grease drive line"
675,"Truck",57,"[] Check maximum engine revs","STEERING BRAKES:"
676,"Truck",126,"","   Front                        %"
677,"Truck",128,"ELECTRICAL:","   Rear                         %"
679,"Tractor",60,"[] Check condition & adjust fan belt","[] Check operation of lights, brake "
680,"Tractor",70,"[] Check / clean /replace air filter","   lights, indicators, hazard lights"
681,"Tractor",80,"[] Clean fuel sediment bowl","   instruments & lights"
682,"Tractor",130,"[] Check / adjust tappet clearance","   demister fan"
683,"Tractor",150,"   system nut clamps and flanges","STEERING BRAKES:"
684,"Tractor",160,"[] Check / Tighten all radiator hose","[] Check steering rods, linkages &"
685,"Tractor",170,"   clamps and fittings","   king pins - grease all points"
686,"Tractor",180,"[] Check / Tighten fuel system","[] Check front & rear suspension"
687,"Tractor",200,"[] Check / Tighten exhaust system,","[] Check / Top up steering bevel"
689,"Dozer",31,"[] Check condition & adjust fan belt","[] Check operation of brake,hazard,"
690,"Dozer",33,"[] Check / clean /replace air filter","   & instrument lights + indicators"
691,"Dozer",34,"[] Clean fuel sediment bowl","[] Check operation of windscreen"
692,"Dozer",46,"[] Check maximum engine rev's","[] Check radio-CB,air con&int.lights"
693,"Dozer",48,"[] Check / adjust tappet clearance","STEERING BRAKES:"
694,"Dozer",49,"[] Check / Clean air ducting + ","[] Check steering rods, linkages &"
695,"Dozer",52,"[] Check / Tighten all air intake","[] Check front & rear suspension"
696,"Dozer",56,"   clamps and fittings","[] Check / Drain & refill power "
697,"Dozer",57,"[] Check / Tighten fuel system","   steering oil"
698,"Dozer",53,"   system nut clamps and flanges","   U bolts, Pivots.Grease all points"
701,"Dozer",117,"[] Check / change oils - gear box","[] Check tyre wear"
702,"Dozer",118,"   transfer case & diffs + hyd. oil ","   Front           %               %"
709,"Trailer",126,"","   Rear                         %"
710,"Trailer",127,"","[] Adjust handbrake"
711,"Trailer",128,"","[] Check wheel retaining nuts"
712,"Trailer",129,"","[] Check air pressure of all tyres"
713,"Trailer",240,"","",
714,"Trailer",245,"","",
715,"Trailer",250,"","",
716,"Trailer",255,"","",
717,"Trailer",260,"","",
718,"Trailer",265,"","",
719,"Trailer",270,"","",
720,"Trailer",275,"","",
721,"Trailer",280,"","",
722,"Trailer",285,"","",
723,"Trailer",290,"","",
724,"Motorbikes",56,"[] Check / Tighten all radiator hose","[] Adjust, oil drive chain, sprokets"
725,"Motorbikes",57,"   clamps and fittings","[] Lubricate all levers + cables"
726,"Motorbikes",106,"[] Check / repair and list any oil","[] Check brake fluid levels"
727,"Motorbikes",107,"   leaks or faults","[] Adjust foot brakes, linings/pads"
728,"Motorbikes",108,"","   Front                        %"
729,"Pump",51,"[] Add fuel conditioner","[] Grease all lubrication points"
730,"Pump",52,"[] Clean lift pump filter","[] Check for water leaks"
731,"Pump",61,"[] Check / Clean air ducting + ","",
732,"Pump",62,"   cooling fins","",
733,"Pump",63,"[] Check oil cooler","",
734,"Pump",106,"Check / Change spark plugs","",
735,"Dozer",131,"   univers, mount plates & bearings","   and rollers"
736,"Dozer",132,"[] Check all hydraulic cyl, rams,","FINAL INSPECTION:"
737,"Dozer",133,"   hoses + pipes + fittings","[] Grease all lubrication points"
738,"Dozer",134,"[] Check hydraulic control values","[] Check cabin for defects"
739,"Dozer",136,"[] Check / Change clutch fluid / oil","[] Check Reg. Label"
740,"Dozer",137,"[] Check operation of clutch /adjust","[] Road test in all gears"
741,"Dozer",138,"[] Check all blades, buckets and ","[] Road test brake & handbrake"
742,"Dozer",139,"[] rippers + chains","[] Road test steering operation"
745,"Tractor",350,"   universals, mountaing plates &","   Front           %               %"
746,"Tractor",360,"   bearings","   Rear            %               %"
747,"Tractor",370,"[] Check all gear change controls","[] Check wheel bearings"
748,"Tractor",380,"[] Check / Change clutch fluid","FINAL INSPECTION:"
749,"Tractor",390,"[] Check operation of clutch /adjust","[] Grease all lubrication points"
750,"Tractor",400,"[] Check all hydraulic pipes,","[] Check cabin for defects"
751,"Tractor",410,"   hoses + fittings","   (Door operation, windscreen etc)"
752,"Tractor",420,"[] Check operation of hydr. Controls","[] Check reg. Label"
753,"Tractor",430,"[] Check PTO Operation","[] Road test in all gears"
754,"Tractor",440,"[] Grease drive line","[] Road test brake & handbrake"
/
CREATE UNIQUE INDEX SYSADM.PKVEHICLECHECKLIST ON SYSADM.VEHICLE_CHECK_LIST(CHECK_LIST_ID, 
VEHICLE_TYPE) PCTFREE 10
/
CREATE TABLE SYSADM.PART (PART_ID INTEGER NOT NULL, 
PART_TYPE CHAR (40) NOT NULL, 
PART_NAME CHAR (40) NOT NULL, 
LOCATION CHAR (40) NOT NULL, 
RE_ORDER_NO CHAR (40) , 
QUANTITY_ON_HAND INTEGER NOT NULL WITH DEFAULT) PCTFREE 10
/
INSERT INTO SYSADM.PART VALUES(:1,:2,:3,:4,:5,:6)
\
$datatypes NUMERIC,CHARACTER,CHARACTER,CHARACTER,CHARACTER,NUMERIC
12,"Tools","Pipe Wrench","Hoddles","",2
2,"Fittings - Stop ends","3""","Taggerty","",12
1,"Pipe - Alumin.","3"" x 9 Meter","Monbulk","",124
13,"Tools","Band Saw","Hoddles","",1
3,"Fittings - Stop ends","3""","Shangrala","",6
4,"Fittings - Stop ends","4""","Hoddles","",6
5,"Fittings - Crosses","T's","Beenak","",2
6,"Fittings - Crosses","3""","Monbulk","",10
7,"Fittings - Elbows","90*","Beenak","",6
8,"Fittings - Elbows","3""","Monbulk","",11
9,"Pipe - Alumin.","2"" x 9 Meter","Monbulk","",34
10,"Pipe - Alumin.","3"" x 6 Meter","Monbulk","",135
11,"Tools","Vice","Monbulk - Pop Shed","",1
14,"Tools","Makita Drill 13mm","Taggerty","",1
15,"Pwr. Steer. Oil","Valvoline","Monbulk","",20
16,"Diff. oil","Valvoline","Monbulk","",29
17,"Transmision Oil","Valvoline","Monbulk","",40
18,"Engine Oil","Valvoline","Monbulk","",60
19,"Engine Oil","GTX","Monbulk","",9
20,"Oil Filter","z9","Monbulk","",50
21,"Fuel Filter","r3p","Monbulk","",3
22,"Fuel Filter","r205p","Monbulk","",2
23,"Fuel Filter","r2069p","Monbulk","",2
24,"Air Filter","D12-3221","Monbulk","",4
25,"Air Filter","P11-9372","Monbulk","",20
26,"Oil Filter","z14","Monbulk","",2
27,"Oil Filter","z30","Monbulk","",7
28,"Oil Filter","z38","Monbulk","",1
29,"Oil Filter","z49a","Monbulk","",15
30,"Oil Filter","z411","Monbulk","",1
31,"Oil Filter","z382","Monbulk","",1
32,"Oil Filter","z380","Monbulk","",2
33,"Oil Filter","z367","Monbulk","",1
34,"Oil Filter","z334","Monbulk","",2
35,"Oil Filter","z252","Monbulk","",2
36,"Oil Filter","hdz232","Monbulk","",1
37,"Oil Filter","z192","Monbulk","",1
38,"Oil Filter","z188","Monbulk","",1
39,"Oil Filter","z175","Monbulk","",6
40,"Oil Filter","z169a","Monbulk","",4
41,"Oil Filter","z168","Monbulk","",2
42,"Oil Filter","z167","Monbulk","",2
43,"Oil Filter","z162","Monbulk","",1
44,"Oil Filter","z159","Monbulk","",2
45,"Oil Filter","z154","Monbulk","",2
46,"Oil Filter","z148a","Monbulk","",4
47,"Oil Filter","z145","Monbulk","",1
48,"Oil Filter","z142","Monbulk","",14
49,"Oil Filter","z136","Monbulk","",1
50,"Oil Filter","z134","Monbulk","",1
51,"Oil Filter","z132","Monbulk","",1
52,"Oil Filter","z131a","Monbulk","",2
53,"Oil Filter","z127","Monbulk","",1
54,"Oil Filter","z125","Monbulk","",4
55,"Oil Filter","z115","Monbulk","",1
56,"Oil Filter","z108","Monbulk","",1
57,"Oil Filter","z107","Monbulk","",4
58,"Oil Filter","z89a","Monbulk","",3
59,"Oil Filter","z79a","Monbulk","",2
60,"Oil Filter","z75","Monbulk","",2
61,"Oil Filter","z72","Monbulk","",4
62,"Oil Filter","z68","Monbulk","",16
63,"Oil Filter","z64","Monbulk","",14
64,"Oil Filter","z63","Monbulk","",1
65,"Oil Filter","z56a","Monbulk","",2
66,"Oil Filter","z37","Monbulk","",6
67,"Fuel Filter","r236p","Monbulk","",1
68,"Fuel Filter","r2058p","Monbulk","",3
69,"Fuel Filter","r2084v","Monbulk","",3
70,"Fuel Filter","r2374p","Monbulk","",4
71,"Fuel Filter","r2364p","Monbulk","",1
72,"Fuel Filter","r2199p","Monbulk","",4
73,"Fuel Filter","r2132p","Monbulk","",16
74,"Fuel Filter","r2115p","Monbulk","",4
75,"Tools","400 Grinder Ped.","Monbulk","",1
76,"Tools","Floor Crane","Monbulk","",1
77,"Tools","Oxy Act. Sets","Monbulk","",2
78,"Tools","Horizontal Band Saw","Monbulk","",1
79,"Tools","Gear Hand Drill","Monbulk","",1
80,"Tools","900 Lath","Monbulk","",1
81,"Tools","1500 Lath","Monbulk","",1
82,"Tools","Vertical Mill","Monbulk","",1
83,"Tools","Horizontal Mill","Monbulk","",1
84,"Tools","Sidchrome Tool Cabinet","Monbulk","",1
85,"Tools","Sidchrome Tool Chest","Monbulk","",1
86,"Tools","Dwell Tester","Monbulk","",1
87,"Tools","Timing Light","Monbulk","",1
88,"Tools","Battery Tester","Monbulk","",1
89,"Tools","Multi Meter","Monbulk","",1
90,"Tools","3 Prong Pullers","Monbulk","",1
93,"Tools","Tension Wrench","Monbulk","",3
94,"Tools","1/2"" Drive Socket Set","Monbulk","",1
95,"Tools","Thru Socket Set","Monbulk","",1
96,"Tools","Sidchrome Hex Set","Monbulk","",1
97,"Tools","Kincrome 3/8"" Socket Set","Monbulk","",1
98,"Tools","Metric 1'2"" Drive - Impact Sockets","Monbulk","",1
99,"Tools","Imp 1/2"" Drive - Impact Sockets","Monbulk","",1
100,"Tools","3/4"" Drive Large Sockets","Monbulk","",1
101,"Tools","3/4"" Drive Socket Set","Monbulk","",1
102,"Tools","Air Die Grinder","Monbulk","",1
103,"Tools","Air Rattle Gun","Monbulk","",1
104,"Tools","Nibbler","Monbulk","",1
105,"Tools","Morse Taper Hand Drill","Monbulk","",1
106,"Tools","Right Angle Drill","Monbulk","",1
107,"Tools","3/8"" Drill","Monbulk","",1
108,"Tools","1/2"" Drill","Monbulk","",1
109,"Tools","1/2"" Drive Rattle Guns","Monbulk","",1
110,"Tools","3/4"" Drive Rattle Guns","Monbulk","",2
111,"Tools","Barrel Grinder","Monbulk","",1
112,"Tools","Metabo 41/2"" Angle Grinder","Monbulk","",1
113,"Tools","Bosch 9"" Angle Grinder","Monbulk","",1
114,"Tools","ARC Welder","Monbulk","",1
115,"Tools","MIG Welder","Monbulk","",1
116,"Tools","8"" Grinder Ped.","Monbulk","",2
117,"Tools","6"" Grinder Ped.","Monbulk","",1
118,"Tools","Battery Chargers","Monbulk","",2
119,"Tools","Compressor - Large","Monbulk","",1
120,"Tools","Compressor - Small","Monbulk","",2
121,"Tools","Electric Tacho","Monbulk","",1
122,"Tools","Injector Tester","Monbulk","",1
123,"Tools","Dial Indicator","Monbulk","",1
124,"Tools","Set No:3 Drills","Monbulk","",1
125,"Tools","Set Wad Punches","Monbulk","",1
126,"Tools","Cut Off Saws","Monbulk","",2
127,"Tools","Stud Extractor","Monbulk","",1
128,"Tools","Ball Hone's","Monbulk","",2
129,"Tools","Ring Compressor","Monbulk","",1
130,"Tools","Pop Rivet Gun - Air","Monbulk","",1
131,"Tools","Pop Rivet Gun - Hand","Monbulk","",1
132,"Tools","Tap & Die Set","Monbulk","",1
133,"Tools","Internal Mic","Monbulk","",1
134,"Tools","Chisel's","Monbulk","",1
135,"Tools","Diesel Comp Tester","Monbulk","",1
136,"Tools","Rad Comp Tester","Monbulk","",1
137,"Tools","Petrol Driven Welder","Monbulk","",1
138,"Tools","Anvel","Monbulk","",1
143,"Tools","Puller Set","Monbulk","",1
140,"Tools","Air Grease Gun","Monbulk","",1
141,"Tools","Jack  5 Ton","Monbulk","",1
142,"Tools","Jack 10 Ton","Monbulk","",2
144,"Tools","Parts Washer","Monbulk","",1
145,"Tools","2 Prong Pullers","Monbulk","",2
146,"Air Filter","ARM 99-5032/995571","Monbulk","",0
147,"Fuel Filter","z132","Monbulk","",0
148,"Air Filter","ARM 10-2745","Monbulk","",0
149,"Air Filter","10-1222/P12-3160","Monbulk","",0
150,"Fuel Filter","z107","Monbulk","",0
151,"Hydraulic Filter","35861-82630","Monbulk","",0
152,"Hydraulic Filter","155-910","Monbulk","",0
153,"Air Filter","ARM 10-1275","Monbulk","",0
154,"Oil Filter","z79x","Monbulk","",0
155,"Fuel Filter","r2426p","Monbulk","",0
156,"Oil Filter","r3pb","Monbulk","",0
157,"Oil Filter","r2058v","Monbulk","",0
158,"Oil Filter","r2435p","Monbulk","",0
159,"Air Filter","99-2350/10-1246","Monbulk","",0
160,"Oil Filter","15453 88391","Monbulk","",0
161,"Air Filter","HDA 5615","Monbulk","",0
162,"Air Filter","A203A","Monbulk","",0
163,"Fuel Filter","z91","Monbulk","",0
164,"Fuel Filter","z366","Monbulk","",0
165,"Air Filter","GM# 25121113","Monbulk","",0
166,"Oil Filter","GM# 97039002","Monbulk","",0
167,"Oil Filter","z145a","Monbulk","",0
168,"Fuel Filter","z201","Monbulk","",0
169,"Air Filter","A360","Monbulk","",0
170,"Fuel Filter","z169a","Monbulk","",0
171,"Air Filter","A52","Monbulk","",0
172,"Air Filter","A340","Monbulk","",0
173,"Fuel Filter","z14","Monbulk","",0
174,"Fuel Filter","z196","Monbulk","",0
175,"Air Filter","A328","Monbulk","",0
176,"Air Filter","A1215","Monbulk","",0
177,"Fuel Filter","23300-75020","Monbulk","",0
178,"Air Filter","A326A","Monbulk","",0
179,"Oil Filter","r2374p","Monbulk","",0
180,"Fuel Filter","z380","Monbulk","",0
181,"Air Filter","A215X","Monbulk","",0
182,"Fuel Filter","z168","Monbulk","",0
183,"Air Filter","A478","Monbulk","",0
184,"Fuel Filter","z200","Monbulk","",0
185,"Air Filter","A455","Monbulk","",0
186,"Fuel Filter","z405","Monbulk","",0
187,"Air Filter","A488","Monbulk","",0
188,"Air Filter","A329","Monbulk","",1
/
CREATE UNIQUE INDEX SYSADM.PKPART ON SYSADM.PART(PART_ID) PCTFREE 10
/
CREATE TABLE SYSADM.VEHICLE_PARTS (INSTANCE_NO INTEGER NOT NULL, 
VEHICLE_ID INTEGER NOT NULL, 
PART_ID INTEGER NOT NULL, 
QUANTITY_NEEDED INTEGER NOT NULL WITH DEFAULT) PCTFREE 10
/
INSERT INTO SYSADM.VEHICLE_PARTS VALUES(:1,:2,:3,:4)
\
$datatypes NUMERIC,NUMERIC,NUMERIC,NUMERIC
4,9,16,1
6,31,20,1
7,61,73,2
5,9,19,1
8,61,63,1
9,87,63,1
10,87,73,1
11,87,146,1
12,86,63,1
13,86,73,1
14,85,63,1
15,85,73,1
16,84,148,1
17,84,62,1
18,84,147,1
19,75,148,1
20,75,147,1
21,75,62,1
22,83,149,1
23,83,29,1
24,83,73,1
25,82,151,1
26,82,52,1
27,82,150,1
28,81,151,1
29,81,63,1
30,81,73,1
31,80,64,1
32,79,151,1
33,79,63,1
34,79,73,1
35,78,153,1
36,78,58,1
37,77,148,1
38,77,155,1
39,77,154,1
40,10,73,1
41,74,153,1
42,74,147,1
43,74,62,1
44,72,73,1
45,72,29,1
46,71,156,1
47,71,74,2
48,70,52,1
49,70,150,1
50,63,151,1
51,63,52,1
52,63,150,1
53,69,157,1
54,69,73,1
55,67,29,1
56,67,73,1
57,66,63,1
58,66,73,1
59,65,159,1
60,65,158,1
61,64,73,1
62,64,160,1
63,62,146,1
64,62,63,1
65,62,73,1
66,60,29,1
67,60,73,1
68,59,29,1
69,59,73,1
70,58,29,1
71,58,73,1
72,55,29,1
73,55,73,1
74,54,29,1
75,54,73,1
76,53,29,1
77,53,73,2
78,68,156,1
79,68,74,2
80,91,161,1
81,91,39,1
82,91,73,1
83,119,66,1
84,119,163,1
85,119,162,1
86,26,66,1
87,26,164,1
88,43,66,1
89,43,164,1
90,29,166,1
91,29,165,1
92,34,168,1
93,34,169,1
94,34,167,1
95,46,171,1
96,46,170,1
97,46,55,1
98,44,172,1
99,44,20,1
100,38,173,1
101,38,54,1
102,40,34,1
103,36,162,1
104,36,66,1
105,35,175,1
106,35,20,1
107,35,174,1
108,39,177,1
109,39,176,1
110,39,20,1
111,31,178,1
112,41,179,1
113,42,181,1
114,42,20,1
115,42,180,1
116,26,183,1
117,26,182,1
118,27,185,1
119,27,59,1
120,27,184,1
121,28,187,1
122,28,30,1
123,28,186,1
124,52,29,1
125,52,73,1
126,51,29,1
127,51,73,1
128,50,146,1
129,50,63,1
130,50,73,1
/
CREATE  INDEX SYSADM.IEPARTSVEHICLE ON SYSADM.VEHICLE_PARTS(PART_ID, 
VEHICLE_ID, 
INSTANCE_NO) PCTFREE 10
/
CREATE  INDEX SYSADM.IEVEHICLEPARTS ON SYSADM.VEHICLE_PARTS(VEHICLE_ID, 
PART_ID, 
INSTANCE_NO) PCTFREE 10
/
CREATE UNIQUE INDEX SYSADM.PKINSTVEHPARTS ON SYSADM.VEHICLE_PARTS(INSTANCE_NO, 
VEHICLE_ID, 
PART_ID) PCTFREE 10
/
CREATE TABLE SYSADM.VEHICLE_SERVICE (SERVICE_NO INTEGER NOT NULL, 
VEHICLE_ID INTEGER NOT NULL, 
SERVICE_DUE_DATE DATE NOT NULL, 
SERVICE_DONE_DATE DATE , 
SERVICE_DUE_DIST CHAR (20) , 
SERVICE_DONE_DIST CHAR (20) , 
SERVICE_MECHANIC CHAR (20) , 
GENERAL_CONDITIONS LONG VARCHAR , 
FURTHER_REQUIRE LONG VARCHAR , 
DONE_ABOVE_SERVICE LONG VARCHAR ) PCTFREE 10
/
INSERT INTO SYSADM.VEHICLE_SERVICE VALUES(:1,:2,:3,:4,:5,:6,:7,:8,:9,:10)
\
$datatypes NUMERIC,NUMERIC,DATE,DATE,CHARACTER,CHARACTER,CHARACTER,CHARACTER,CHARACTER,CHARACTER
1,9,1997-02-01,1995-10-02,"","79753 KMS","JOHN",$long,$long,$long
//
//
//
7,68,1997-02-01,1996-09-06,"150  DAYS","","MARK",$long,$long,$long
Clutch U/S~
//
Possible blown head gasket, Welsh plugs leaking, Worn steering joints, ~
Tacho     ~
//
Engine oil,   Gear box diff oil, Oil filter,  Fuel filters, Clutch plat~
e, Front gear box seal.~
//
8,31,1997-01-01,1994-08-06,"6-8-94","247698 kms","Unknown",$long,$long,$long
//
//
Dismantled rear brakes, Serviced vehicle, 1x spare tyre, Cleaned out ca~
rbie, Replaced spark plugs~
//
9,50,1997-04-01,1995-04-18,"355","","JOHN",$long,$long,$long
//
//
//
10,51,1996-11-01,1995-12-06,"","10222 hrs","JOHN",$long,$long,$long
//
Requires: Tie Rod, H/Brake U/S, Tyre, Clutch Pedal Bush~
//
Dismantled front of Tractor, Replaced water pump assy & fan belt, Fitte~
d new pre-cleaner bowl, Replaced muffler~
//
11,52,1996-10-01,1996-07-08,"","","JOHN",$long,$long,$long
Repairs Only~
//
//
Replaced front axle assembly~
//
12,53,1997-01-01,1996-08-27,"","5513 hrs","MARK",$long,$long,$long
Hydraulics U/S, Quick lock over jumping out of 2nd gear~
//
Clutch Pedal Bush, Brake Pedal Bush, Needs pressure wash~
//
Fit new Hyd. Filter~
//
13,54,1997-03-01,1996-08-15,"","4967 hrs","JOHN",$long,$long,$long
//
Requires: Fan belt, Clutch pedal bush,   Exhaust leak at muffler       ~
                     LH brake lever pin~
//
//
14,58,1997-03-01,1996-08-08,"","5889 hrs","JOHN",$long,$long,$long
//
Requires hydraulic filter~
//
//
15,60,1997-02-01,1996-08-13,"","7040 hrs","JOHN",$long,$long,$long
//
No handbrake  Hydraulic unit requires seal,   Front tyres U/S          ~
                               ~
//
4WD N/W        LH Cowling loose - Bolts missing~
//
16,55,1997-04-01,1994-05-21,"","","MARK",$long,$long,$long
//
//
Removed starter motor & found ring gear U/S              Dismantled tra~
ctor & split tractor~
//
17,62,1997-01-01,1994-10-11,"","1604 hrs","LEO",$long,$long,$long
//
//
Repair handbrake mount,  RTO light on - repaired switch~
//
18,63,1997-05-01,1996-08-07,"","3182 hrs","MARK",$long,$long,$long
Drivers seat falling apart   OSR tyre large cut~
//
Check G/Box oil & filter and Tie rod ends next service.~
//
LHS Stop light & brake light switch sticky,  Hand brake handle,  P/S he~
avy - change oil & clean filter,  Tie-up alternator wires.~
//
19,64,1997-04-01,1996-03-26,"","2877 hrs","JOHN",$long,$long,$long
//
Required Oil filter Urgently~
//
Replaced fuel filters & cleaned sediment bowl. (Full of slime)~
//
20,65,1997-04-01,1996-02-20,"","2410 hrs","Unknown",$long,$long,$long
//
//
Split tractor & replaced 4WD gears~
//
21,66,1997-03-01,1996-08-28,"","1532 hrs","MARK",$long,$long,$long
OK - Small oil leaks, Front tyres bald~
//
Small oil leaks at front pinion carrier, LHS RHS front ring pins, Front~
 drive shaft & rear end, Rear 3 point hydraulics, Rear axel tubes RHS &~
 LHS, NS indicator lense broken, NSR & OSR work lights broken, OS exter~
ior mirror broken, Have GAB filters re-conditioned ~
//
R&R sump plate - seal oil leaks, Front axle front bearing carrier crack~
ed - (Pivot) Bearing & Carrier New, Check by speed turn operation, Batt~
ery U/S, Globe in DT switch~
//
22,67,1996-09-01,1994-11-26,"","3719 hrs","JOHN",$long,$long,$long
//
Requires 2 Tie Rod ends~
//
Repaired fuel line between 2 filters~
//
23,69,1997-06-01,1993-01-16,"","","Unknown",$long,$long,$long
//
//
Split tractor & replaced damaged PTO gear~
//
24,70,1997-02-01,1995-11-10,"","2851 hrs","JOHN",$long,$long,$long
//
//
Replaced hydraulic filter,  R&R radiator & sent away for repair - recor~
ded~
//
25,71,1997-02-01,1996-02-29,"","3762 hrs","MARK",$long,$long,$long
//
//
Reco starter motor, Fit new lift pump, Fit new fan belt, Check P/S flui~
d, Engine oil~
//
26,73,1996-12-01,1994-10-29,"","","JOHN",$long,$long,$long
//
//
//
27,74,1997-01-01,1995-11-24,"","28 hrs","JOHN",$long,$long,$long
//
//
Dismantled rear of tractor & replaced spider gears in diff~
//
28,75,1997-08-01,1996-01-03,"","1729 hrs","Unknown",$long,$long,$long
//
//
Dismantled motor, Rebored block & honed, fitted o/sized pistons, Reasse~
mbled motor.  Split tractor & ordered clutch assy.  Replaced clutch ass~
y & reassembled tractor.~
//
30,77,1997-03-01,1996-01-03,"","591 hrs","JOHN",$long,$long,$long
//
//
//
31,78,1996-07-16,1996-07-16,"","357 hrs","MARK",$long,$long,$long
Steering tight one way~
//
Hand brake teeth worn~
//
Roll bar bolt,  Stop lights,  Indicators~
//
32,78,1997-01-01,1996-07-24,"","360 hrs","MARK",$long,$long,$long
//
//
Change transmission oil to Mobil fluid 424 - G/Change slipping into gea~
r~
//
33,79,1997-08-01,1996-08-07,"","417 hrs","LEO",$long,$long,$long
Very Good.  No Top Linic,  Twine around front & rear axles~
//
//
Replace air filters next service~
//
34,80,1997-03-01,1996-06-24,"","","JOHN",$long,$long,$long
//
//
Refitted brake disc, Refitted drive shaft (replace uni joint) & final d~
rive assy.  Fitted new bolts to rear axle.  Bleed brakes & fitted retur~
n spring to brake pedal.  Lubricated rear drive chain & digging chain.~
//
35,81,1997-08-01,1996-08-08,"","720 hrs","JOHN",$long,$long,$long
//
//
NSF Steering joint, Handbrake handle, Change Hyd filter~
//
36,82,1997-07-01,1996-07-24,"","830 hrs","MARK",$long,$long,$long
OK,   No top link~
//
Next Service - Air Filter, G/Box oil change~
//
G/Box oil filter~
//
37,82,1996-08-07,1996-08-07,"","831 hrs","LEO",$long,$long,$long
Fitted with cor cutter,  Handbrake U/S~
//
//
Removed Kubota handbrake & refitted a modified Fiat hanhdbrake assy.~
//
38,83,1997-07-01,1996-07-25,"","1443 hrs","JOHN",$long,$long,$long
//
//
R&R fan & water pump & replaced gaskets~
//
39,85,1997-08-01,1996-08-08,"","1027 hrs","JOHN",$long,$long,$long
//
Steering Rack Bolts U/S, Requires hydraulic filter, Handbrake requires ~
modification, One brake lens.~
//
//
40,43,1997-03-01,1996-05-10,"","03356 kms","MARK",$long,$long,$long
Dirty, Rusty, No clutch~
//
//
Rear spring bushes, Clutch U/S, Clutch S/Cyl weep, Rear G/B flange loos~
e, R/Cover weeping, H/Brake lever bent, Neg & Pos battery terminal, OSF~
 shocker rubbers, Pinion flange loose, Muffler bracket cracked & loose,~
 RHS door handle, OSR shocker, Rear brake pressure rod, NSF W/bearings ~
loose - adjust.~
//
41,44,1997-01-01,1996-01-25,"","43022 kms","JOHN",$long,$long,$long
//
//
Replaced front & rear brake pads~
//
42,46,1997-03-01,1996-08-08,"","196220 kms","MARK",$long,$long,$long
Oil change & filter service - First after engine re-build~
//
Front drive shaft uni,  T/Case oil leak,  Exhaust tail pipe,  No plate ~
light wire.~
//
//
43,34,1997-07-01,1996-04-02,"","74918 kms","CHRIS",$long,$long,$long
//
//
//
44,35,1997-06-01,1996-06-26,"","30772 kms","MARK",$long,$long,$long
Not starting, Tray Loose, A quick check over.~
//
Reg Label, Possible M/C fault - Fluid going from rear res / to front re~
s, Tail pipe rust hole, Small radiator weep~
//
All spring bushes, Rear tray loose, Off tyre flat, Battery - new, Batte~
ry carrier, Tray mud guards loose, Hand brake, Fit 2 new taillight assy~
, Rear engine mounts loose, Front uni of rear shaft - no grease nipple.~
~
//
45,36,1997-06-01,1996-07-15,"","186540 kms","JOHN",$long,$long,$long
Low Compression, Incorrect window in sliding door.  Windscreen U/S-Repo~
rt only, ~
//
//
Rear Brakes U/S, Rear tyre, Glove box won't open, Parcel tray fallen of~
f, Washer jets m- glued in place, Snib buttons broken, Sliding door rol~
lers U/S, LH upper control arm bushes U/S, Bell crank bushes, Tail gate~
 lock, Horn pad not secure, Rear shackle bushes worn, LH # plate light ~
N/W, Reverse lights N/W, Oil light N/W, Radio N/W-sent for repair (unde~
r warranty)~
//
46,40,1997-06-01,1996-06-03,"","67730 kms","JOHN",$long,$long,$long
Good~
//
Requires Alternater Belts~
//
//
47,41,1997-03-01,1994-03-23,"","378 kms","Unknown",$long,$long,$long
LHF Tyre scrubbing, Back mud gurards bend, Low almost out of oil.  Pass~
engers seat needs repair.~
//
//
Radiator leaking, Brakes low on pedal, Change Oil & greased, Side board~
 clip-replaced, Brake cylinder ceased, Hand brake hardly working.~
//
48,39,1997-07-01,1996-08-08,"","155260 kms","MARK",$long,$long,$long
Flat tyre, Bald tyre, Check brakes~
//
Handbrake handle, Int light switch broken, Small miss #4-possible lead,~
 OSF mirror small crack, Reg label, ~
//
Condensor bracket bolts, Lower OSR shocker rubbers, Rear brake reline, ~
NSR tyre U/S, Interior light lense, 3 wiper blades, Plastic steering co~
lumn broken, Air filter element nut (Sucking dirty air past filter, Air~
 ducting very dirty - clean refit & new air filter nut & carby gasket.~
//
49,42,1997-06-01,1996-06-12,"","44382 kms","MARK",$long,$long,$long
OK Out/Inside, Dirty under body~
//
//
//
50,26,1996-07-05,1996-07-05,"","103553 kms","JOHN",$long,$long,$long
//
//
Replaced Front & Rear Pads, Replaced Front & Rear Disc rotors, Replaced~
 Sensors.~
//
51,26,1996-07-23,1996-07-23,"","105179 kms","MARK",$long,$long,$long
Poor performance - Tune up~
//
Auto Service due at 107K, NSF Brake duct missing, Small oil leaks front~
 & rear of G/box, ~
//
Reg label, NSR brake light, NSR door lock, OS indicator dash light, Whe~
el balance~
//
52,26,1996-08-22,1996-08-22,"","","JOHN",$long,$long,$long
//
//
Replaced rear shockers~
//
53,27,1997-02-01,1996-07-01,"","152354 kms","MARK",$long,$long,$long
Rough, Dirty, Front end noise, Bald tyres~
//
No front mud flaps, Windscreen cracked, P/S box oil leak~
//
2 Pedal pads, Front drive shaft uni's - replace 2, 4xTyres, Front end a~
lignment-OK, Drivers seat broken, Tailgate catchs, NSR leafs need align~
ment, Lower rear spring bushes, Rear pinnon flange  loose, A/C idler pu~
lly/earing, Exhaust flange gasket, Exhaust leak, Battery clamp, Vacuum ~
hose, Front door light switches no power, Rear brake shoes, Adjust fron~
t suspension - Up 10-14mm~
//
54,28,1997-06-01,1996-05-31,"","129950 kms","MARK",$long,$long,$long
Drive line noise, Wheel nuts missing, Seat covers missing, Dirty Inside~
 & Out, Bettery acid on bonnet~
//
Front mud flaps, Seat Covers, NSF CV joint loose-OK, Front drive shaft ~
seals, Thermostat, R/cover leak, ~
//
Exhaust holes - new muffler, OSR wheel nuts missing, 3xRear uni joints,~
 G/B flange loose, Front drive shaft seals inner & outer NSF & OSF, All~
 rear spring bushes, Re race rear diff, OSR wheel bearing & seals, Cent~
re bearing, Front pads wearing uneven, Outer CV boots perished, Adjust ~
rear brakes~
//
55,29,1996-05-09,1996-05-09,"","83200 kms","MARK",$long,$long,$long
Valves U/S~
//
Muffler, NSR mud flap, Radio aerial, Auto service~
//
Front & Rear Brake pads U/S~
//
56,29,1997-02-01,1996-08-21,"","89629 kms","MARK",$long,$long,$long
//
//
Fit new petrol pump, Service Auto Trans, Adjust belts~
//
57,32,1996-07-05,1996-07-05,"","106916 kms","JOHN",$long,$long,$long
Front pads low on one side~
//
//
Rotated tyres F to R, Requires Front muffler, LHR tyre, FWA~
//
59,33,1997-02-01,1996-03-14,"","84314 kms","MARK",$long,$long,$long
//
Needs rear muffler~
//
Fit new front brake pads~
//
60,38,1993-09-17,1993-09-17,"","63825 kms","Unknown",$long,$long,$long
//
//
New clutch & P/Plate, Seals in motor~
//
61,72,1991-02-14,1991-02-14,"","","Unknown",$long,$long,$long
//
//
Remove front Pivot pin/bushes & replace~
//
64,61,1997-04-01,1996-09-17,"","","MARK",$long,$long,$long
//
//
//
65,62,1997-05-01,1996-09-17,"","","MARK",$long,$long,$long
//
//
//
66,56,1997-05-01,1996-09-17,"","","MARK",$long,$long,$long
//
//
//
67,77,1997-06-01,1996-09-17,"","","MARK",$long,$long,$long
//
//
//
68,60,1997-07-01,1996-09-17,"","","MARK",$long,$long,$long
//
//
//
69,58,1997-07-01,1996-09-17,"","","MARK",$long,$long,$long
//
//
//
70,80,1997-06-01,1996-09-17,"","","MARK",$long,$long,$long
//
//
//
71,53,1997-07-01,1996-09-17,"","","MARK",$long,$long,$long
//
//
//
72,64,1997-07-01,1996-09-17,"","","MARK",$long,$long,$long
//
//
//
73,66,1997-07-01,1996-09-17,"","","MARK",$long,$long,$long
//
//
//
74,54,1997-08-01,1996-09-17,"","","MARK",$long,$long,$long
//
//
//
75,70,1997-08-01,1996-09-17,"","","MARK",$long,$long,$long
//
//
//
76,59,1996-09-01,1996-09-17,"","","MARK",$long,$long,$long
//
//
//
77,74,1997-08-01,1996-09-24,"","","MARK",$long,$long,$long
//
//
//
78,10,1997-01-01,1996-09-17,"","","Unknown",$long,$long,$long
//
//
Weld lift ram pipe to stop leak, Secure front roll bars, Check over.~
//
79,100,1997-02-01,1996-09-17,"","","MARK",$long,$long,$long
//
//
//
80,84,1997-08-01,1996-09-17,"","","MARK",$long,$long,$long
//
//
//
81,56,1996-09-01,1996-09-17,"","","MARK",$long,$long,$long
//
//
//
82,10,1996-09-01,1996-09-17,"","","MARK",$long,$long,$long
//
//
//
83,78,1996-09-01,1996-09-17,"","","MARK",$long,$long,$long
//
//
//
84,84,1996-09-01,1996-09-27,"","","MARK",$long,$long,$long
//
//
//
85,86,1996-09-01,1996-09-17,"","","MARK",$long,$long,$long
//
//
//
86,87,1997-05-01,1996-09-17,"","","MARK",$long,$long,$long
//
//
//
87,52,1997-06-01,1996-09-17,"","","MARK",$long,$long,$long
//
//
//
88,62,1996-10-01,1996-09-17,"","","MARK",$long,$long,$long
//
//
//
89,77,1996-10-01,1996-09-17,"","","MARK",$long,$long,$long
//
//
//
90,100,1996-10-01,1996-09-17,"","","MARK",$long,$long,$long
//
//
//
91,51,1997-04-01,1996-09-17,"","","MARK",$long,$long,$long
//
//
//
92,55,1996-11-01,1996-09-17,"","","MARK",$long,$long,$long
//
//
//
93,58,1996-11-01,1996-09-17,"","","MARK",$long,$long,$long
//
//
//
94,57,1996-11-01,1996-04-19,"","4942 hrs","JOHN",$long,$long,$long
Repairs Only~
//
//
Replaced 'O' ring at hydraulic pump & topped up hydraulic unit with oil~
.  Replaced both batteries.~
//
95,69,1996-11-01,1996-09-17,"","","MARK",$long,$long,$long
//
//
//
96,64,1996-12-01,1996-09-17,"","","MARK",$long,$long,$long
//
//
//
97,66,1996-12-01,1996-09-17,"","","MARK",$long,$long,$long
//
//
//
98,87,1996-12-01,1996-09-17,"","","MARK",$long,$long,$long
//
//
//
99,80,1996-12-01,1996-09-17,"","","MARK",$long,$long,$long
//
//
//
100,61,1996-12-01,1996-09-10,"","4385 hrs","MARK",$long,$long,$long
Poor performance, Quick lookover~
//
Tacho not working-cable broken, NSF tierod ends U/S, Temperature gauge ~
not working-OK, Front steering arm link bush, Fork ram oil leak, Fork r~
ollers loose, Overhaul fork assembly~
//
Clean air hose loose at air filter-wash & tighten, Adj clutch, Air filt~
er U/S-replace both, Sow leak OSF tyre-fit new valve, Pitman arm joint ~
loose, Sucking dirty air into engine, Roll bar bolts loose, String arou~
nd rear axles~
//
101,75,1996-12-01,1996-09-17,"","","MARK",$long,$long,$long
//
//
//
102,59,1997-02-01,1996-09-17,"","","MARK",$long,$long,$long
//
//
//
103,57,1997-02-01,1996-09-17,"","","MARK",$long,$long,$long
//
//
//
104,52,1997-03-01,1996-09-17,"","","MARK",$long,$long,$long
//
//
//
105,61,1997-08-01,1996-09-17,"","","MARK",$long,$long,$long
//
//
//
106,68,1996-09-01,1996-09-06,"","","MARK",$long,$long,$long
Clutch U/S~
//
Possible blown head gasket, Welsh plugs leaking, Worn steering joints, ~
Tacho/HR meter not working, Front wheel bearings loose, Engine oil leak~
s, Temp gauge reading high, Primer pump worn out, ~
//
Pitman arm loose, Replace clutch plate, Front G/box seal, 1xp/plate for~
k, reasemble & adjust~
//
107,120,1997-02-01,1996-09-17,"","","MARK",$long,$long,$long
//
//
//
108,88,1997-01-01,1996-09-17,"","121932","MARK",$long,$long,$long
noise in back end  ~
//
oil light  not working   radiator lower tank  leaking  ~
//
rear  universals   exhaust flange leak   two rear tyres flat   ~
//
109,30,1997-01-01,1996-09-17,"","","MARK",$long,$long,$long
//
//
//
110,47,1997-01-01,1996-09-17,"","","MARK",$long,$long,$long
//
//
//
111,122,1997-02-01,1996-09-17,"","","MARK",$long,$long,$long
//
//
//
112,48,1997-03-01,1996-09-17,"","","MARK",$long,$long,$long
//
//
//
113,37,1997-03-01,1996-09-17,"","","MARK",$long,$long,$long
//
//
//
114,96,1997-04-01,1996-09-17,"","","MARK",$long,$long,$long
//
//
//
115,97,1997-04-01,1996-09-17,"","","MARK",$long,$long,$long
//
//
//
116,23,1997-04-01,1996-09-17,"","","MARK",$long,$long,$long
//
//
//
117,90,1997-04-01,1996-09-17,"","","MARK",$long,$long,$long
//
//
//
118,1,1997-04-01,1996-09-17,"","","MARK",$long,$long,$long
//
//
//
119,94,1997-05-01,1996-09-17,"","","MARK",$long,$long,$long
//
//
//
120,95,1997-05-01,1996-09-17,"","","MARK",$long,$long,$long
//
//
//
121,93,1997-05-01,1996-09-17,"","","MARK",$long,$long,$long
//
//
//
122,92,1997-05-01,1996-09-17,"","","MARK",$long,$long,$long
//
//
//
123,98,1997-05-01,1996-09-17,"","","MARK",$long,$long,$long
//
//
//
124,91,1997-05-01,1996-09-17,"","","MARK",$long,$long,$long
//
//
//
125,44,1997-06-01,1996-09-17,"","","MARK",$long,$long,$long
//
//
//
126,32,1997-06-01,1996-09-17,"","","MARK",$long,$long,$long
//
//
//
127,119,1997-07-01,1996-08-14,"","189878 kms","MARK",$long,$long,$long
Dirty, Jumping out of gear, Engine Sad Rebuild~
//
Front floor mat, Crack OSF Lower corner of windscreen, NSR window felt ~
coming out, Fuel Cap, Exhaust tail pipe, NSF dash vent, ~
//
Reco Engine:  Rebore, pistons & rings, Full gaskit kit incl seals, All ~
bearings inc cam, oil pump, welsh plugs, thermostat.  Reco Head: Grind ~
surface valves, surface head, welsh plugs, shim springs, valve seats? C~
arby - adjust float height, Top, gasket, Acl plunger, Timing chains & g~
uides all OK, Weld accelerator pedal, Drivers Seat, Sliding door lower ~
roller, 1xwiper blade ass, Adjust door hinges, Frone end alignment, Spa~
re wheel bolt, Waterpipe under engine leaking, Intake hose leak between~
 carb & air filter (Loose), Exhaust gasket, Rocker cover leak (Weld)~
//
128,88,1997-07-01,1996-09-17,"","","MARK",$long,$long,$long
//
//
//
129,30,1997-07-01,1996-09-17,"","","MARK",$long,$long,$long
//
//
//
130,47,1997-07-01,1996-09-17,"","","MARK",$long,$long,$long
//
//
//
131,29,1997-08-01,1996-09-17,"","","MARK",$long,$long,$long
//
//
//
132,27,1997-08-01,1996-09-17,"","","MARK",$long,$long,$long
//
//
//
133,9,1997-08-01,1996-09-26,"","99085","MARK",$long,$long,$long
ok  service  over due   noise in front     end~
//
replace spark plugs  rocker cover weep   muffler    windscreen cracked ~
  check gearbox and t/fer case oil ~
//
diff oil  f/ swaybar bushes   rad cap   rear canopy window  sealed ~
//
134,33,1997-08-01,1996-09-17,"","","MARK",$long,$long,$long
//
//
//
135,31,1997-08-01,1996-09-17,"","","MARK",$long,$long,$long
//
//
//
136,41,1996-09-01,1996-09-17,"","","MARK",$long,$long,$long
//
//
//
137,120,1996-09-01,1996-09-17,"","","MARK",$long,$long,$long
//
//
//
138,48,1996-09-01,1996-09-17,"","","MARK",$long,$long,$long
//
//
//
139,37,1996-09-01,1996-09-17,"","154042","MARK",$long,$long,$long
rough     engine u/s~
//
repair  seats     rocker  arms  will need replacing in future ~
//
f/uni.s  f/shocker  rubbers    r/shockers  r/diff housing  n/s door han~
dle  f/pin seal  transfer case seal                full reco  engine  ~
//
140,43,1996-10-01,1996-09-17,"","","MARK",$long,$long,$long
//
//
//
141,46,1996-10-01,1996-09-17,"","","MARK",$long,$long,$long
//
//
//
142,90,1996-10-01,1996-09-17,"","","MARK",$long,$long,$long
//
//
//
143,23,1996-10-01,1996-09-17,"","","MARK",$long,$long,$long
//
//
//
144,93,1996-11-01,1996-09-17,"","","MARK",$long,$long,$long
//
//
//
145,122,1996-11-01,1996-09-17,"","","MARK",$long,$long,$long
//
//
//
146,91,1996-11-01,1996-09-10,"","183036 kms","MARK",$long,$long,$long
Quick look over - exhaust leaking, Very rough~
//
Muffler & exhaust pipe, Shocker rubbers {OK for now} Exhaust brake, Glo~
w plug light, Dash warning lights incl oil light, No jack, Exhaust clam~
ps, Clutch/pressure plate only 10% of life left in it, OSF mud flap mis~
sing, Front interior light lense~
//
Body U bolts loose, Hard to start - charge battery, Clutch-slave cyl le~
ak-fit kit, Engine oil leaks-inj pump t/case seal, Rear frame broken-re~
move, Tyre pressures low, Thump in steering column-shorten yoke at slip~
 joint, A/C belt adj bolts loose~
//
147,92,1996-11-01,1996-09-17,"","","MARK",$long,$long,$long
//
//
//
148,98,1996-11-01,1996-09-17,"","","MARK",$long,$long,$long
//
//
//
149,42,1996-12-01,1996-10-21,"","58260 ","MARK",$long,$long,$long
bull bar loose      mud build up  under neath   vechile  ~
//
clutch pedal pad   weld bull bar   ~
//
rebolt  bullbar mount   replaced rear tyres  ~
//
150,32,1996-12-01,1996-09-17,"","","MARK",$long,$long,$long
//
//
//
151,49,1996-12-01,1996-09-17,"","","MARK",$long,$long,$long
//
//
//
152,26,1996-12-01,1996-09-17,"","","MARK",$long,$long,$long
//
//
//
153,121,1996-12-01,1996-09-17,"","","MARK",$long,$long,$long
//
//
//
154,123,1997-03-01,1996-09-17,"","","MARK",$long,$long,$long
//
//
//
155,125,1997-01-01,1996-09-17,"","","MARK",$long,$long,$long
//
//
//
156,126,1997-01-01,1996-09-17,"","","MARK",$long,$long,$long
//
//
//
157,127,1997-01-01,1996-09-17,"","","MARK",$long,$long,$long
//
//
//
158,124,1997-01-01,1996-09-17,"","","MARK",$long,$long,$long
//
//
//
159,105,1996-10-01,1996-10-17,"","1131  HRS","MARK",$long,$long,$long
OIL LEAK AT OIL GAUGE .   THROTLE ROD THREAD U/S  ~
//
EXHAUST  AND MUFFLER ?   starter  motor  ?  wash air filter  ~
//
repair  throtle rod      tighten  oil  line  ~
//
160,17,1996-10-01,1996-09-17,"","","MARK",$long,$long,$long
//
//
//
161,18,1996-10-01,1996-09-17,"","","MARK",$long,$long,$long
//
//
//
162,103,1996-10-01,1996-09-17,"","","MARK",$long,$long,$long
//
//
//
163,106,1996-10-01,1996-10-11,"","880  hrs ","MARK",$long,$long,$long
ok~
//
nil~
//
exhaust leak , p/test rad  .  starter  motor  wire  , fly wheel shield ~
 ,  weld dip stick  ,  adjust  tappets  ~
//
164,19,1996-10-01,1996-10-15,"","not working  ","MARK",$long,$long,$long
watch dog  not working  .  oil sludgy  rad  cap u/s   .   needs air fil~
ter  ~
//
rocker  cover breather  hose  ,   water pump  hose  ~
//
fuel leaks  oil leaks  watch dog wires burnt out  .pump drive rubbers  ~
   cleaned  radiator       ~
//
165,101,1996-10-01,1996-10-15,"","3337  hrs","MARK",$long,$long,$long
ok~
//
4  sump nuts  ~
//
oil  cooler  leak  replace  fuel hose    weld belt cover ~
//
166,102,1996-10-01,1996-09-17,"","","MARK",$long,$long,$long
//
//
//
167,104,1996-10-01,1996-10-15,"","1743  hrs  ","MARK",$long,$long,$long
muffler  broken  ;  fuel  leaks  fan belts u/s  ~
//
hr meter  u/s  cable  broken  . fuel leaks~
//
wash oil cooler  replace fan belts  weld muffler  weld  cooling  cowl~
//
169,130,1997-08-01,1996-09-17,"","","MARK",$long,$long,$long
//
//
//
172,30,1996-09-26,1996-09-26,"","144148","MARK",$long,$long,$long
clutch slipping~
//
antenna broken   rear shockabsorbers     rear windscreen wiper motor  t~
hermostat~
//
front door hinges  trans drive seal  r/cover  oil leak  sump leak front~
 brake pads   r/brake shoes +w/cylinders ~
//
173,114,1996-11-14,1996-11-14,"","","MARK",$long,$long,$long
//
//
//
/
CREATE UNIQUE INDEX SYSADM.PKVEHICLESERVICE ON SYSADM.VEHICLE_SERVICE(SERVICE_NO) PCTFREE 10
/
CREATE TABLE SYSADM.SERVICE_PARTS_USED (SERVICE_NO INTEGER NOT NULL, 
VEHICLE_ID INTEGER NOT NULL, 
PART_ID INTEGER NOT NULL, 
QUANTITY_USED INTEGER NOT NULL WITH DEFAULT) PCTFREE 10
/
INSERT INTO SYSADM.SERVICE_PARTS_USED VALUES(:1,:2,:3,:4)
\
$datatypes NUMERIC,NUMERIC,NUMERIC,NUMERIC
1,9,16,1
1,9,19,1
1,9,24,1
/
CREATE UNIQUE INDEX SYSADM.PKSERVICEPARTSUSED ON SYSADM.SERVICE_PARTS_USED(SERVICE_NO, 
VEHICLE_ID, 
PART_ID) PCTFREE 10
/
