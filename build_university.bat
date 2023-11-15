@echo off
Setlocal EnableDelayedExpansion

set SOURCE=C:\Working\courses\University
set OUTPUT=C:\Working\courses\output

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
