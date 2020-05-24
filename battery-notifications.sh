while /bin/true; do
	sleep 900
	acpi_output=$(acpi -b)
	pat='[0-9][0-9]'
	[[ $acpi_output =~ $pat ]]
	bat_level=${BASH_REMATCH[0]}
	if [ $bat_level -lt 30 ]
	then
	notify-send -u critical -i "battery-caution" 'Battery Low' 'Plug in charger now!'
	elif [ $bat_level -gt 85 ]
	then
	notify-send -u normal -i "battery-good-charging" 'Battery Good' 'You can stop charging.'
	elif [ $bat_level -gt 98 ]
	then
	notify-send -u critical -i "battery-full-charging" 'Battery Full' 'Stop charging now!'
	else
	echo "battery is charging, DO YOUR WORK."
	fi
done &
echo "battery-notification.sh is running. PID: ($$)"
