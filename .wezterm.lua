local wezterm = require('wezterm')

local config = wezterm.config_builder()

config = {
    color_scheme = 'Count Von Count (terminal.sexy)',
    window_decorations = 'NONE',
    --window_background_opacity = 0.85,
    enable_tab_bar = false,
    default_prog = { "/bin/bash"},
    window_padding = {
      left = 2,
      right = 1,
      top = 0,
      bottom = 0,
    },
    enable_scroll_bar = false,
    font = wezterm.font 'Mononoki Nerd Font Mono'
}
return config
