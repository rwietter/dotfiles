#!/usr/bin/sh
used="$(pfetch | awk '/memory/ {print $1}' | sed 's/[[]/\n/g' | awk 'NR==7' | sed -r 's/^...(.*)$/\1/' | awk '{ print substr($0, 1, length($0)-1) }')"
total="$(pfetch | awk '/memory/ {print $3}' | awk '{ print substr($0, 1, length($0)-4) }')"

percentual_used=$((($used * 100) / $total))"%"
echo $percentual_used
