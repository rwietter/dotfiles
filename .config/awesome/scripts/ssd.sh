#!/bin/bash

function get_hddtemp(){
    hddtemp="$(sudo hddtemp /dev/sda | awk '{ print $4}')"
    echo $hddtemp
}

function get_root_size(){
    used_root="$(df -h /dev/sda1 | awk 'NR==2 {used=$5; print used}')"
    echo $used_root
}

function get_home_size(){
    used_home="$(df -h /dev/sda2 | awk 'NR==2 {used=$5; print used}')"
    echo $used_home
}

if [ $1 = "hddtemp" ]; then
    get_hddtemp
elif [ $1 = "root" ]; then
    get_root_size
else
    get_home_size
fi

# df -h /dev/sda1 | awk 'NR==2 {total=$2; used=$3; print used"/"total}'
