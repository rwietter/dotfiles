local wezterm = require("wezterm")

local function font_with_fallback(name, params)
	local names = { name, "Apple Color Emoji", "azuki_font" }
	return wezterm.font_with_fallback(names, params)
end

local fonts = {
	pragmata = "PragmataPro for Powerline",
	iosevka = "Iosevka Nerd Font Mono",
	aesthetic = "AestheticIosevka Nerd Font Mono",
}

local font_name = fonts.aesthetic

local themes = {
	rose_pine_dark = 'rose-pine',
	rose_pine_light = 'rose-pine-dawn',
	night_owlish_light = 'Night Owlish Light',
	catppuccin_mocha = 'Catppuccin Mocha',
	rouge = 'Rouge 2',
}

return {
	-- OpenGL for GPU acceleration, Software for CPU
	front_end = "OpenGL",

	-- Font config
	font = font_with_fallback(font_name),
	font_rules = {
		{
			italic = true,
			font = font_with_fallback(font_name, { italic = true }),
		},
		{
			italic = true,
			intensity = "Bold",
			font = font_with_fallback(font_name, { italic = true, bold = true }),
		},
		{
			intensity = "Bold",
			font = font_with_fallback(font_name, { bold = true }),
		},
	},
	warn_about_missing_glyphs = true,
	font_size = 12,
	line_height = 1.3,

	-- Cursor style
	default_cursor_style = "BlinkingUnderline",

	-- X11
	enable_wayland = true,

	-- Keybinds
	disable_default_key_bindings = true,
	keys = {
		{
			key = [[\]],
			mods = "CTRL|ALT",
			action = wezterm.action({
				SplitHorizontal = { domain = "CurrentPaneDomain" },
			}),
		},
		{
			key = [[\]],
			mods = "CTRL",
			action = wezterm.action({
				SplitVertical = { domain = "CurrentPaneDomain" },
			}),
		},
		{
			key = "q",
			mods = "CTRL",
			action = wezterm.action({ CloseCurrentPane = { confirm = false } }),
		},
		{
			key = "h",
			mods = "CTRL|SHIFT",
			action = wezterm.action({ ActivatePaneDirection = "Left" }),
		},
		{
			key = "l",
			mods = "CTRL|SHIFT",
			action = wezterm.action({ ActivatePaneDirection = "Right" }),
		},
		{
			key = "k",
			mods = "CTRL|SHIFT",
			action = wezterm.action({ ActivatePaneDirection = "Up" }),
		},
		{
			key = "j",
			mods = "CTRL|SHIFT",
			action = wezterm.action({ ActivatePaneDirection = "Down" }),
		},
		{
			key = "h",
			mods = "CTRL|SHIFT|ALT",
			action = wezterm.action({ AdjustPaneSize = { "Left", 1 } }),
		},
		{
			key = "l",
			mods = "CTRL|SHIFT|ALT",
			action = wezterm.action({ AdjustPaneSize = { "Right", 1 } }),
		},
		{
			key = "k",
			mods = "CTRL|SHIFT|ALT",
			action = wezterm.action({ AdjustPaneSize = { "Up", 1 } }),
		},
		{
			key = "j",
			mods = "CTRL|SHIFT|ALT",
			action = wezterm.action({ AdjustPaneSize = { "Down", 1 } }),
		},
		{
			-- browser-like bindings for tabbing
			key = "t",
			mods = "CTRL",
			action = wezterm.action({ SpawnTab = "CurrentPaneDomain" }),
		},
		{
			key = "w",
			mods = "CTRL",
			action = wezterm.action({ CloseCurrentTab = { confirm = false } }),
		},
		{
			key = "Tab",
			mods = "CTRL",
			action = wezterm.action({ ActivateTabRelative = 1 }),
		},
		{
			key = "Tab",
			mods = "CTRL|SHIFT",
			action = wezterm.action({ ActivateTabRelative = -1 }),
		}, -- standard copy/paste bindings
		{
			key = "x",
			mods = "CTRL",
			action = "ActivateCopyMode",
		},
		{
			key = "v",
			mods = "CTRL|SHIFT",
			action = wezterm.action({ PasteFrom = "Clipboard" }),
		},
		{
			key = "c",
			mods = "CTRL|SHIFT",
			action = wezterm.action({ CopyTo = "ClipboardAndPrimarySelection" }),
		},
	},

	bold_brightens_ansi_colors = true,

	color_scheme = themes.rose_pine_dark,

	use_fancy_tab_bar = false,

	colors = {
		-- foreground = "#edeff0",
		background = "#11111B",
		-- cursor_bg = "#edeff0",
		-- cursor_fg = "#edeff0",
		-- cursor_border = "#232526",
		selection_fg = "#ffffff",
		selection_bg = "#F4F5F2",
		-- scrollbar_thumb = "#edeff0",
		-- split = "#090909",
		-- ansi = { "#22273B", "#777ABC", "#6562A8", "#4F9062", "#4D6BB6", "#716CAE", "#7FE4D2", "#A4A6A9" },
		-- brights = { "#526170", "#F92D72", "#6CCB6E", "#F26190", "#4CB9D6", "#C269BC", "#58D6BF", "#F4F5F2" },
		-- indexed = { [136] = "#edeff0" },
		tab_bar = {
			active_tab = {
				bg_color = "#22273B",
				fg_color = "#ffffff",
				italic = false,
			},
			background = "#22273B",
			inactive_tab = { bg_color = "#ffffff", fg_color = "#000000" },
			inactive_tab_hover = { bg_color = "#22273B", fg_color = "#ffffff" },
			new_tab = { bg_color = "#22273B", fg_color = "#fff" },
			new_tab_hover = { bg_color = "#6791c9", fg_color = "#090909" },
		},
	},

	-- Padding
	window_padding = {
		left = 25,
		right = 25,
		top = 30,
		bottom = 30,
	},

	-- Tab Bar
	enable_tab_bar = true,
	hide_tab_bar_if_only_one_tab = true,
	show_tab_index_in_tab_bar = true,
	tab_bar_at_bottom = true,
	

	-- General
	automatically_reload_config = true,
	inactive_pane_hsb = {
		saturation = 0,
		brightness = 0
	},
	window_background_opacity = 1,
	window_close_confirmation = "NeverPrompt",
	window_frame = {
		active_titlebar_bg = "#090909",
		font = font_with_fallback(font_name, { bold = true })
	},
}
