echo off
cls


if !==!%1 goto NOPARAM
if not %1 == PRINTFILE goto BADCOMMAND
if not exist %2 goto END

echo] 
echo (c) 1990  AccuSoft Public Domain & Shareware
echo]
echo File to print: %2 
echo Hit (Control-C) if you want to skip over printing this file.
echo Otherwise, align the paper to print out the file %2, and
pause
copy %2 prn
goto END

:NOPARAM
for %%f in (*.doc) do command /c printdoc PRINTFILE %%f
for %%f in (*.txt) do command /c printdoc PRINTFILE %%f
for %%f in (*.man) do command /c printdoc PRINTFILE %%f

echo] 
echo All done printing!
echo] 
goto END

:BADCOMMAND
echo] 
echo To print any or all of the documentation files, just type:
echo] 
echo              PRINTDOC  (press enter)
echo] 

:END
