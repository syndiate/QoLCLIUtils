@echo off
setlocal enabledelayedexpansion
if "%1" equ "--help" (
	echo Prints out the name of the directory that corresponds to its positional index in the alphanumerically sorted list of subdirectories in the current directory.
	echo Usage: dirfind ^<dir_index^>
	exit /b
)

set /a "dirindex=%1"
set /a "curr_dir_index=-1"
	if !dirindex! lss 0 (
	echo Negative index provided. Quitting.
	exit /b
)
for /D %%i in ( * ) do (
	set "navdir=%%i"
	set /a "curr_dir_index=!curr_dir_index!+1"
	if !curr_dir_index! geq !dirindex! ( goto navigate_to )
)
echo Did not find directory of index !dirindex! in the current directory.
exit /b


:navigate_to
echo "!cd!\!navdir!"
exit /b