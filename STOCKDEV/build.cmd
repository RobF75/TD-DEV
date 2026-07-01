"C:\Program Files (x86)\Unify\Team Developer 5.2\cbi52.exe" -B c:\dev\STOCKDEV\Customed-new-working.app Customer.exe
"C:\Program Files (x86)\Unify\Team Developer 5.2\cbi52.exe" -B c:\dev\STOCKDEV\custrep.app custrep.exe
"C:\Program Files (x86)\Unify\Team Developer 5.2\cbi52.exe" -B c:\dev\STOCKDEV\loadd.app load.exe

copy /Y c:\dev\STOCKDEV\customer.exe c:\centura\localexe\customer.exe 
copy /Y c:\dev\STOCKDEV\custrep.exe c:\centura\localexe\custrep.exe 
copy /Y c:\dev\STOCKDEV\load.exe c:\centura\localexe\load.exe 


move /Y c:\dev\STOCKDEV\customer.exe c:\dev\Remotupd\customer.exe 
move /Y c:\dev\STOCKDEV\custrep.exe c:\dev\Remotupd\custrep.exe 
move /Y c:\dev\STOCKDEV\load.exe c:\dev\Remotupd\load.exe 

pause