local wezterm = require("wezterm")
local act = wezterm.action
local config = wezterm.config_builder()

config.window_decorations = "RESIZE"
config.window_background_opacity = 0.9
config.macos_window_background_blur = 10

config.keys = {
    {
        key = 'H',
        mods = 'CTRL|SHIFT',
        action = act.ActivatePaneDirection 'Left',
    },
    {
        key = 'L',
        mods = 'CTRL|SHIFT',
        action = act.ActivatePaneDirection 'Right',
    },
    {
        key = 'K',
        mods = 'CTRL|SHIFT',
        action = act.ActivatePaneDirection 'Up',
    },
    {
        key = 'J',
        mods = 'CTRL|SHIFT',
        action = act.ActivatePaneDirection 'Down',
    },
}

return config


