-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- Color scheme and background color
config.color_scheme = "Catppuccin Mocha (Gogh)"

config.background = {
	{
		source = {
			File = "/Users/tulashiprasad/.config/wezterm/background/bg.jpg",
		},
		hsb = {
			hue = 1.0,
			saturation = 1.05,
			brightness = 0.1,
		},
		-- attachment = { Parallax = 0.3 },
		-- width = "100%",
		-- height = "100%",
	},
	{
		source = {
			Color = "#282c35",
		},
		width = "100%",
		height = "100%",
		opacity = 0.0,
	},
}
config.colors = {
	background = "#161a21", -- This will serve as the fallback background color
}

-- Font settings
config.font = wezterm.font("MesloLGS Nerd Font Mono")
config.font_size = 15

-- Window settings
config.enable_tab_bar = false
config.window_decorations = "RESIZE"
config.window_background_opacity = 0.99
config.macos_window_background_blur = 10

config.window_frame = {
	border_left_width = "0.25cell", -- Small border width
	border_right_width = "0.25cell",
	border_bottom_height = "0.125cell",
	border_top_height = "0.15cell",
	border_left_color = "green", -- Match border color to the background
	border_right_color = "green",
	border_bottom_color = "green",
	border_top_color = "green",
}
-- Keybindings
config.keys = {
	{
		key = "l",
		mods = "CTRL|SHIFT",
		action = wezterm.action.SplitPane({
			direction = "Left",
			size = { Percent = 50 },
		}),
	},
	{
		key = "j",
		mods = "CTRL|SHIFT",
		action = wezterm.action.SplitPane({
			direction = "Down",
			size = { Percent = 50 },
		}),
	},
	{ key = "Tab", mods = "CTRL", action = wezterm.action({ ActivateTabRelative = 1 }) },
	{ key = "Tab", mods = "CTRL|SHIFT", action = wezterm.action({ ActivateTabRelative = -1 }) },
	{
		key = "LeftArrow",
		mods = "CMD",
		action = wezterm.action({ SendString = "\x1bOH" }),
	},
	{
		key = "RightArrow",
		mods = "CMD",
		action = wezterm.action({ SendString = "\x1bOF" }),
	},
}

return config
