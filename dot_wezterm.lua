-- Pull in the wezterm API
local wezterm = require("wezterm")

--only required to maximize
local mux = wezterm.mux

-- This will hold the configuration.
local config = wezterm.config_builder()

-- Maximize window
wezterm.on("gui-startup", function(cmd)
	local tab, pane, window = mux.spawn_window(cmd or {})
	window:gui_window():maximize()
end)

-- remove tabbar and padding
config.hide_tab_bar_if_only_one_tab = true
config.window_padding = {
	left = 0,
	right = 0,
	top = 0,
	bottom = 0,
}

-- RESIZE instead of NONE
config.color_scheme = "dracula_at_night"
config.font = wezterm.font("FiraCode Nerd Font")
config.window_decorations = "RESIZE"

-- and finally, return the configuration to wezterm
return config
