@echo off

IF NOT DEFINED ORIGIN set ORIGIN=C:\eLearning4\eLearning4\courses
IF NOT DEFINED DESTINATION set DESTINATION=C:\Working\courses\University

@REM set the code for italian special characters
chcp 65001 > nul

@REM copy only useful files from the original folder
@echo Converting %1 ...
@del /S /Q %DESTINATION%\%2 >nul 2>&1
@xcopy "%ORIGIN%\%~1" %DESTINATION%\%2 /S /I /Y /Q /EXCLUDE:nomove.txt > nul

SetLocal EnableDelayedExpansion

@REM adjust all name files to remove apostrophe that gives error during supersam building
set special_characters='

for %%F in (%DESTINATION%\%2\*.*) do (
    set "filename=%%~nF"
    for %%C in (%special_characters%) do (
        set "filename=!filename:%%C=_!"
    )
    @ren "%%F" "!filename!%%~xF"
)

EndLocal

@REM copy all images from the image folder at any level
SetLocal EnableDelayedExpansion

if "%3" EQU "/F" (
    for /r "%ORIGIN%\%~1" /d %%D in (*images*) do (
        if "%%~nxD"=="images" (
            set sourceFolder=%%D
            goto :CopyFiles
        )
    )
)

if "%3" EQU "/F" (
    for /r "%ORIGIN%\%~1" /d %%D in (*Images*) do (
        if /i "%%~nxD"=="Images" (
            set sourceFolder=%%D
            goto :CopyFiles
        )
    )
)

:CopyFiles
if defined sourceFolder ( 
        set special_characters='
        for %%F in (%sourceFolder%\*.*) do (
            set "filename=%%~nF"
            for %%C in (%special_characters%) do (
                set "filename=!filename:%%C=_!"
            )
            @ren "%%F" "!filename!%%~xF" 2>nul
        )

        xcopy "%sourceFolder%\*" %DESTINATION%\%2 /S /I /Y /Q > nul
)

EndLocal

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
        if "%4" NEQ "/S" (
           echo multiple text files in %DESTINATION%\%2 >> errors.log
        )
    )
)

@REM rename the main .sam file with the same name of the folder. If multiple .sam files exist, log it and skip renaming
set count=0
for %%T in (%DESTINATION%\%2\*.sam) do (
    set /a count+=1
)
IF %count% GTR 1 (
    if "%4" NEQ "/S" (
       echo multiple text files in %DESTINATION%\%2 >> errors.log
    )
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
        @REM recently generated courses has already a subfolder, named as the folder itself, containing the output: index.html is there
        IF exist "%ORIGIN%\%~1\%~n1\index.html" (
            @FIND "Supersam" "%ORIGIN%\%~1\%~n1\index.html" >nul
            IF !ERRORLEVEL! NEQ 0 (
                call Set "_migrate=1"
            )
        ) ELSE (
            IF "%3" NEQ "/M" (
                IF "%3" NEQ "/I" (
                echo index.html not found in %ORIGIN%\%~1, assuming new SAM format >> errors.log
                )
            )
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
