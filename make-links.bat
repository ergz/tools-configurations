:: vs code
mklink "%APPDATA%\Code\User\settings.json" "vscode-configs\settings.json"

:: clink
mklink "%LOCALAPPDATA%\clink\.inputrc" "%cd%\clink-configs\.inputrc"
mklink "%LOCALAPPDATA%\clink\clink_settings" "%cd%\clink-configs\clink_settings"
mklink "%LOCALAPPDATA%\clink\flexprompt_config.lua" "%cd%\clink-configs\flexprompt_config.lua"
:: oh my posh with clink
mklink "%LOCALAPPDATA%\clink\oh-my-posh.lua" "%cd%\clink-configs\oh-my-posh.lua"
:: oh my posh themes


:: sublime text
mklink "%APPDATA%\Sublime Text\Packages\User\Preferences.sublime-settings" "%cd%\sublime-configs\Preferences.sublime-settings"

:: alacrity 
mklink "C:\Users\%USERNAME%\scoop\persist\alacritty\alacritty.toml" "%cd%\alacritty\alacritty.toml"

:: wezterm
mklink "C:\Users\%USERNAME%\.config\wezterm\wezterm.lua" "%cd%\wezterm\wezterm.lua"

:: windows terminal
mklink "C:\Users\%USERNAME%\AppData\Local\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json" "%cd%\windows-terminal\settings.json"
