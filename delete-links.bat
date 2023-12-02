@echo off

:: Delete existing '.old' files and current files for VS Code and Clink configurations
echo Deleting old configuration files...

:: VS Code
if exist "%APPDATA%\Code\User\settings.json.old" (
    echo Deleting "%APPDATA%\Code\User\settings.json.old"
    del "%APPDATA%\Code\User\settings.json.old"
)
if exist "%APPDATA%\Code\User\settings.json" (
    echo Deleting "%APPDATA%\Code\User\settings.json"
    del "%APPDATA%\Code\User\settings.json"
)

:: Clink
set clinkpath=%LOCALAPPDATA%\clink

:: Delete .inputrc and its .old version
if exist "%clinkpath%\.inputrc.old" (
    echo Deleting "%clinkpath%\.inputrc.old"
    del "%clinkpath%\.inputrc.old"
)
if exist "%clinkpath%\.inputrc" (
    echo Deleting "%clinkpath%\.inputrc"
    del "%clinkpath%\.inputrc"
)

:: Delete clink_settings and its .old version
if exist "%clinkpath%\clink_settings.old" (
    echo Deleting "%clinkpath%\clink_settings.old"
    del "%clinkpath%\clink_settings.old"
)
if exist "%clinkpath%\clink_settings" (
    echo Deleting "%clinkpath%\clink_settings"
    del "%clinkpath%\clink_settings"
)

:: Delete flexprompt_config.lua and its .old version
if exist "%clinkpath%\flexprompt_config.lua.old" (
    echo Deleting "%clinkpath%\flexprompt_config.lua.old"
    del "%clinkpath%\flexprompt_config.lua.old"
)
if exist "%clinkpath%\flexprompt_config.lua" (
    echo Deleting "%clinkpath%\flexprompt_config.lua"
    del "%clinkpath%\flexprompt_config.lua"
)

:: Delete oh-my-posh.lua and its .old version
if exist "%clinkpath%\oh-my-posh.lua.old" (
    echo Deleting "%clinkpath%\oh-my-posh.lua.old"
    del "%clinkpath%\oh-my-posh.lua.old"
)
if exist "%clinkpath%\oh-my-posh.lua" (
    echo Deleting "%clinkpath%\oh-my-posh.lua"
    del "%clinkpath%\oh-my-posh.lua"
)

echo Deletion complete.
pause
