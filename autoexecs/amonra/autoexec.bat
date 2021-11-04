

:menu
@echo off
cls
echo.
echo Press 1 for Laura Bow 2: The Dagger of Amon Ra w/ SoundBlaster
echo Press 2 for Laura Bow 2: The Dagger of Amon Ra w/ MT32
echo Press 3 for Laura Bow 2: The Dagger of Amon Ra w/ Sound Canvas
echo Press 4 to Quit
echo.
jchoice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto SC55
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
cls
@sierra sesource.cfg
goto quit

:MT32
mt32-pi -m -v
cls
@sierra mesource.cfg
goto quit

:SC55
mt32-pi -g -v
cls
@sierra cesource.cfg
goto quit

:quit
exit