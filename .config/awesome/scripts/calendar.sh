#!/bin/bash

TODAY=$(expr `date +'%d'` + 0)
(
    echo "^fg(#FFFFFF)^fn('Aesthetic Iosevka:pixelsize=16:antialias=true:autohint=true'C)"; echo
    \
    cal | sed -re "s/^(.*[A-Za-z][A-Za-z]*.*)$/^fg(#FB6396)^bg(#151726)\1/;s/(^|[ ])($TODAY)($|[ ])/\1^bg(#FFFFFF)^fg(#FB6396)\2^fg(#FFFFFF)^bg(#FB6396)\3/"
    sleep 20
) | dzen2 -fg '#FFFFFF' -bg '#151726' -fn 'Aesthetic Iosevka:pixelsize=13:antialias=true:autohint=true' -x 1158 -y 8 -w 200 -l 10 -h 20 -sa c -e 'onstart=uncollapse;button1=exit'
