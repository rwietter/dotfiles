#!/usr/bin/sh
root_used=$(df -h /dev/sda2 | awk 'NR==2 {print $5}' | sed 's/.$//')
echo $root_used
