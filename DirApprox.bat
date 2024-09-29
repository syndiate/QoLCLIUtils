@echo off
if "%1" equ "--help" (
	echo Enumerates through all subdirectories of the current directory and navigates into the first directory that contains the string specified.
	echo Usage: dirapprox ^<part_of_dir_name^>
	exit /b
)

set "approxname=%1"
if "%approxname%" equ "" (
    echo No approx name provided. Quitting.
    exit /b
)

for /D %%i in (*) do (
    setlocal enabledelayedexpansion
    echo %%i | findstr /i "%approxname%" > nul
    if !errorlevel! equ 0 (
        endlocal
        cd /d "%%i"
        exit /b
    )
    endlocal
    call;
)

echo Did not find an approximate match for the given directory in the current directory.
exit /b
