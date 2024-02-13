#!/bin/bash

TODAY=$(expr $(date +'%d') + 0)
(
	echo "^fg(#cdd6f4)^fn('Aesthetic Iosevka:pixelsize=16:antialias=true:autohint=true'C)"
	echo

	cal | sed -re "s/^(.*[A-Za-z][A-Za-z]*.*)$/^fg(#cba6f7)^bg(#11111b)\1/;s/(^|[ ])($TODAY)($|[ ])/\1^bg(#313244)^fg(#cba6f7)\2^fg(#cdd6f4)^bg(#cba6f7)\3/"
	sleep 20
) | dzen2 -fg '#cdd6f4' -bg '#11111b' -fn 'Aesthetic Iosevka:pixelsize=13:antialias=true:autohint=true' -x 1158 -y 8 -w 200 -l 10 -h 20 -sa c -e 'onstart=uncollapse;button1=exit'
