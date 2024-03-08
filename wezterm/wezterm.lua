local wezterm = require "wezterm"


local config = {}

-- local flex_scheme_colors, flex_metadata = wezterm.color.load_scheme("flexoki_dark.toml")
if wezterm.config_builder() then
    config = wezterm.config_builder()
end
config.default_prog = {"cmd.exe", "/K", "C:\\Users\\emanuel\\apps\\bats\\doskeys.bat"}
config.font = wezterm.font "BerkeleyMono Nerd Font"
config.font_size = 14
config.window_decorations = 'INTEGRATED_BUTTONS|RESIZE'
config.default_cursor_style = "SteadyBlock"
config.color_scheme = "flexoki-dark"
config.window_padding = {left = 1, right = 0, top = 0, bottom = 0}
config.keys = {

    -- This binds Ctrl-Shift-R to reload the configuration
    {
      key = "R",
      mods = "CTRL|SHIFT",
      action = "ReloadConfiguration",
    },
  }

return config
