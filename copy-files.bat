@echo off

set "destination_folder=D:\tools-configurations"

echo Copying Sublime Text configuration files to %destination_folder%...

xcopy "C:\Users\%USERNAME%\AppData\Roaming\Sublime Text\Packages\User\Preferences.sublime-settings" "%destination_folder%" /I /Y
xcopy "C:\Users\%USERNAME%\AppData\Roaming\Sublime Text\Packages\User\Default (Windows).sublime-keymap" "%destination_folder%" /I /Y
xcopy "C:\Users\%USERNAME%\AppData\Roaming\Sublime Text\Packages\User\Default.sublime-mousemap" "%destination_folder%" /I /Y

echo Done.
