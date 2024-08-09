state_file="$HOME/.local/share/user-redshift"
if pgrep redshift >/dev/null 2>&1; then
	pkill redshift && sleep 1
	if pgrep redshift >/dev/null 2>&1; then
		killall redshift && sleep 1
	fi
	if pgrep redshift >/dev/null 2>&1; then
		pkill -9 redshift && sleep 1
	fi
	echo "false" >"$state_file"
	echo 'OFF'
else
	redshift -l 0:0 -t 3500:3500 -r &>/dev/null &
	echo "true" >"$state_file"
	echo 'ON'
fi
