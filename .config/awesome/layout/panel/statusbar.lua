-- requirements
-- ~~~~~~~~~~~~
local awful     = require("awful")
local gears     = require("gears")
local wibox     = require("wibox")
local beautiful = require("beautiful")
local dpi       = beautiful.xresources.apply_dpi


-- extra control icon
local extras = wibox.widget {
	widget = wibox.widget.textbox,
	markup = "",
	font = beautiful.icon_var .. "Bold 16",
	valign = "center",
	align = "center"
}


local extra_shown = false


awesome.connect_signal("panel::extras", function(update)
	extra_shown = update
	if update then extras.markup = "" end
end)


extras:buttons { gears.table.join(
	awful.button({}, 1, function()
		if extra_shown then
			control_panel()
			extra_shown = false
			extras.markup = ""
		else
			extras.markup = ""
			extra_shown = true
			control_panel(true)
		end
	end)
) }

return wibox.widget {
	{
		{
			layout = wibox.layout.fixed.horizontal,
			spacing = dpi(15)
		},
		extras,
		layout = wibox.layout.align.horizontal
	},
	layout = wibox.layout.fixed.vertical,
	forced_height = dpi(25)
}
