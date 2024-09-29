@echo off
setlocal enabledelayedexpansion
if "%1" equ "--help" (
	echo Mimicks the behavior of Linux's sudo command, which runs a given command as an administrator, without the need to open another instance of cmd as an administrator.
	echo Usage: sudo [--nop] ^<command^>
	echo.
	echo Arguments:
	echo --nop: Runs the command without invoking PowerShell to do so. Substantially faster but does not output errors and is overall more prone to errors.
	exit /b
)


net user "%username%" | find /i "*Administrators" >nul 2>&1
if !errorlevel! neq 0 (
	echo Access is denied.
	exit /b
)

set "do_powershell=0"
set "all_args_updated="
for %%A in (%*) do (
    if "%%A" equ "-nop" (
        set "do_powershell=1"
    ) else (
		set "all_args_updated=!all_args_updated! %%A"
	)
)

set "file_path=%temp%\temp_sudo_!random!.txt"

if !do_powershell! equ 0 (
	powershell "Start-Process cmd.exe -Verb RunAs -ArgumentList '/c', 'cd \"!cd!\" & (!all_args_updated! > \"!file_path!\" 2>&1)' -Wait; Get-Content '!file_path!'"
) else (
	set "cmd_to_run=cd /d \"%cd%\" & (%*) > \"!file_path!\""
	runas /user:"%username%" "cmd.exe /c \"!cmd_to_run!\""
	:wait_for_file
	if not exist "!file_path!" (
		goto wait_for_file
	)
	type "!file_path!"
)

del "!file_path!" >nul 2>&1