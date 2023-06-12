#!/bin/bash

os_name="$(cat /etc/os-release | awk 'NR==1' | sed 's/"/\n/g' | awk 'NR==2')"
echo $os_name
