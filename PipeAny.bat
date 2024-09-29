@echo off
setlocal enabledelayedexpansion
if "%1" equ "--help" (
	echo Shorthand alias for the PipeAnywhere utility.
	echo Usage and syntax is identical to PipeAnywhere.
	exit /b
)

set "input="
for /f "delims=" %%A in ('more') do (
set "input=!input!%%A"
)
set "final_cmd=%1 !input!"
call !final_cmd!