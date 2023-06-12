-- requirements
-- ~~~~~~~~~~~~
local beautiful = require("beautiful")
local dpi = beautiful.xresources.apply_dpi
local helpers = require("helpers")
local wibox = require("wibox")
local awful = require("awful")


-- widgets
-- ~~~~~~~
-- username
local title = awful.widget.watch('bash ' .. home_var .. '/.config/awesome/scripts/os_name.sh'
	, 86400, function(widget, stdout)
		widget.markup = helpers.colorize_text(string.gsub(stdout, "%s+", "  "), beautiful.fg_color)
	end, wibox.widget {
		font = beautiful.font_var .. "13",
		widget = wibox.widget.textbox,
		valign = "center",
		align = "center"
	})

local title_widget = wibox.widget {
	{
		{
			image = beautiful.images.arch_icon,
			widget = wibox.widget.imagebox,

		},
		widget = wibox.container.background,
		forced_width = dpi(40),
		forced_height = dpi(40),
	},
	align = "center",
	widget = wibox.container.place,
	valign = "center",
	halign = "center",
}


-- return
return wibox.widget {
	{
		nil,
		{
			title_widget,
			title,
			layout = wibox.layout.fixed.horizontal,
			spacing = dpi(2)
		},
		layout = wibox.layout.align.vertical,
		expand = "none"
	},
	layout = wibox.layout.fixed.horizontal,
	spacing = dpi(15)
}
