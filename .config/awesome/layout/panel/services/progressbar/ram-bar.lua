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
local ram_bar = awful.widget.watch('bash ' .. home_var .. '/.config/awesome/scripts/current-ram.sh', 1,
	function(wid, stdout)
		wid.value = tonumber(stdout)
	end, wibox.widget {
		max_value        = 11857,
		forced_height    = dpi(2),
		forced_width     = dpi(250),
		margins          = {
			top = 7,
			bottom = 7,
		},
		shape            = gears.shape.rounded_bar,
		border_width     = 0,
		color            = beautiful.accent_4,
		background_color = beautiful.accent_4 .. '55',
		paddings         = 0,
		widget           = wibox.widget.progressbar,
	})

local ram_icon = wibox.widget {
	{
		image = beautiful.images.ram_icon,
		widget = wibox.widget.imagebox
	},
	widget = wibox.container.background,
	forced_width = dpi(35),
	forced_height = dpi(35),
}

local ram_text = awful.widget.watch('bash /home/rwietter/.config/awesome/scripts/ram.sh'
	, 2, function(widget, stdout)
		widget.markup = helpers.colorize_text(string.gsub(stdout, "%s+", ""), beautiful.fg_color)
	end, wibox.widget {
		font = beautiful.font_var .. "13",
		widget = wibox.widget.textbox,
		valign = "right",
		align = "right"
	})

local ram_widget = wibox.widget {
	ram_icon,
	ram_bar,
	ram_text,
	spacing = dpi(8),
	forced_height = dpi(35),
	layout = wibox.layout.fixed.horizontal,
}

return ram_widget
