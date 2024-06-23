-- requirements
-- ~~~~~~~~~~~~
local awful = require("awful")
local beautiful = require("beautiful")
local dpi = beautiful.xresources.apply_dpi
local helpers = require("helpers")
local wibox = require("wibox")
local gears = require("gears")
local rubato = require("mods.rubato")
local readwrite = require("misc.scripts.read_writer")

--[[ few stuffs to note

-- sidebar height (extras disabled)
-- height = dpi(580),

-- sidebar new height (extras enabled)
-- height = dpi(715),

]]

awful.screen.connect_for_each_screen(function(s)
	-- Mainbox
	-- ~~~~~~~~~~~~~~~~~
	panel_info = wibox({
		type = "dock",
		shape = helpers.rrect(beautiful.rounded),
		screen = s,
		width = dpi(420),
		bg = beautiful.bg_color,
		margins = 20,
		ontop = true,
		visible = true
	})
	-- ~~~~~~~~~~~~~~~

	-- widgets
	-- ~~~~~~~~
	local title = require("layout.panel.title")
	local sessions = require("layout.controlCenter.sessionctl")
	local services = require("layout.panel.services")
	local statusline = require("layout.panel.statusbar")

	-- animations
	--------------
	local slide_right = rubato.timed {
		pos = s.geometry.height,
		rate = 60,
		intro = 0.14,
		duration = 0.33,
		subscribed = function(pos) panel_info.y = s.geometry.y + pos end
	}

	local slide_end = gears.timer({
		single_shot = true,
		timeout = 0.33 + 0.08,
		callback = function() panel_info.visible = false end
	})

	-- toggler script
	-- ~~~~~~~~~~~~~~~
	local screen_backup = 1

	panel_toggle = function(screen)
		-- set screen to default, if none were found
		if not screen then screen = s end

		-- control center x position
		panel_info.x = screen.geometry.x + (dpi(1430) + beautiful.useless_gap * 4)

		-- toggle visibility
		if panel_info.visible then
			-- check if screen is different or the same
			if screen_backup ~= screen.index then
				panel_info.visible = true
			else
				slide_end:again()
				slide_right.target = s.geometry.height
			end
		elseif not panel_info.visible then
			slide_right.target = s.geometry.height -
					(panel_info.height + beautiful.useless_gap *
						2)
			panel_info.visible = true
		end

		-- set screen_backup to new screen
		screen_backup = screen.index
	end
	-- Eof toggler script
	-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

	-- function to show/hide extra buttons
	-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	function control_panel(input)
		if input then
			awesome.emit_signal("panel::extras", true)
			panel_info.height = dpi(715)
			readwrite.write("state", "open")
		else
			awesome.emit_signal("panel::extras", false)
			panel_info.height = dpi(300)
			readwrite.write("state", "closed")
		end
		slide_right.target = s.geometry.height -
				(panel_info.height + beautiful.useless_gap * 2)
	end

	-- Initial setup
	panel_info:setup {
		{
			{
				{
					title,
					nil,
					sessions,
					layout = wibox.layout.align.horizontal
				},
				{
					statusline,
					margins = dpi(0),
					widget = wibox.container.margin
				},
				services,
				layout = wibox.layout.fixed.vertical,
				spacing = dpi(20)
			},
			widget = wibox.container.margin,
			margins = dpi(25),
		},

		layout = wibox.layout.fixed.vertical
	}

	-- reload cc state on reload or startup
	---------------------------------------
	local output = readwrite.readall("state")

	if output:match("open") then
		awesome.emit_signal("panel::extras", true)
		panel_info.height = dpi(715)
	else
		awesome.emit_signal("panel::extras", false)
		panel_info.height = dpi(300)
	end
	--------------------------------------------------------
end)
