@echo off
Setlocal EnableDelayedExpansion

@REM set SOURCE=C:\Users\rinaldi\Documents\working\University
@REM set OUTPUT=C:\Users\rinaldi\Documents\working\output
set SOURCE=C:\temp\University
set OUTPUT=C:\temp\output

@REM Call strLen.cmd %SOURCE% _len

for /R %SOURCE% %%G in (*.prjsam) do (
    call build_course %%G /B
)

for /R %OUTPUT% %%G in (*.log) do (
    @echo:
    echo Please check for these problems in %%~dpG:
    @echo:
    type %%G
    @echo:
    @echo:
)
