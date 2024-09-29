@echo off
setlocal enabledelayedexpansion
if "%1" equ "--help" (
	echo Prints out alphanumerically sorted list of subdirectories in the current directory as well as their corresponding positional index in the list.
	echo Usage: dirlistnum
	exit /b
)

set "curr_index=0"
for /f "delims=" %%i in ('dir /o /d /b') do (
	if exist "%cd%\%%i\*" (
		echo !curr_index!: %%i
		set /a "curr_index=!curr_index!+1"
	)
)
