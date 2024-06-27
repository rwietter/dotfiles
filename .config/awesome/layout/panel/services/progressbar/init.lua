local wibox = require("wibox")
local helpers = require("helpers")
local beautiful = require("beautiful")
local dpi = beautiful.xresources.apply_dpi

local ram_bar = require("layout.panel.services.progressbar.ram-bar")
local cpu_bar = require("layout.panel.services.progressbar.cpu")
local disks_home = require("layout.panel.services.progressbar.disks-home")
local disks_root = require("layout.panel.services.progressbar.disks-root")

local linear_bars = wibox.widget {
	widget = wibox.container.background,
	forced_height = dpi(100),
	bg = beautiful.bg_3 .. '40', -- beautiful.bg_2 .. "BF",
	shape = helpers.rrect(beautiful.rounded),
	{
		{
			disks_home,
			disks_root,
			spacing = dpi(8),
			layout = wibox.layout.fixed.vertical,
			align = "center",
			valign = "center",
			halign = "center",
		},
		margins = dpi(8),
		widget = wibox.container.margin
	}
}

local radial_bars = wibox.widget {
	cpu_bar,
	ram_bar,
	layout = wibox.layout.fixed.horizontal,
	spacing = dpi(22),
}

local bars = wibox.widget {
	radial_bars,
	linear_bars,
	layout = wibox.layout.fixed.vertical,
	spacing = dpi(22),
}

return bars
