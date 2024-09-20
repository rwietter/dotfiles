-- requirements
-- ~~~~~~~~~~~~
local awful = require("awful")
local beautiful = require("beautiful")
local gears = require("gears")
local dpi = beautiful.xresources.apply_dpi
local helpers = require("helpers")
local wibox = require("wibox")
local naughty = require("naughty")

-- widgets
-- ~~~~~~~

local cpu_bar = awful.widget.watch(
	"ruby " .. home_var .. "/.config/awesome/scripts/current-cpu",
	5,
	function(wid, stdout)
		wid.value = stdout and tonumber(stdout) or 0
	end,
	wibox.widget({
		min_value = 1,
		border_width = dpi(12),
		max_value = 100,
		value = 10,
		forced_height = dpi(60),
		forced_width = dpi(60),
		border_color = beautiful.bg_4,
		color = beautiful.accent, -- beautiful.red_4,
		widget = wibox.container.radialprogressbar,
	})
)

awful.widget.progressbar.forced_direction = "clockwise"

local cpu_icon = wibox.widget({
	{
		image = beautiful.images.cpu_icon,
		widget = wibox.widget.imagebox,
	},
	widget = wibox.container.background,
	forced_width = dpi(45),
	forced_height = dpi(45),
})

local cpu_text = awful.widget.watch(
	"ruby /home/rwietter/.config/awesome/scripts/current-cpu",
	5,
	function(widget, stdout)
		widget.markup = helpers.colorize_text(string.gsub(stdout, "%s+", ""), beautiful.fg_color) .. "%"
	end,
	wibox.widget({
		font = beautiful.font_var .. "12",
		widget = wibox.widget.textbox,
		align = "center",
		valign = "center",
	})
)

local cpu_constraint = wibox.widget({
	widget = wibox.container.place,
	halign = "center",
	{
		cpu_bar,
		height = dpi(60),
		width = dpi(60),
		widget = wibox.container.constraint,
	},
})

local cpu_widget = wibox.widget({
	{
		{
			cpu_icon,
			cpu_text,
			spacing = dpi(2),
			align = "center",
			valign = "center",
			layout = wibox.layout.fixed.vertical,
		},
		layout = wibox.layout.fixed.horizontal,
		spacing = dpi(45),
		cpu_constraint,
	},
	layout = wibox.container.margin,
	margins = dpi(8),
})

local cpu_widget_container = wibox.widget({
	{
		nil,
		{
			nil,
			{
				cpu_widget,
				layout = wibox.layout.fixed.vertical,
				spacing = dpi(8),
			},
			layout = wibox.layout.align.vertical,
			expand = "none",
		},
		layout = wibox.layout.stack,
	},
	shape = helpers.rrect(beautiful.rounded),
	widget = wibox.container.background,
	forced_width = dpi(175),
	forced_height = dpi(105),
	bg = beautiful.bg_3 .. "BF", -- beautiful.bg_2 .. "BF"
})

return cpu_widget_container
