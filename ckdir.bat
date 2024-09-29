@echo off
if "%1" equ "--help" (
echo Makes a directory and immediately navigates into it.
echo Usage: ckdir ^<name_of_dir^>
exit /b
)

mkdir %1 && cd %1
