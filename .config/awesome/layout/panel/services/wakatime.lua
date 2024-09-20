-- requirements
-- ~~~~~~~~~~~~
local watch = require("awful.widget.watch")
local beautiful = require("beautiful")
local dpi = beautiful.xresources.apply_dpi
local helpers = require("helpers")
local wibox = require("wibox")

-- widgets
-- ~~~~~~~

-- icon
local icon = wibox.widget({
	{
		{
			image = beautiful.images.code_icon,
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

-- ram
local wakatime = watch(
	"bash " .. home_var .. "/.config/awesome/scripts/wakatime.sh",
	3600,
	function(widget, stdout)
		widget.markup = helpers.colorize_text(string.gsub(stdout, "%s+", ""), beautiful.fg_color)
	end,
	wibox.widget({
		font = beautiful.font_var .. "13",
		widget = wibox.widget.textbox,
		valign = "center",
		align = "center",
	})
)

-- mix those
local wakatime_widget = wibox.widget({
	{
		nil,
		{
			nil,
			{
				icon,
				wakatime,
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
	forced_width = dpi(105),
	forced_height = dpi(105),
	bg = beautiful.bg_3 .. "BF", -- beautiful.bg_2 .. "BF"
})

return wakatime_widget
