-- requirements
-- ~~~~~~~~~~~~
local awful = require("awful")
local watch = require("awful.widget.watch")
local beautiful = require("beautiful")
local gears = require("gears")
local dpi = beautiful.xresources.apply_dpi
local helpers = require("helpers")
local wibox = require("wibox")

-- widgets
-- ~~~~~~~
-- icon
local icon = wibox.widget({
	{
		{
			image = beautiful.images.spotify_icon,
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
})

-- mix those
local spotify_widget = wibox.widget({
	{
		nil,
		{
			nil,
			{
				icon,
				layout = wibox.layout.fixed.vertical,
				spacing = dpi(6),
			},
			layout = wibox.layout.align.vertical,
			expand = "none",
		},
		layout = wibox.layout.stack,
	},
	shape = helpers.rrect(beautiful.rounded),
	widget = wibox.container.background,
	border_color = beautiful.fg_color .. "33",
	forced_width = dpi(50),
	forced_height = dpi(50),
	bg = beautiful.bg_3 .. "BF",
})

spotify_widget:buttons(gears.table.join({
	awful.button({}, 1, function()
		awful.spawn("nohup spotify", false)
	end),
}))

return spotify_widget
