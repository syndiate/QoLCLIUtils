@echo off
setlocal enabledelayedexpansion
if "%1" equ "--help" (
	echo Shorthand alias for the comparatively verbose "Get-FileHash" PowerShell command, which retrieves the, by default SHA-256, hash of a given file.
	echo Usage: hash [-a] ^<file_name^>
	echo.
	echo Arguments:
	echo -a: Specifies the hashing algorithm to perform. If not specified, the algorithm defaults to SHA256.
	exit /b
)

set "alg_flag="
set "curr_arg_index=1"
set "read_as_alg=0"
for %%A in (%*) do (
	if "%%A" equ "-a" (
		set "read_as_alg=1"
		if !curr_arg_index! equ 1 (
			shift
		)
    	) else (
		if !read_as_alg! equ 1 (
			set "alg_flag=-Algorithm %%A"
			set "read_as_alg=0"
			if !curr_arg_index! equ 1 (
				shift
			)
		) else (
			set "curr_arg_index=!curr_arg_index!+1"
		)
	)
)
powershell "Get-FileHash '%1' !alg_flag! | Format-List"