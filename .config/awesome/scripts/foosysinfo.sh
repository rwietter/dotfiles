#!/bin/bash

FG='#E5E9F0'
BG='#1d2433'
fg_title="#E64181"

font1="Fantasque Sans Mono:size=12"
font_title="Noto Sans:bold:size=11"
icons="FontAwesome:pixelsize=12;0"
icons2="Wuncon Siji:size=12;0"


 #----------------------------------------------------------------
 Layout=$(setxkbmap -print | awk -F"+" '/xkb_symbols/{for ( i=1; i <= NF; i++) sub(".", substr(toupper($i),1,1) , $i); print $2}')
 github=github.com/rwietter
 system=$(sed 's/\s*[\(\\]\+.*$//' /etc/issue)
 Model=$(cat /sys/devices/virtual/dmi/id/board_{name,vendor} | awk '!(NR%2){print$1,p}{p=$0}')
 CPU=$(awk < /proc/cpuinfo '/model name/{gsub(/[(TMR)]/,"");print $4,$5,$6,$8}' | head -1)
 Shell=$(echo "$SHELL" | awk -F/ '{for ( i=1; i <= NF; i++) sub(".", substr(toupper($i),1,1) , $i); print $NF}')
 GtkTheme=$(awk < .gtkrc-2.0 -F'"' '/gtk-theme-name/{print $2}')
 GtkIcon=$(awk < .gtkrc-2.0 -F'"' '/gtk-icon-theme-name/{print $2}' )
 GtkFont=$(awk < .gtkrc-2.0 -F'"' '/gtk-font-name/{print $2}')


 #A simple popup showing system information
 disk=$(df -h / | awk 'NR==2 {total=$2; used=$3; print used "  /   "total}')
 OS=$(uname -r)
 pid=$(pgrep -x -u $USER $wm)
 HOST=$(uname -n)
 KERNEL=$(uname -r)
 charCount=$(echo ${#uptime})
 MPC=`mpc -f %title%  | head -1`
 MPD=`mpc -f %artist%  | head -1`
 cpu=$(lscpu | grep 'Model name' | awk -F ':' '{print $2}' | cut -c13-37)
 if [[ "$charCount" = "3" ]]
 	then
 	uptime=$(uptime | awk '{print $3}' | sed 's/,/m/')
 elif [[ "$charCount" = "1" ]] || [[ "$charCount" = "2" ]]
 	then
 	uptime=$(uptime | awk '{print $3}' | sed 's/$/m/')
 else
 	uptime=$(uptime | awk '{print $3}' | sed 's/:/h /' | sed 's/,/m/')
 fi


 UPTIME=$(awk '{printf("%d:%02d:%02d:%02d",($1/60/60/24),($1/60/60%24),($1/60%60),($1%60))}' /proc/uptime)
 PACKAGES=$(pacman -Q | wc -l)
 de=$(wmctrl -m | grep -i name | awk '{print $2}')
 ram_used=$(free -m | grep Mem | awk '{print $3" MB"}')
 ram_total=$(free -m | grep Mem | awk '{print $2" MB"}')
 cpu_user=$(mpstat | grep all | awk '{print $4"%"}')
 cpu_sys=$(mpstat | grep all | awk '{print $6"%"}')
 cpu_idle=$(mpstat | grep all | awk '{print $13"%"}')
 temp=$(cat /sys/devices/virtual/thermal/thermal_zone0/temp)
 # hdd_temp=$(sudo hddtemp -n /dev/sda)

(
	echo ""
  echo "^fg(#4C566A)^p(+10)----------------------------------------"
  echo "^p(+75)^fg(#D8DEE9)^fn($font_title)^fg($fg_title)^bg(#2E3440) SYSTEM INFORMATION "
  echo "^fg(#4C566A)^p(+10)----------------------------------------"
  echo ""
  echo "^p(+16)^fg(#D8DEE9)^fn($icons) ^fn($font1) ^p(+6)$HOST "
  echo "^p(+15)^fg(#D8DEE9)^fn($icons) ^fn($font1) ^p(+4)$Model"
  echo "^p(+15)^fg(#D8DEE9)^fn($icons) ^fn($font1) ^p(+5)$CPU"
  echo "^p(+17)^fg(#D8DEE9)^fn($icons) ^fn($font1) ^p(+6)$PACKAGES packages"
  echo "^p(+15)^fg(#D8DEE9)^fn($icons) ^fn($font1) ^p(+6)$system"
  echo ""
  echo "^fg(#4C566A)^p(+10)----------------------------------------"
  echo "^p(+110)^fg(#D8DEE9)^fn($font_title)^fg($fg_title)^bg(#2E3440) INFORMATION "
  echo "^fg(#4C566A)^p(+10)----------------------------------------"
  echo ""
  echo "^p(+14)^fg(#D8DEE9)^fn($icons) ^fn($font1) GITHUB ^p(+50)^fn($icons)^fn($font1) $github"
  echo "^p(+14)^fg(#D8DEE9)^fn($icons) ^fn($font1) KERNEL ^p(+49)^fn($icons)^fn($font1) $KERNEL"
  echo "^p(+14)^fg(#D8DEE9)^fn($icons) ^fn($font1) UPTIME ^p(+49)^fn($icons)^fn($font1) $UPTIME"
  echo "^p(+10)^fg(#D8DEE9)^fn($icons)  ^fn($font1) WM ^p(+78)^fn($icons)^fn($font1) $de"
  echo "^p(+13)^fg(#D8DEE9)^fn($icons) ^fn($font1) LAYOUT ^p(+48)^fn($icons)^fn($font1) $Layout"
  echo "^p(+11)^fg(#D8DEE9)^fn($icons)  ^fn($font1) ^p(+6)SHELL ^p(+53)^fn($icons)^fn($font1) $Shell"
  echo ""
  echo "^fg(#4C566A)^p(+10)----------------------------------------"
  echo "^p(+130)^fg(#D8DEE9)^fn($font_title)^fg($fg_title)^bg(#2E3440) RAM "
  echo "^fg(#4C566A)^p(+10)----------------------------------------"
  echo ""
  echo "^p(+15)^fg(#D8DEE9)^fn($icons) ^fn($font1) RAM $ram_used of $ram_total"
  echo ""
  echo "^fg(#4C566A)^p(+10)----------------------------------------"
  echo "^p(+130)^fg(#D8DEE9)^fn($font_title)^fg($fg_title)^bg(#2E3440) HDD "
  echo "^fg(#4C566A)^p(+10)----------------------------------------"
  echo ""
  echo "^p(+15)^fg(#D8DEE9)^fn($icons) ^fn($font1) HDD ROOM $disk"
  echo ""
  echo "^fg(#4C566A)^p(+10)----------------------------------------"
  echo "^p(+130)^fg(#D8DEE9)^fn($font_title)^fg($fg_title)^bg(#2E3440) THEME"
  echo "^fg(#4C566A)^p(+10)----------------------------------------"
  echo ""
  echo "^p(+14)^fg(#D8DEE9)^fn($icons) ^fn($font1) FONT ^p(+66)^fn($icons)^fn($font1) $GtkFont"
  echo "^p(+14)^fg(#D8DEE9)^fn($icons) ^fn($font1) THEME ^p(+59)^fn($icons)^fn($font1) $GtkTheme"
  echo "^p(+14)^fg(#D8DEE9)^fn($icons) ^fn($font1) ICONS ^p(+59)^fn($icons)^fn($font1) $GtkIcon"
  echo ""
) | dzen2 -p -x 1620 -y 710 -w 297 -bg $BG -fg $FG -l 44 -sa l -ta c -e 'onstart=uncollapse;button1=exit;button4=exit' -fn "Fantasque Sans Mono"
