@echo off

    echo Checking if you have Administrator permissions...

    net session >nul 2>&1
    if %errorLevel% == 0 (
        echo You have Administrator permissions, starting installer...
pushd "%~dp0"
PowerShell.exe -Command "& {Start-Process PowerShell.exe -ArgumentList '-NonInteractive -NoProfile -ExecutionPolicy Bypass -File Files\InstallMinecraft.ps1' -Verb RunAs}"
echo Installation Complete
exit
    ) else (
        echo Failure: Administrator permission is required to install. Please right click InstallMinecraftEducationEdition.bat and Select Run as Administrator... 
    )

    pause >nul