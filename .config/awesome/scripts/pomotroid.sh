#!/bin/bash

nohup pomotroid --no-sandbox > /dev/null 2>&1 &
# notify-send -a "Pomotroid" "Running" --urgency critical -t 5000 -p
