@echo off

@REM copy only useful files from the original folder
@echo Converting %1 ...
@del /S /Q %DESTINATION%\%2 >nul 2>&1
@xcopy "%ORIGIN%\%~1" %DESTINATION%\%2 /S /I /Y /Q /EXCLUDE:nomove.txt > nul

@REM adjust encoding on .sam files
for %%T in (%DESTINATION%\%2\*.sam) do (
    @powershell -command "gc '%%T' | sc -encoding utf8 '%%T.utf8'"
    @del "%%T" 
    @ren "%%T.utf8" "%%~nxT"
)

@REM converting .txt in .sam, adjusting encoding if needed. If both .txt and .sam exist, log it
for %%T in (%DESTINATION%\%2\*.txt) do (
    if not exist "%%~dpnT.sam" (
        @powershell -command "gc '%%T' | sc -encoding utf8 '%%~dpnT.sam'" 
        @del "%%T"
    ) else (
        echo multiple text files in %DESTINATION%\%2 >> log.txt
    )
)

@REM rename the main .sam file with the same name of the folder. If multiple .sam files exist, log it and skip renaming
set count=0
for %%T in (%DESTINATION%\%2\*.sam) do (
    set /a count+=1
)
IF %count% GTR 1 (
    echo multiple text files in %DESTINATION%\%2 >> log.txt
) else (
    for %%T in (%DESTINATION%\%2\*.sam) do (
        if not exist "%%~dpT%~n2.sam" (
            @ren "%%T" %~n2.sam
        )
    )    
)

Setlocal EnableDelayedExpansion
Set "_migrate="
@REM migrate old SAM format. To detect it, look into index.html for a "supersam" string: if not found, it is in the old format
:: If no index.html is present (and no /M option used), the output was not yet generated, assume is in the new format
IF exist "%ORIGIN%\%~1\index.html" (
    @FIND "Supersam" "%ORIGIN%\%~1\index.html" >nul
    IF !ERRORLEVEL! NEQ 0 (
        call Set "_migrate=1"
    )
) ELSE (
    IF "%3" NEQ "/M" (
        echo index.html not found in %ORIGIN%\%~1, assuming new SAM format >> log.txt
    )
)

@REM some courses however are in the old format even if the :supersam" string is present: migration can be forced
If "%3" EQU "/M" Set "_migrate=1"
IF "%_migrate%" EQU "1"  (
    for %%T in (%DESTINATION%\%2\*.sam) do (
        type "%%T" | node migrate_format.js %DESTINATION%\%2 > "%TEMP%\%%~nxT"
        @del "%%T"
        @move "%TEMP%\%%~nxT" %DESTINATION%\%2 >nul
    )    
)

@REM copy custom Mago styles
@xcopy mago-styles %DESTINATION%\%2\mago-styles /Y /I /Q >nul

@REM insert mago styles into the course
for %%T in (%DESTINATION%\%2\*.sam) do (
    type "%%T" | node insert_styles.js _styles.sam > "%TEMP%\%%~nxT"
    @del "%%T"
    @move "%TEMP%\%%~nxT" %DESTINATION%\%2 >nul
)    

@REM create the project file from a template
@copy _template.prjsam %DESTINATION%\%2\%~n2.prjsam >nul
@echo project=%~n2.sam >> %DESTINATION%\%2\%~n2.prjsam
