@echo off
:: FUCK YOU BATCH. FUCK YOU.
:: setlocal enabledelayedexpansion
if "%1" equ "--help" (
	echo Navigates to a particular subdirectory in the current directory via its positional index in the alphanumerically sorted list of subdirectories in the current directory.
	echo Usage: dirnav ^<dir_index^>
	exit /b
)

for /f "delims=" %%i in ('dirfind %1') do set "dirname=%%i"
cd "%dirname%" >nul 2>&1
if %errorlevel% neq 0 (
	echo Did not find directory of index %1 in the current directory.
	exit /b
)