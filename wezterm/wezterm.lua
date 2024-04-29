local wezterm = require "wezterm"
local act = wezterm.action

local config = {}

-- local flex_scheme_colors, flex_metadata = wezterm.color.load_scheme("flexoki_dark.toml")
if wezterm.config_builder() then
    config = wezterm.config_builder()
end
local hostname = wezterm.hostname()

local wsl_domains = {
    tower = {
        {
            name = 'WSL:Ubuntu-20.04',
            distribution = 'Ubuntu',
            default_cwd = "/mnt/c/Users/emanuel"
        },
        {
            name = "WSL:Ubuntu-22.04", 
            distribution = "Ubuntu-22.04", 
            default_cwd = "~"
        }
        -- Add more WSL domains for "tower" if needed
    },
    eman17 = {
        {
            name = 'WSL:Ubuntu-22.04',
            distribution = 'Ubuntu',
            default_cwd = "~"
        },
        -- Add more WSL domains for "eman17" if needed
    },
}

-- Set the WSL domains based on the hostname
if wsl_domains[hostname] then
    config.wsl_domains = wsl_domains[hostname]
else
    -- Default WSL domains if the hostname doesn't match any specific configuration
    config.wsl_domains = {
        {
            name = 'WSL:Ubuntu-20.04',
            distribution = 'Ubuntu',
            default_cwd = "/mnt/c/Users/default"
        },
    }
end

if hostname == "tower" then
    config.default_cwd = "D:\\"
    config.initial_rows = 24 * 1
    config.initial_cols = 80 * 1
elseif hostname == "eman17" then
    config.default_cwd = "D:\\"
    config.initial_rows = 24
    config.initial_cols = 80
end
config.default_prog = {"cmd.exe", "/K", "C:\\Users\\emanuel\\apps\\bats\\doskeys.bat"}
config.font = wezterm.font "CaskaydiaMono Nerd Font"
config.font_size = 15
config.window_decorations = 'INTEGRATED_BUTTONS|RESIZE'
config.default_cursor_style = "SteadyBlock"
config.color_scheme = "Catppuccin Mocha"
-- config.colors = {
--     background = '#100F0F',
--     tab_bar = {
--     background = '#2a1745',
--     new_tab = {
--         bg_color = '#3d2363',
--         fg_color = "#808080",
--     }
--     },
-- }

config.window_padding = {left = 1, right = 0, top = 0, bottom = 0}
config.use_fancy_tab_bar = false

config.keys = {

    -- This binds Ctrl-Shift-R to reload the configuration
    {
      key = "R",
      mods = "CTRL|SHIFT",
      action = "ReloadConfiguration",
    },
  }

return config


