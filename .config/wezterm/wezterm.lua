local wezterm = require("wezterm")

local function font_with_fallback(name, params)
	local names = { name, "Apple Color Emoji", "azuki_font" }
	return wezterm.font_with_fallback(names, params)
end

local fonts = {
	pragmata = "PragmataPro for Powerline",
	iosevka = "Iosevka Nerd Font Mono",
	fantasque = "Fantasque Sans Mono",
	aesthetic = "AestheticIosevka Nerd Font Mono",
	geist = "Geist Mono",
	berkeley = 'Berkeley Mono',
}

local font_name = fonts.berkeley

local themes = {
	rose_pine_dark = 'rose-pine',
	rose_pine_light = 'rose-pine-dawn',
	atelier_cave_light = 'Atelier Cave Light (base16)',
	night_owlish_light = 'Night Owlish Light',
	catppuccin_mocha = 'Catppuccin Mocha',
	nebula_16 = 'Nebula (base16)',
	rouge = 'Rouge 2',
	palenight = 'Palenight (Gogh)',
	catppuccin_macchiato = 'Catppuccin Macchiato',
}

return {
	
	color_scheme = themes.rose_pine_dark,
	
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
	font_size = 12.5,
	line_height = 1.4,

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
		},
		{
			key = "M",
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

	colors = {
		foreground = "#EFECF4",
		background = "#1A2026",
		cursor_bg = "#EFECF4",
		cursor_fg = "#EFECF4",
		cursor_border = "#EFECF4",
		selection_fg = "#EFECF4",
		selection_bg = "#56687E",
		scrollbar_thumb = "#edeff0",
		split = "#EFECF4",
		ansi = { "#242D35", "#F48FB1", "#A1EFD3", "#F1FA8C", "#92B6F4", "#BD99FF", "#87DFEB", "#FFFFFF" },
		brights = { "#56687E", "#EE4F84", "#53E2AE", "#F1FF52", "#6498EF", "#985EFF", "#24D1E7", "#F4F5F2" },
		indexed = { [136] = "#edeff0" },
		tab_bar = {
			active_tab = {
				bg_color = "#1A2026", 
				fg_color = "#F692B2",
				italic = false,
			},
			background = "#1A2026",
			inactive_tab = { bg_color = "#1A2026", fg_color = "#EFECF4" },
			inactive_tab_hover = { bg_color = "#1A2026", fg_color = "#EFECF4" },
			new_tab = { bg_color = "#1A2026", fg_color = "#EFECF4" },
			-- new_tab_hover = { bg_color = "#A1D391", fg_color = "#090909" },
		},
	},

	-- Padding
	window_padding = {
		left = 20,
		right = 20,
		top = 20,
		bottom = 20,
	},

	-- Tab Bar
	enable_tab_bar = true,
	hide_tab_bar_if_only_one_tab = true,
	show_tab_index_in_tab_bar = true,
	tab_bar_at_bottom = true,
	use_fancy_tab_bar = false,
	

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
