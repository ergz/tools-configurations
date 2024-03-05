local wezterm = require "wezterm"

local config = {}

if wezterm.config_builder() then
    config = wezterm.config_builder()
end
config.font = wezterm.font "BerkeleyMono Nerd Font"
config.font_size = 14
config.window_decorations = 'INTEGRATED_BUTTONS|RESIZE'
config.default_cursor_style = "SteadyBlock"
config.keys = {

    -- This binds Ctrl-Shift-R to reload the configuration
    {
      key = "R",
      mods = "CTRL|SHIFT",
      action = "ReloadConfiguration",
    },
  }

return config
