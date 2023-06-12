local wibox = require("wibox")
local helpers = require("helpers")
local beautiful = require("beautiful")
local dpi = beautiful.xresources.apply_dpi


local rambar = require("layout.panel.services.progressbar.ram-bar")
local cpubar = require("layout.panel.services.progressbar.cpu")
local disks_home = require("layout.panel.services.progressbar.disks-home")
local disks_root = require("layout.panel.services.progressbar.disks-root")


local superbar = wibox.widget {
	{
		{
			rambar,
			cpubar,
			disks_home,
			disks_root,
			spacing = dpi(12),
			layout = wibox.layout.fixed.vertical,
		},
		margins = { top = dpi(20), bottom = dpi(12), left = dpi(15), right = dpi(12) },
		widget = wibox.container.margin
	},
	widget = wibox.container.background,
	forced_height = dpi(220),
	bg = beautiful.bg_2,
	shape = helpers.rrect(beautiful.rounded)
}

return superbar
