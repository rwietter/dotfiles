#!/usr/bin/sh
used="$(pfetch | awk '/memory/ {print $1}' | sed 's/[[]/\n/g' | awk 'NR==7' | sed -r 's/^...(.*)$/\1/' | awk '{ print substr($0, 1, length($0)-1) }')"

echo $used
