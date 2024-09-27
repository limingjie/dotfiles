-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- Font
-- Wezterm embeds the Nerd Font symbols by default.
config.font = wezterm.font {
    family = 'Iosevka Curly',
    weight = 'Light',
    harfbuzz_features = {'kern', 'liga', 'clig', -- default values
    'onum', -- enable old-style number
    'frac', -- enable fractions
    'cv01=3', 'cv03=1', 'cv04=9', 'cv07=7', 'cv10=16', 'cv20=11', 'cv23=11', 'cv35=14', 'cv56=7', 'cv60=14'}
}

config.font_size = 16

-- Window
config.window_decorations = "RESIZE"
config.window_background_opacity = 0.8

-- Tab
config.hide_tab_bar_if_only_one_tab = true

-- Theme
config.color_scheme = 'Tomorrow Night Bright'

-- and finally, return the configuration to wezterm
return config
