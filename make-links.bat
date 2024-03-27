:: vs code
mklink /Y "%APPDATA%\Code\User\settings.json" "vscode-configs\settings.json"

:: clink
mklink /Y "%LOCALAPPDATA%\clink\.inputrc" "%cd%\clink-configs\.inputrc"
mklink /Y "%LOCALAPPDATA%\clink\clink_settings" "%cd%\clink-configs\clink_settings"
mklink /Y "%LOCALAPPDATA%\clink\flexprompt_config.lua" "%cd%\clink-configs\flexprompt_config.lua"
:: oh my posh with clink
mklink /Y "%LOCALAPPDATA%\clink\oh-my-posh.lua" "%cd%\clink-configs\oh-my-posh.lua"
:: oh my posh themes


:: sublime text
mklink /Y "%APPDATA%\Sublime Text\Packages\User\Preferences.sublime-settings" "%cd%\sublime-configs\Preferences.sublime-settings"

:: alacrity 
mklink /Y "C:\Users\%USERNAME%\scoop\persist\alacritty\alacritty.toml" "%cd%\alacritty\alacritty.toml"

:: wezterm
mklink /Y "C:\Users\%USERNAME%\.config\wezterm\wezterm.lua" "%cd%\wezterm\wezterm.lua"

:: windows terminal
mklink /Y "C:\Users\%USERNAME%\AppData\Local\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json" "%cd%\windows-terminal\settings.json"

:: lazygit config file
mklink /Y "C:\Users\%USERNAME%\AppData\Local\lazygit\config.yml" "%cd%\lazygit\config.yml"
