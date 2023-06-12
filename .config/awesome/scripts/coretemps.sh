#!/bin/bash

coretemps="$(sensors|awk '/Core/{print substr($3, 2, length($3)-5)}'|awk '{if (match($0,/[0-9]+/,m)) print m[0]"°C"}'|tr '\n' ' ')"

echo $coretemps
