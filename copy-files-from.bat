@echo off

set "sublime_destination_folder=D:\tools-configurations\sublime-configs"
set "clink_destination_folder=D:\tools-configurations\clink-configs"

echo Copying Sublime Text user files to %destination_folder%...
xcopy "C:\Users\%USERNAME%\AppData\Roaming\Sublime Text\Packages\User\*" "%sublime_destination_folder%" /E /I /Y


echo Done.

echo Copying Clink configuration files to %destination_folder%...

xcopy "C:\Users\%USERNAME%\AppData\Local\clink\flexprompt_config.lua" "%clink_destination_folder%" /I /Y
xcopy "C:\Users\%USERNAME%\AppData\Local\clink\clink_settings" "%clink_destination_folder%" /I /Y

echo Done.
