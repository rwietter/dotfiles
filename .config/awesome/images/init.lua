-- sussy images
-- ~~~~~~~~~~~~


-- misc/vars
-- ~~~~~~~~~
local sus = home_var .. "/.config/awesome/images/sus/"
local linebit = home_var .. "/.config/awesome/images/linebit/"
local ui_vars = require("theme.ui_vars")


-- init
-- ~~~~
return {

	-- images from sus
	bell = sus .. "bell.png",
	profile = sus .. "profile.jpg",
	music_icon = sus .. "music.png",
	album_art = sus .. "album-art.png",
	awesome = sus .. "awesome.png",
	ram_icon = linebit .. "ram.png",
	cpu_icon = linebit .. "temperature.png",
	home_icon = linebit .. "home.png",
	root_icon = linebit .. "files.png",
	sun_icon = linebit .. "sun.png",
	code_icon = linebit .. "compositor.png",
	arch_icon = linebit .. "appearance.png",
	repos_icon = linebit .. "mist.png",
	followers_icon = linebit .. "star.png",
	firefox_icon = linebit .. "firefox.png",
	telegram_icon = linebit .. "telegram.png",
	youtube_icon = linebit .. "youtube.png",
	reddit_icon = linebit .. "reddit.png",
	spotify_icon = linebit .. "music.png",

	-- icons mono
	-- youtube_icon = linebit .. "mono/youtube.png",
	-- ram_icon = linebit .. "mono/ram.png",
	-- cpu_icon = linebit .. "mono/temperature.png",
	-- reddit_icon = linebit .. "mono/reddit.png",
	-- spotify_icon = linebit .. "mono/music.png",
	-- sun_icon = linebit .. "mono/sun.png",
	-- telegram_icon = linebit .. "mono/telegram.png",
	-- arch_icon = linebit .. "mono/appearance.png",
	-- followers_icon = linebit .. "mono/star.png",
	-- firefox_icon = linebit .. "mono/firefox.png",
	-- code_icon = linebit .. "mono/compositor.png",
	-- repos_icon = linebit .. "mono/mist.png",
	-- root_icon = linebit .. "mono/files.png",
	-- home_icon = linebit .. "mono/home.png",


	-- layouts
	layouts = {
		flair = sus .. "layouts/flair.png",
		floating = sus .. "layouts/floating.png",
		tile = sus .. "layouts/tile.png",
		layoutMachi = sus .. "layouts/layout-machi.png"
	},

	-- wallpapers
	wall = sus .. "walls/" .. ui_vars.color_scheme .. ".png",
}
