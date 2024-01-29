-- services buttons
-- ~~~~~~~~~~~~~~~~
-- each button has a fade animation when activated

-- requirements
-- ~~~~~~~~~~~~
local beautiful           = require("beautiful")
local dpi                 = beautiful.xresources.apply_dpi
local wibox               = require("wibox")

-- widgets
-- ~~~~~~~
local wakatime_widget     = require("layout.panel.services.wakatime")
local repositories_widget = require("layout.panel.services.repositories")
local followers_widget    = require("layout.panel.services.followers")
local coretemps           = require("layout.panel.services.coretemps")
local progressbar            = require("layout.panel.services.progressbar")

local browser_widget      = require("layout.panel.services.links.browser")
local telegram_widget     = require("layout.panel.services.links.telegram")
local youtube_widget      = require("layout.panel.services.links.youtube")
local reddit_widget       = require("layout.panel.services.links.reddit")
local spotify_widget      = require("layout.panel.services.links.spotify")


-- extras setup
local coretemps_widget = wibox.widget {
	coretemps,
	layout = wibox.layout.fixed.vertical,
	spacing = dpi(22),
}

local progressbar_widgets = wibox.widget {
	progressbar,
	layout = wibox.layout.fixed.vertical,
	spacing = dpi(22),
}

local links = wibox.widget {
	browser_widget,
	telegram_widget,
	youtube_widget,
	reddit_widget,
	spotify_widget,
	layout = wibox.layout.fixed.horizontal,
	spacing = dpi(30),
}

local services = wibox.widget {
	wakatime_widget,
	repositories_widget,
	followers_widget,
	layout = wibox.layout.fixed.horizontal,
	spacing = dpi(22),
}

local services_widgets = wibox.widget {
	progressbar_widgets,
	services,
	coretemps_widget,
	links,
	spacing = dpi(22),
	layout = wibox.layout.fixed.vertical
}


return services_widgets
