@echo off

set "sublime_source_folder=D:\tools-configurations\sublime-configs"
set "clink_source_folder=D:\tools-configurations\clink-configs"

echo Copying Sublime Text user files to %USERNAME%...
xcopy "%sublime_source_folder%\*" "C:\Users\%USERNAME%\AppData\Roaming\Sublime Text\Packages\User" /E /I /Y

echo Done.

echo Copying Clink configuration files to %USERNAME%...

xcopy "%clink_source_folder%\*" "C:\Users\%USERNAME%\AppData\Local\clink" /E /I /Y

echo Done.
