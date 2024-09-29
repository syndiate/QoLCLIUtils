@echo off
setlocal enabledelayedexpansion

:: Ensure dupe_names array is created
set "dupe_names[0]=a"
set "dupe_index=1"

:: dir /s /b /a-d %~dp0
:: for /r "%usefulutilities%" %%i in (*.exe *.bat *.cmd) do (
for %%i in ("%~dp0\*.exe" "%~dp0\*.bat" "%~dp0\*.cmd") do (
	set "filename=%%~nxi"
	call :print_file
)
goto :eof


:print_file
set "fil1=.exe"
set "fil2=.bat"
set "fil3=.cmd"
call set "fin1=%%filename:.exe=%%"
call set "fin2=%%fin1:.bat=%%"
call set "fin3=%%fin2:.cmd=%%"
set "filename=%fin3%"
set "already_found=0"

for /l %%i in (1,1,%dupe_index%) do (
	if %%i lss !dupe_index! (
		if !dupe_names[%%i]! equ !filename! (
			set "already_found=1"
		)
	)
)

if !already_found! equ 1 (
	goto :eof
) else (
	set "curr_dupe_index=0"
	if exist "%~dp0\%filename%.bat" (
		set /a "curr_dupe_index=!curr_dupe_index! + 1"
	)
	if exist "%~dp0\%filename%.exe" (
		set /a "curr_dupe_index=!curr_dupe_index! + 1"
	)
	if exist "%~dp0\%filename%.cmd" (
		set /a "curr_dupe_index=!curr_dupe_index! + 1"
	)
	if !curr_dupe_index! GEQ 2 (
		set "dupe_names[!dupe_index!]=%filename%"
		set /a "dupe_index=!dupe_index! + 1"
	)
)
echo %fin3%
goto :eof


:break
goto :eof


:end
echo.
echo.
echo.