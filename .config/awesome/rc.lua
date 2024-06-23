--[[
    A random rice. i guess.
    source: https://github.com/saimoomedits/dotfiles
		customized by: https://github.com/rwietter
		- Features
			- System monitor panel
			- Script for wallpaper
			- Script for increase/decrease picom terminal opacity
			- Moonphase script
]]
-- Disable notification module instead of dunst
package.loaded["naughty.dbus"] = {}
package.loaded["json"] = {}

pcall(require, "luarocks.loader")

-- home variable 🏠
home_var   = os.getenv("HOME")

-- user preferences ⚙️
user_likes = {

	-- aplications
	term     = "wezterm",
	editor   = "wezterm -e " .. "nvim",
	code     = "code",
	web      = "chromium",
	files    = "nautilus",
	ss       =
	"maim -s -m 10 -f png -b 0 -u -o ~/Imagens/Prints/$(date +%d-%m-%y_%H:%M:%S).png | notify-send -i ~/.local/share/icons/customer-service.png -u normal -t 9000 'Screenshot taken and saved to ~/Imagens/Prints'",

	-- your profile
	username = os.getenv("USER"),
	userdesc = "@rwietter"
}


-- theme 🖌️
require("theme")

-- configs ⚙️
require("config")

-- miscallenous ✨
require("misc")

-- signals 📶
require("signal")

-- ui elements 💻
require("layout")
