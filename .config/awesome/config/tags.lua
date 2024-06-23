-- tags  / layouts
-- ~~~~~~~~~~~~~~~
-- requirements
-- ~~~~~~~~~~~~
local awful = require("awful")
local lmachi = require("mods.layout-machi")
local bling = require("mods.bling")

-- misc/vars
-- ~~~~~~~~~

-- bling layouts
local mstab = bling.layout.mstab
local equal = bling.layout.equalarea
local deck = bling.layout.deck

-- layout machi  
lmachi.editor.nested_layouts = {
	[""] = deck,
	["󰉠"] = awful.layout.suit.spiral,
	["𐳨"] = deck,
	["𐲆"] = awful.layout.suit.fair,
	["𐳿"] = awful.layout.suit.fair.horizontal,
	["𐳱"] = awful.layout.suit.fair.vertical,
}

-- names/numbers of layouts
local names = { "", "󰉠", "𐳨", "𐲆", "𐳿", "𐳱" }
local l = awful.layout.suit

-- Configurations
-- **************

-- default tags
tag.connect_signal(
	"request::default_layouts",
	function()
		awful.layout.append_default_layouts({ l.tile, l.floating, lmachi.default_layout, equal, mstab, deck })
	end
)

-- set tags
screen.connect_signal(
	"request::desktop_decoration",
	function(s)
		screen[s].padding = {
			left = 0,
			right = 0,
			top = 0,
			bottom = 0
		}
		awful.tag(names, s, awful.layout.layouts[1])
	end
)
