@echo off

set "sublime_destination_folder=D:\tools-configurations\sublime-configs"
set "clink_destination_folder=D:\tools-configurations\clink-configs"
set "vscode_destination_folder=D:\tools-configurations\vscode-configs"
set "ahk_destination_folder=D:\tools-configurations\AHK"
set "doskey_destination_folder=D:\tools-configurations\doskeys"
set "posh_destination_folder=D:\tools-configurations\posh"
set "alacritty_destnation_folder=D:\tools-configurations\alacritty"

echo Copying Sublime Text user files to %sublime_destination_folder%...
xcopy "C:\Users\%USERNAME%\AppData\Roaming\Sublime Text\Packages\User\*" "%sublime_destination_folder%" /E /I /Y


echo Done.

echo Copying Clink configuration files to %clink_destination_folder%...

xcopy "C:\Users\%USERNAME%\AppData\Local\clink\flexprompt_config.lua" "%clink_destination_folder%" /I /Y
xcopy "C:\Users\%USERNAME%\AppData\Local\clink\clink_settings" "%clink_destination_folder%" /I /Y

echo Done.

echo Copying vs code user files to %vscode_destination_folder%...
xcopy "C:\Users\emanuel\AppData\Roaming\Code\User\settings.json" "%vscode_destination_folder%" /I /Y

echo Done.

echo Copying ahk folder 
xcopy "C:\Users\emanuel\Documents\AutoHotkey\*" "%ahk_destination_folder%" /E /I /Y 

echo Copying ahk folder 
xcopy "C:\Users\emanuel\apps\bats\*" "%doskey_destination_folder%" /E /I /Y 

echo Copying posh stuff
xcopy "C:\Users\emanuel\AppData\Local\Programs\oh-my-posh\themes\zash.omp.json" "%posh_destination_folder%" /I /Y
