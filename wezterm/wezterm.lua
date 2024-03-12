local wezterm = require "wezterm"

local config = {}

-- local flex_scheme_colors, flex_metadata = wezterm.color.load_scheme("flexoki_dark.toml")
if wezterm.config_builder() then
    config = wezterm.config_builder()
end
local hostname = wezterm.hostname()
if hostname == "tower" then
    config.default_cwd = "D:\\"
end
config.default_prog = {"cmd.exe", "/K", "C:\\Users\\emanuel\\apps\\bats\\doskeys.bat"}
config.font = wezterm.font "BerkeleyMono Nerd Font"
config.font_size = 14.5
config.window_decorations = 'INTEGRATED_BUTTONS|RESIZE'
config.default_cursor_style = "SteadyBlock"
config.color_scheme = "flexoki-dark"
config.colors = {background = '#100F0F'} --- fix the wrong bg colors used in the built in theme
config.initial_rows = 24 * 2
config.initial_cols = 80 * 2
config.window_padding = {left = 1, right = 0, top = 0, bottom = 0}
config.use_fancy_tab_bar = false
config.wsl_domains = {
  {
    name = 'WSL:Ubuntu-20.04',
    distribution = 'Ubuntu',
    default_cwd = "/mnt/c/Users/emanuel"

    -- The default command to run, if the SpawnCommand doesn't otherwise
    -- override it.  Note that you may prefer to use `chsh` to set the
    -- default shell for your user inside WSL to avoid needing to
    -- specify it here

    -- default_prog = {"fish"}
  },
}
config.keys = {

    -- This binds Ctrl-Shift-R to reload the configuration
    {
      key = "R",
      mods = "CTRL|SHIFT",
      action = "ReloadConfiguration",
    },
  }
return config
