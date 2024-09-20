#!/usr/bin/sh
used="$(free -m | grep Mem | awk '{print $3}')"
total="$(free -m | grep Mem | awk '{print $2}')"

percentual_used=$((($used * 100) / $total))"%"
echo $percentual_used
