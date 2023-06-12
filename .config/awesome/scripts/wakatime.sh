#!/bin/sh
WAKATOKEN="$(cat ~/.wakatime.cfg | awk '/api_key/ {print $3}')"

wakatime_today="$(curl -sf --header "Authorization: Basic $(echo "$WAKATOKEN" | base64)" https://wakatime.com/api/v1/users/current/status_bar/today | jq -r '.data.grand_total.text' | sed 's/hrs/h/g;s/mins/m/g')"

if [ -n "$wakatime_today" ]; then
    echo $wakatime_today
else
    echo "00:38:10"
fi
