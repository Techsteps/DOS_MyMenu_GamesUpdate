REM CALL imgtry ide10 D "/cd/AbZero/AZ.chd" "/cd/AbZero/AZ.cue"

:menu
@echo off
cls
echo.
echo Press 1 for Absolute Zero w/ SoundBlaster
echo Press 2 for Absolute Zero w/ MT-32
echo Press 3 for Absolute Zero w/ Sound Canvas
echo Press 4 to Quit
echo.
jchoice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto SC55
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
cd setsound
xcopy /Y .\sb16\*.* .\
cd ..
xcopy /Y .\setsound\sb16\*.* .\
cls
@call AZ
goto quit

:MT32
mt32-pi -m -v
cd setsound
xcopy /Y .\mt32\*.* .\
cd ..
xcopy /Y .\setsound\mt32\*.* .\
cls
@call AZ
goto quit

:SC55
mt32-pi -g -v
cd setsound
xcopy /Y .\sc55\*.* .\
cd ..
xcopy /Y .\setsound\sc55\*.* .\
cls
@call AZ
goto quit

:quit
exit