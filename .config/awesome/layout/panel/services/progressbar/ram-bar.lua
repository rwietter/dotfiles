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
local ram_bar = awful.widget.watch(
	"bash " .. home_var .. "/.config/awesome/scripts/current-ram.sh",
	1,
	function(wid, stdout)
		wid.value = tonumber(stdout)
	end,
	wibox.widget({
		max_value = 11857,
		value = 10,
		forced_height = dpi(60),
		forced_width = dpi(60),
		min_value = 1,
		border_color = beautiful.bg_4,
		border_width = dpi(12),
		color = beautiful.accent, -- beautiful.accent_4,
		widget = wibox.container.radialprogressbar,
	})
)

local ram_icon = wibox.widget({
	{
		image = beautiful.images.ram_icon,
		widget = wibox.widget.imagebox,
	},
	widget = wibox.container.background,
	forced_width = dpi(45),
	forced_height = dpi(45),
})

local ram_text = awful.widget.watch(
	"bash /home/rwietter/.config/awesome/scripts/ram.sh",
	2,
	function(widget, stdout)
		widget.markup = helpers.colorize_text(string.gsub(stdout, "%s+", ""), beautiful.fg_color)
	end,
	wibox.widget({
		font = beautiful.font_var .. "12",
		widget = wibox.widget.textbox,
		align = "center",
		valign = "center",
	})
)

local ram_constraint = wibox.widget({
	widget = wibox.container.place,
	halign = "center",
	{
		ram_bar,
		height = dpi(60),
		width = dpi(60),
		widget = wibox.container.constraint,
	},
})

local ram_widget = wibox.widget({
	{
		{
			ram_icon,
			ram_text,
			spacing = dpi(2),
			align = "center",
			valign = "center",
			layout = wibox.layout.fixed.vertical,
		},
		layout = wibox.layout.fixed.horizontal,
		spacing = dpi(40),
		ram_constraint,
	},
	layout = wibox.container.margin,
	margins = dpi(8),
})

local ram_widget_container = wibox.widget({
	{
		nil,
		{
			nil,
			{
				ram_widget,
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
	bg = beautiful.bg_3 .. "40", -- beautiful.bg_2 .. "BF"
})

return ram_widget_container
