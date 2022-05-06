@echo off 
goto start

:start
title PASSWORD
color 0a
cls
echo.
echo.
set /p a=.        Password:
title ERROR CODE: %random%
cls
echo.
echo.
echo:         ERROR
timeout /t 2 /nobreak >> nul
color 04
cls
echo.
echo.
echo:         ERROR
timeout /t 1 /nobreak >> nul
set l=0
cls
goto matrix

:matrix
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%
set /a l+=1
if %l%==300 goto next
goto matrix

:next
title Access Granted
color 0a
cls
echo.
echo.
echo:         ACCESS GRANTED
timeout /t 2 /nobreak >> nul
set l=0
cls
goto rmatrix

:rmatrix
color 04
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%
set /a l+=1
if %l%==100 goto data
goto rmatrix

:data
timeout /t 2 /nobreak >> nul
title ERROR CODE: %random%
color 0c
cls
echo.
echo.
echo:         DATA CORRUPTED
timeout /t 2 /nobreak >> nul
cls
echo.
echo.
echo:         ERROR
timeout /t 2 /nobreak >> nul
set l=0
cls
goto loop

:loop
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%
set /a l+=1
if %l%==300 exit
goto loop