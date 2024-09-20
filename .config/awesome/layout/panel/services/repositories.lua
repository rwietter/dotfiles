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
			image = beautiful.images.repos_icon,
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
local repositories = watch(
	"bash " .. home_var .. "/.config/awesome/scripts/github.sh repos",
	21600,
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
local repositories_widget = wibox.widget({
	{
		nil,
		{
			nil,
			{
				icon,
				repositories,
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
	forced_width = dpi(105),
	forced_height = dpi(105),
	bg = beautiful.bg_3 .. "BF", -- beautiful.bg_2 .. "BF"
})

return repositories_widget
