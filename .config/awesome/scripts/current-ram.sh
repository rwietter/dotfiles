#!/usr/bin/sh
used="$(free -m | grep Mem | awk '{print $3}')"

echo $used
