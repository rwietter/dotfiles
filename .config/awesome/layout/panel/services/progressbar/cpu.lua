-- requirements
-- ~~~~~~~~~~~~
local awful = require("awful")
local beautiful = require("beautiful")
local gears = require("gears")
local dpi = beautiful.xresources.apply_dpi
local helpers = require("helpers")
local wibox = require("wibox")
local naughty = require('naughty')

-- widgets
-- ~~~~~~~

local cpu_bar = awful.widget.watch('ruby ' .. home_var .. '/.config/awesome/scripts/current-cpu', 5,
	function(wid, stdout)
		wid.value = tonumber(stdout)
	end, wibox.widget {
		max_value        = 100,
		forced_height    = dpi(2),
		forced_width     = dpi(250),
		margins          = {
			top = 7,
			bottom = 7,
		},
		shape            = gears.shape.rounded_bar,
		border_width     = 0,
		color            = beautiful.red_4,
		background_color = beautiful.red_4 .. 'dd',
		paddings         = 0,
		widget           = wibox.widget.progressbar,
	})

local cpu_icon = wibox.widget {
	{
		image = beautiful.images.cpu_icon,
		widget = wibox.widget.imagebox
	},
	widget = wibox.container.background,
	forced_width = dpi(35),
	forced_height = dpi(35),
}

local cpu_text = awful.widget.watch('ruby /home/rwietter/.config/awesome/scripts/current-cpu'
	, 5, function(widget, stdout)
		widget.markup = helpers.colorize_text(string.gsub(stdout, "%s+", ""), beautiful.fg_color) .. "%"
	end, wibox.widget {
		font = beautiful.font_var .. "13",
		widget = wibox.widget.textbox,
		valign = "right",
		align = "right"
	})

local cpu_widget = wibox.widget {
	cpu_icon,
	cpu_bar,
	cpu_text,
	spacing = dpi(8),
	forced_height = dpi(35),
	layout = wibox.layout.fixed.horizontal,
}

return cpu_widget
