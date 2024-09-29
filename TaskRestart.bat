@echo off
if "%1" equ "--help" (
	echo Restarts a given program.
	echo Usage: taskrestart ^<name_of_program_exe^>
	exit /b
)

set "final_cmd=taskkill /f /im %1 & start %1"
call %final_cmd%
