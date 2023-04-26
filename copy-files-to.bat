@echo off

set "source_folder=D:\tools-configurations"

echo Copying Sublime Text configuration files to their appropriate location...

xcopy "%source_folder%\Preferences.sublime-settings" "C:\Users\%USERNAME%\AppData\Roaming\Sublime Text\Packages\User" /I /Y
xcopy "%source_folder%\Default (Windows).sublime-keymap" "C:\Users\%USERNAME%\AppData\Roaming\Sublime Text\Packages\User" /I /Y
xcopy "%source_folder%\Default.sublime-mousemap" "C:\Users\%USERNAME%\AppData\Roaming\Sublime Text\Packages\User" /I /Y
xcopy "%source_folder%\atelier-themes\base16-atelierestuary.dark.tmTheme" "C:\Users\%USERNAME%\AppData\Roaming\Sublime Text\Packages\User\atelier-themes" /I /Y

echo Copying Clink configuration files to their appropriate location...

xcopy "%source_folder%\flexprompt_config.lua" "C:\Users\%USERNAME%\AppData\Local\clink" /I /Y
xcopy "%source_folder%\clink_settings" "C:\Users\%USERNAME%\AppData\Local\clink" /I /Y

echo Done.
