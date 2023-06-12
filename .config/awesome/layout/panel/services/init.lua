-- services buttons
-- ~~~~~~~~~~~~~~~~
-- each button has a fade animation when activated

-- requirements
-- ~~~~~~~~~~~~
local beautiful = require("beautiful")
local dpi = beautiful.xresources.apply_dpi
local wibox = require("wibox")

-- widgets
-- ~~~~~~~
local wakatime_widget     = require("layout.panel.services.wakatime")
local repositories_widget = require("layout.panel.services.repositories")
local followers_widget    = require("layout.panel.services.followers")
local coretemps           = require("layout.panel.services.coretemps")
local superbar            = require("layout.panel.services.progressbar")

local browser_widget = require("layout.panel.services.links.browser")
local telegram_widget = require("layout.panel.services.links.telegram")
local youtube_widget  = require("layout.panel.services.links.youtube")
local reddit_widget   = require("layout.panel.services.links.reddit")
local spotify_widget  = require("layout.panel.services.links.spotify")


-- extras setup
local coretemps_widget = wibox.widget {
	coretemps,
	layout = wibox.layout.fixed.vertical,
	spacing = dpi(22),
	visible = true
}

local progressbar_widgets = wibox.widget {
	superbar,
	layout = wibox.layout.fixed.vertical,
	spacing = dpi(22),
	visible = false
}

local useful = wibox.widget {
	browser_widget,
	telegram_widget,
	youtube_widget,
	reddit_widget,
	spotify_widget,
	layout = wibox.layout.fixed.horizontal,
	spacing = dpi(30),
	visible = false
}

-- return
-- ~~~~~~
local services_widgets = wibox.widget {
	{
		wakatime_widget,
		repositories_widget,
		followers_widget,
		layout = wibox.layout.fixed.horizontal,
		spacing = dpi(22),
	},
	coretemps_widget,
	progressbar_widgets,
	useful,
	spacing = dpi(22),
	layout = wibox.layout.fixed.vertical
}


awesome.connect_signal("panel::extras", function(value)
	coretemps_widget.visible = value or false
	progressbar_widgets.visible = value or false
	useful.visible = value or false
	if not value then
		services_widgets.spacing = dpi(0)
	else
		services_widgets.spacing = dpi(22)
	end
end)


return services_widgets
