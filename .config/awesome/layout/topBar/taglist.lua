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
	local taglist_buttons =
			gears.table.join(
				awful.button(
					{},
					1,
					function(t)
						t:view_only()
					end
				),
				awful.button(
					{ modkey },
					1,
					function(t)
						if client.focus then
							client.focus:move_to_tag(t)
						end
					end
				),
				awful.button({}, 3, awful.tag.viewtoggle),
				awful.button(
					{ modkey },
					3,
					function(t)
						if client.focus then
							client.focus:toggle_tag(t)
						end
					end
				),
				awful.button(
					{},
					4,
					function(t)
						awful.tag.viewnext(t.screen)
					end
				),
				awful.button(
					{},
					5,
					function(t)
						awful.tag.viewprev(t.screen)
					end
				)
			)

	local the_taglist =
			awful.widget.taglist {
				screen = s,
				filter = awful.widget.taglist.filter.all,
				{
					style = {
						shape = gears.shape.rectangle,
						spacing = dpi(10),
						border_width = dpi(0),
						border_color = beautiful.bg_3 .. "00",
						widget = wibox.container.background,
						bg_occupied = beautiful.bg_2 .. "22",
						bg_empty = beautiful.bg_3 .. "00",
						bg_focus = beautiful.bg_4 .. "55",
						fg = beautiful.fg_color,
						-- font = beautiful.font_var .. "10",
						font = beautiful.icon_var .. "18",
						align = "center",
						valign = "center"
					},
				},
				forced_height = dpi(30),
				widget = wibox.container.constraint,
				layout = {
					spacing = dpi(10),
					layout = wibox.layout.fixed.horizontal
				},
				widget_template = {
					{
						{
							{
								id = "text_role",
								widget = wibox.widget.textbox,
								font = beautiful.font_var .. "10",
								align = "center",
								markup = "DD",
								valign = "center"
							},
							margins = {
								top = dpi(5),
								bottom = dpi(5),
								left = dpi(0),
								right = dpi(0)
							},
							forced_height = dpi(1),
							forced_width = dpi(30),
							widget = wibox.container.constraint
						},
						widget = wibox.container.background
					},
					id = "background_role",
					bg = beautiful.bg_color,
					widget = wibox.container.background,
					create_callback = function(self, c3, _)
						self:connect_signal(
							"mouse::enter",
							function()
								if #c3:clients() > 0 then
									awesome.emit_signal("bling::tag_preview::update", c3)
									awesome.emit_signal("bling::tag_preview::visibility", s, true)

									awesome.emit_signal("bling::task_preview::visibility", s, true, c3)
								end
							end
						)
						self:connect_signal(
							"mouse::leave",
							function()
								awesome.emit_signal("bling::tag_preview::visibility", s, false)

								awesome.emit_signal("bling::task_preview::visibility", s, false, c3)
							end
						)

						if c3.selected then
							self:get_children_by_id("background_role")[1].bg = beautiful.bg_3
						elseif #c3:clients() == 0 then
							self:get_children_by_id("background_role")[1].bg = beautiful.fg_color
						else
							self:get_children_by_id("background_role")[1].bg = beautiful.fg_color
						end
					end,
					update_callback = function(self, c3, _)
						if c3.selected then
							self:get_children_by_id("background_role")[1].bg = beautiful.bg_3
						elseif #c3:clients() == 0 then
							self.bg = beautiful.fg_color
							self:get_children_by_id("background_role")[1].bg = beautiful.fg_color
						else
							self:get_children_by_id("background_role")[1].bg = beautiful.fg_color
						end
					end
				},
				buttons = taglist_buttons
			}

	return the_taglist
end

return get_taglist
