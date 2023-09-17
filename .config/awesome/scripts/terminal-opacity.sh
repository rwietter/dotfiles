#!/bin/bash

: << DISCLAIMER
  - Description
    - This script changes the opacity of the terminal emulator.
    - The state argument can be:
			- inc: increase the opacity value (+5%)
			- dec: decrease the opacity value (-5%)
    - The script changes the opacity value in the picom config file.
    - The script restarts picom to apply the changes.

  - Arguments:
    - $1: state (inc | dec)

  - Usage:
    - ./test.sh <opacity_value>

  - Authors:
    - Maurício Witter <github.com/rwietter>
DISCLAIMER

# Check if the argument is empty
if [ -z "$1" ]; then
  echo "YOU ARE JOKE ME? YOU MUST PASS THE STATE ARGUMENT! PLEASE, READ THE SCRIPT DESCRIPTION :)"
  exit 1
fi

# Argument value is the opacity value
opacity=0

# Config file of picom
picom_conf=$(realpath ~/.config/picom.conf)

# If the argument is "inc" or "dec", the opacity value is the current value +5% or -5%. Otherwise, the script exits.
if [ "$1" == "inc" ]; then
	opacity=$(cat $picom_conf | grep "class_g = 'org.wezfurlong.wezterm'" | cut -d ":" -f 1 | cut -d '"' -f 2)
	opacity=$((opacity + 5))
elif [ "$1" == "dec" ]; then
	opacity=$(cat $picom_conf | grep "class_g = 'org.wezfurlong.wezterm'" | cut -d ":" -f 1 | cut -d '"' -f 2)
	opacity=$((opacity - 5))
else
	echo "Uso: $0 <inc | dec >"
	exit 1
fi

: << WM_CLASS
  - To find the WM_CLASS of the terminal emulator:
    - Open the terminal emulator
    - Run the command: xprop WM_CLASS
    - Click on the terminal emulator window
    - The WM_CLASS will be displayed in the terminal
WM_CLASS
wm_class="org.wezfurlong.wezterm"

# Replace the opacity value in the picom config file
sed -i "s/[0-9]\{1,3\}:class_g = '$wm_class'/$opacity:class_g = '$wm_class'/g" "$picom_conf"

# Restart picom
pkill picom
sleep 1 && nohup picom &>/dev/null &

notify-send -u low -a "Terminal" "Set terminal opacity to $opacity%"

exit 0
