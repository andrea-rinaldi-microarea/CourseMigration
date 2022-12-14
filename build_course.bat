@echo off
Setlocal EnableDelayedExpansion

IF NOT DEFINED SOURCE set SOURCE=C:\Users\rinaldi\Documents\working\University
IF NOT DEFINED OUTPUT set OUTPUT=C:\Users\rinaldi\Documents\working\output
REM IF NOT DEFINED SOURCE set SOURCE=C:\temp\University
REM IF NOT DEFINED OUTPUT set OUTPUT=C:\temp\output

Call strLen.cmd %SOURCE% _len
@REM suppress "University_"
set /a _len+=12

set folder=%~dp1
set folder=\!folder:~%_len%!
echo Building !folder! ...
@del /S /Q /F %OUTPUT%!folder! >nul 2>&1
supersam.exe -cli %1 %OUTPUT%!folder! -log=%OUTPUT%!folder!%~n1.log --l4j-no-splash 

if "%2" NEQ "/B" (
    if exist %OUTPUT%!folder!\%~n1.log (
        @echo:
        echo Please check for these problems in %~dp1:
        @echo:
        type %OUTPUT%!folder!\%~n1.log
        @echo:
        @echo:
    )
)
