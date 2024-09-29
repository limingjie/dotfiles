-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- Font
-- Wezterm embeds the Nerd Font symbols by default.
config.font_size = 16
config.font = wezterm.font {
    family = 'Iosevka Curly',
    weight = 'Light',
    harfbuzz_features = {
        'kern', 'liga', 'clig', -- default values
        'onum',                 -- enable old-style number
        'frac',                 -- enable fractions
        'cv01=3', 'cv03=1', 'cv04=9', 'cv07=7', 'cv10=16', 'cv20=11', 'cv23=11', 'cv35=14', 'cv56=7', 'cv60=14'
    }
}

-- Window
config.window_decorations = 'RESIZE'

-- Background
config.background = {
    {
        source = {
            File = wezterm.config_dir .. '/wallpapers/5cm_launch.jpg'
        },
        horizontal_align = "Center",
        vertical_align = "Middle",
        opacity = 0.9,
        hsb = {
            brightness = 0.1,
            hue = 1.0,
            saturation = 1.0
        }
    }
}

-- Tab
config.hide_tab_bar_if_only_one_tab = true

-- Theme
config.color_scheme = 'Tomorrow Night Bright'

-- and finally, return the configuration to wezterm
return config
