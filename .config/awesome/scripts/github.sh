#!/bin/bash

profile="$(curl -sf https://api.github.com/users/rwietter | jq -r '.public_repos,.followers')"
data=(`echo $profile | sed 's/ /\n/g'`)

if [ "$1" == 'repos' ]; then
    echo "${data[0]}"
    elif [ "$1" == 'followers' ]; then
    echo "${data[1]}"
fi
