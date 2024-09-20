-- Taglist widget
-- ~~~~~~~~~~~~~~
-- requirements
-- ~~~~~~~~~~~~
local awful = require("awful")
local gears = require("gears")
local wibox = require("wibox")
local beautiful = require("beautiful")
local xresources = require("beautiful.xresources")
local dpi = xresources.apply_dpi

-- default modkey
local modkey = "Mod4"

local get_taglist = function(s)
	-- Taglist buttons
	local taglist_buttons = gears.table.join(
		awful.button({}, 1, function(t)
			t:view_only()
		end),
		awful.button({ modkey }, 1, function(t)
			if client.focus then
				client.focus:move_to_tag(t)
			end
		end),
		awful.button({}, 3, awful.tag.viewtoggle),
		awful.button({ modkey }, 3, function(t)
			if client.focus then
				client.focus:toggle_tag(t)
			end
		end),
		awful.button({}, 4, function(t)
			awful.tag.viewnext(t.screen)
		end),
		awful.button({}, 5, function(t)
			awful.tag.viewprev(t.screen)
		end)
	)

	local the_taglist = awful.widget.taglist({
		screen = s,
		filter = awful.widget.taglist.filter.all,
		style = {
			shape = gears.shape.powerline,
			bg_occupied = beautiful.bg_3,
			bg_empty = beautiful.bg_2,
			bg_urgent = beautiful.bg_4,
			bg_focus = beautiful.bg_4,

			fg_occupied = beautiful.fg_color,
			fg_urgent = beautiful.red,
			fg_normal = beautiful.red,
			fg_empty = beautiful.red,
			fg_focus = beautiful.fg_color,
		},
		layout = {
			spacing = dpi(-15),
			spacing_widget = {
				color = beautiful.fg_color,
				shape = gears.shape.powerline,
				widget = wibox.widget.separator,
				thickness = dpi(15),
				border_width = dpi(15),
			},
			layout = wibox.layout.fixed.horizontal,
		},
		widget_template = {
			{
				{
					{
						{
							id = "icon_role",
							widget = wibox.widget.imagebox,
						},
						margins = dpi(2),
						widget = wibox.container.margin,
					},
					{
						id = "text_role",
						widget = wibox.widget.textbox,
					},
					layout = wibox.layout.fixed.horizontal,
				},
				left = dpi(30),
				right = dpi(30),
				widget = wibox.container.margin,
			},
			id = "background_role",
			widget = wibox.container.background,
			-- Add support for hover colors and an index label
			create_callback = function(self, c3, index, objects) --luacheck: no unused args
				self:connect_signal("mouse::enter", function()
					if self.bg ~= beautiful.bg_4 then
						self.backup = self.bg
						self.has_backup = true
					end
					self.bg = beautiful.bg_4
				end)
				self:connect_signal("mouse::leave", function()
					if self.has_backup then
						self.bg = self.backup
					end
				end)
			end,
			update_callback = function(self, c3, index, objects) end,
		},
		buttons = taglist_buttons,
	})

	return the_taglist
end

return get_taglist
