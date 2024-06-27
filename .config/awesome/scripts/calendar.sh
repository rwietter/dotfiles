#!/bin/bash

TODAY=$(expr $(date +'%d') + 0)
(
	echo "^fg(#cdd6f4)^fn('PragmataPro:pixelsize=16:antialias=true:autohint=true'C)"
	cal | sed -re "s/^(.*[A-Za-z][A-Za-z]*.*)$/^fg(#7C829D)^bg(#0F1014)\1/;s/(^|[ ])($TODAY)($|[ ])/\1^bg(#FFFFFF)^fg(#7C829D)\2^fg(#cdd6f4)^bg(#7C829D)\3/"
	sleep 20
) | dzen2 -fg '#cdd6f4' -bg '#0F1014' -fn 'PragmataPro:pixelsize=13:antialias=true:autohint=true' -x 1158 -y 35 -w 200 -l 10 -h 20 -sa c -e 'onstart=uncollapse;button1=exit' &
