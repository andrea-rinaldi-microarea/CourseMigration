@echo off
Setlocal EnableDelayedExpansion

set SOURCE=C:\Working\courses\University
set OUTPUT=C:\Working\courses\output

@REM build only completed courses, ignore draft ones and Template folder example course
for /R %SOURCE% %%G in (*.prjsam) do (
    if /I not "%%~nG" == "Draft" (
        if /I not "%%~nG" == "Template" (
            call build_course %%G /B
        )
    )
)

for /R %OUTPUT% %%G in (*.log) do (
    @echo:
    echo Please check for these problems in %%~dpG:
    @echo:
    type %%G
    @echo:
    @echo:
)

@REM remove a default string injected by the build process of supersam, that appears in the background of some pages
for /r "%OUTPUT%" %%i in (sam_it.css) do (
    if exist "%%i" (
        set "file=%%i"
        set search=".txt_empty_page::before"
        set replace=".no_class_existent"
        (
            powershell -Command "& {(Get-Content '!file!' -Raw) -replace [regex]::Escape('!search!'), '!replace!' | Set-Content '!file!'}"
        )
    )
) 

@REM remove the injected logo by the build process of supersam, that appears in the background of some pages
for /r "%OUTPUT%" %%i in (sam_help.css) do (
    if exist "%%i" (
        set "file=%%i"
        set search=".txt_empty_page"
        set replace=".no_class_existent"
        (
            powershell -Command "& {(Get-Content '!file!' -Raw) -replace [regex]::Escape('!search!'), '!replace!' | Set-Content '!file!'}"
        )
    )
) 


