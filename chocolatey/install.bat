This script does the trick! Just paste it into the top of your bat file. If you want to review the output of your script, add a "pause" command at the bottom of your batch file.

UPDATE: This script is now slightly edited to support command line arguments and a 64 bit OS.

Thank you Eneerge @ https://sites.google.com/site/eneerge/scripts/batchgotadmin

@echo off

:: BatchGotAdmin
:-------------------------------------
REM  --> Check for permissions
    IF "%PROCESSOR_ARCHITECTURE%" EQU "amd64" (
>nul 2>&1 "%SYSTEMROOT%\SysWOW64\cacls.exe" "%SYSTEMROOT%\SysWOW64\config\system"
) ELSE (
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
)

REM --> If error flag set, we do not have admin.
if '%errorlevel%' NEQ '0' (
    echo Requesting administrative privileges...
    goto UACPrompt
) else ( goto gotAdmin )

:UACPrompt
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    set params= %*
    echo UAC.ShellExecute "cmd.exe", "/c ""%~s0"" %params:"=""%", "", "runas", 1 >> "%temp%\getadmin.vbs"

    "%temp%\getadmin.vbs"
    del "%temp%\getadmin.vbs"
    exit /B

:gotAdmin
    pushd "%CD%"
    CD /D "%~dp0"
:--------------------------------------  
choco install -y cmder
choco install -y 1password
choco install -y brave
choco install -y vscodium --params "/AssociateWithFiles"
choco install -y git.install --params "/GitAndUnixToolsOnPath /NoGitLfs"
choco install -y adoptopenjdk12
choco install -y intellijidea-ultimate
choco install -y git-fork
choco install -y toggl
choco install -y 7zip
choco install -y procexp
choco install -y itunes
choco install -y pia
choco install -y jdownloader
choco install -y cyberduck
choco install -y vlc
choco install -y greenshot
choco install -y arduino
choco install -y autodesk-fusion360
