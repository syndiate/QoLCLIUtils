@echo off
setlocal enabledelayedexpansion
if "%1" equ "--help" (
	echo Pipes a given input into any command or program that takes in input, regardless of whether or not it is able to do so when piped or provided as a command-line argument.
	echo Usage: ^<input^> ^| PipeAnywhere ^<program^/command^>
	exit /b
)

set "input="
for /f "delims=" %%A in ('more') do ( set "input=!input!%%A" )
set "final_cmd=%1 !input!"
call !final_cmd!