local wezterm = require 'wezterm'

local config = {}

if wezterm.config_builder then
  config = wezterm.config_builder()
end

config.enable_wayland = false
config.color_scheme = 'Atelierdune (light) (terminal.sexy)'
config.font = wezterm.font('JetBrains Mono', { weight = 'Medium' })
config.font_size = 16
config.hide_tab_bar_if_only_one_tab = true
config.window_background_opacity = 0.95

return config
