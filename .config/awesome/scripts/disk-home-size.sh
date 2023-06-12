#!/usr/bin/sh
used=$(df -h /dev/sda3 | awk 'NR==2 {print $5}' | sed 's/.$//')
echo $used
