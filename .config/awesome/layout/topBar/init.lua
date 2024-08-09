-- a minimal bar
-- ~~~~~~~~~~~~~
-- requirements
-- ~~~~~~~~~~~~
local awful = require("awful")
local watch = require("awful.widget.watch")
local gears = require("gears")
local wibox = require("wibox")
local beautiful = require("beautiful")
local helpers = require("helpers")
local theme = require("theme.ui_vars")
local dpi = beautiful.xresources.apply_dpi
local naughty = require('naughty')
-- misc/vars
-- ~~~~~~~~~

-- connect to screen
-- ~~~~~~~~~~~~~~~~~
awful.screen.connect_for_each_screen(function(s)
	-- screen width
	local screen_height = s.geometry.height

	-- widgets
	-- ~~~~~~~

	-- taglist
	local taglist = require("layout.topBar.taglist")(s)

	-- launcher
	-- Icons: 
	local launcher = wibox.widget({
		widget = wibox.widget.textbox,
		markup = helpers.colorize_text("󰫥", beautiful.fg_color),
		font = beautiful.icon_var .. "18",
		align = "center",
		valign = "center",
		forced_width = dpi(26),
	})

	launcher:buttons(gears.table.join({
		awful.button({}, 1, function()
			awful.spawn.with_shell(require("misc").rofiCommand, false)
		end),
	}))

	-- statistic
	-- icons:  "⌘"
	local panel_system = wibox.widget({
		widget = wibox.widget.textbox,
		markup = helpers.colorize_text("󰒙", beautiful.fg_color),
		font = beautiful.icon_var .. "15",
		align = "center",
		valign = "center",
		forced_width = dpi(22),
	})

	panel_system:buttons({
		gears.table.join(awful.button({}, 1, function()
			panel_toggle(s)
		end)),
	})

	-- system-info
	local trash = wibox.widget({
		widget = wibox.widget.textbox,
		markup = helpers.colorize_text("", beautiful.fg_color),
		font = beautiful.icon_var .. "18",
		align = "center",
		valign = "center",
	})

	trash:buttons(gears.table.join({
		awful.button({}, 1, function()
			awful.spawn("xdg-open " .. home_var .. "/.local/share/Trash/files", false)
		end),
	}))

	-- wifi
	local wifi = wibox.widget({
		markup = "",
		font = beautiful.icon_var .. "15",
		valign = "center",
		align = "center",
		widget = wibox.widget.textbox,
	})

	-- cc
	local cc_ic = wibox.widget({
		markup = "",
		font = beautiful.icon_var .. "17",
		valign = "center",
		align = "center",
		widget = wibox.widget.textbox,
	})

	cc_ic:buttons({
		gears.table.join(awful.button({}, 1, function()
			cc_toggle(s)
		end)),
	})

	--------------------
	-- battery widget
	local bat_icon = wibox.widget({
		markup = "<span foreground='" .. beautiful.black_color .. "'></span>",
		font = beautiful.icon_var .. "10",
		align = "center",
		valign = "center",
		widget = wibox.widget.textbox,
	})

	local battery_progress = wibox.widget({
		color = beautiful.green_color,
		background_color = beautiful.fg_color .. "00",
		forced_width = dpi(25),
		border_width = dpi(0.5),
		border_color = beautiful.fg_color .. "A6",
		paddings = dpi(1),
		bar_shape = helpers.rrect(dpi(1)),
		shape = helpers.rrect(dpi(4)),
		value = 70,
		max_value = 100,
		widget = wibox.widget.progressbar,
	})

	local battery_border_thing = wibox.widget({
		wibox.widget.textbox,
		widget = wibox.container.background,
		border_width = dpi(0),
		bg = beautiful.fg_color .. "A6",
		forced_width = dpi(5),
		forced_height = dpi(5),
		shape = function(cr, width, height)
			gears.shape.pie(cr, width, height, 0, math.pi)
		end,
	})

	local battery = wibox.widget({
		{
			{
				battery_border_thing,
				direction = "south",
				widget = wibox.container.rotate,
			},
			{
				battery_progress,
				direction = "east",
				widget = wibox.container.rotate(),
			},
			layout = wibox.layout.fixed.vertical,
			spacing = dpi(-8),
		},
		{
			bat_icon,
			margins = { top = dpi(3) },
			widget = wibox.container.margin,
		},
		layout = wibox.layout.stack,
		forced_width = dpi(15),
		valign = "center",
		halign = "center",
	})

	-- clock
	---------------------------
	local clock = wibox.widget({
		{
			widget = wibox.widget.textclock,
			format = "%I",
			font = beautiful.font_var .. "Bold 12",
			valign = "center",
			align = "center",
		},
		{
			widget = wibox.widget.textclock,
			format = "%M",
			font = beautiful.font_var .. "Medium 12",
			valign = "center",
			align = "center",
		},
		layout = wibox.layout.fixed.horizontal,
		spacing = dpi(3),
	})

	clock:buttons(gears.table.join({
		awful.button({}, 1, function()
			awful.spawn(home_var .. "/.config/awesome/scripts/calendar.sh", false)
		end),
	}))

	-- Eo clock
	------------------------------------------

	-- update widgets accordingly
	-- ~~~~~~~~~~~~~~~~~~~~~~~~~~
	awesome.connect_signal("signal::battery", function(value, state)
		battery_progress.value = value

		if state == 1 then
			bat_icon.visible = true
		else
			bat_icon.visible = false
		end
	end)

	awesome.connect_signal("signal::wifi", function(value)
		if value then
			wifi.markup = helpers.colorize_text("", beautiful.fg_normal .. "CC")
		else
			wifi.markup = helpers.colorize_text("", beautiful.fg_normal .. "99")
		end
	end)

	-- wibar
	s.wibar_wid = awful.wibar({
		screen = s,
		visible = true,
		ontop = false,
		type = "dock",
		width = s.geometry.width,    -- - beautiful.useless_gap * 4,
		shape = gears.shape.rectangle, -- helpers.rrect(beautiful.rounded - 4),
		bg = beautiful.bg_color,
		height = dpi(40)
	})

	-- wibar placement
	awful.placement.top(s.wibar_wid, { margins = dpi(0), left = dpi(0), right = dpi(3) })
	s.wibar_wid:struts({ top = s.wibar_wid.height + beautiful.useless_gap - 4 })

	local systray = wibox.widget {
		{
			widget = wibox.widget.systray,
			systray_icon_spacing = dpi(5),
			bg_systray = beautiful.bg_4,
			base_size = 15,
		},
		top = dpi(10),
		widget = wibox.container.margin,
	}

	-- ================================================
	local ram_bar = awful.widget.watch('bash ' .. home_var .. '/.config/awesome/scripts/current-ram.sh', 1,
		function(wid, stdout)
			wid.value = tonumber(stdout)
		end, wibox.widget {
			max_value        = 11857,
			value            = 10,
			forced_height    = dpi(4),
			min_value        = 1,
			widget           = wibox.widget.progressbar,
			margins          = {
				top = 10,
				bottom = 10,
			},
			shape            = gears.shape.rounded_bar,
			color            = beautiful.fg_color,
			background_color = beautiful.bg_4 .. '99',
			forced_width     = dpi(80),
		})

	-- bar setup
	s.wibar_wid:setup({
		{
			{
				taglist,
				layout = wibox.container.margin,
				margins = { left = dpi(0), right = dpi(0) },
			},
			{
				launcher,
				margins = { top = dpi(0), bottom = dpi(0), left = dpi(0), right = dpi(0) },
				widget = wibox.container.margin,
				layout = wibox.layout.fixed.horizontal,
			},
			{
				{
					ram_bar,
					margins = { top = dpi(0), bottom = dpi(0), left = dpi(0), right = dpi(0) },
					layout = wibox.layout.fixed.horizontal,
				},
				-- {
				-- 	systray,
				-- 	margins = { top = dpi(0), bottom = dpi(0), left = dpi(40), right = dpi(0) },
				-- 	layout = wibox.layout.fixed.horizontal,
				-- 	spacing = dpi(-10),
				-- 	widget = wibox.container.margin,
				-- },
				{
					panel_system,
					margins = { top = dpi(0), bottom = dpi(0) },
					layout = wibox.layout.fixed.horizontal,
				},
				{
					trash,
					margins = { top = dpi(0), bottom = dpi(0) },
					layout = wibox.layout.fixed.horizontal,
				},
				{
					battery,
					margins = { top = dpi(10), bottom = dpi(0) },
					widget = wibox.container.margin,
				},
				{
					cc_ic,
					clock,
					layout = wibox.layout.fixed.horizontal,
					spacing = dpi(15),
				},
				layout = wibox.layout.fixed.horizontal,
				spacing = dpi(20),
			},
			layout = wibox.layout.align.horizontal,
			expand = "none",
		},
		layout = wibox.container.margin,
		margins = { left = dpi(0), right = dpi(15) },
	})
end)
