#!/bin/bash
bat_level=0
bat_status="discharging"

function bat_info {
	acpi_output=$(acpi -b)
	pat='[0-9]{2,3}'
	[[ $acpi_output =~ $pat ]]
	bat_level=${BASH_REMATCH[0]}
	pat='[D]{0,1}[i]{0,1}[s]{0,1}[cC]harging'
	[[ $acpi_output =~ $pat ]]
	bat_status=${BASH_REMATCH[0]}
}

bat_info

while /bin/true; do
	bat_info
	if [ $bat_level -eq 100 ]
	then
	#TODO: -i flag specify full path to icon
		notify-send -u critical -i "battery-full-charging" 'Unplug charger now!' 'Battery Full. Save Electricity'
	elif [ $bat_level -lt 30 -a "$bat_status" = "Discharging" ]
	then
		notify-send -u critical -i "battery-caution" 'Battery Low' 'Plug in charger now!'
		#TODO: Stop if from keeping it pop every 9 seconds
	elif [ $bat_level -gt 85 -a "$bat_status" = "Charging" ]
	then
		notify-send -u normal -i "battery-good-charging" 'Battery Good' 'You can stop charging.'
	elif [ $bat_level -gt 98 -a "$bat_status" = "Charging" ]
	then
		notify-send -u critical -i "battery-full-charging" 'Battery Full' 'Stop charging now!'
	else
		: #do nothing
	fi
	sleep 9
done &

if [ "$bat_status" = "Charging" ]
then
color_format="\033[44m"
else
color_format="\033[41m"
fi
echo
echo -e "Battery ($bat_level%) is ${color_format}$bat_status \033[0m."		
echo
echo "To end the battery-notifications script, execute the following command:"
#pid_script=$(ps -C battery-notific -o pid,user,comm)
echo -e "\033[0;35mkill -KILL \033[0m\033[4;33m<pid>\033[0m where \033[4;33m<pid>\033[0m is given by\n"
echo -e "\033[0;35mpgrep battery-notific\033[0m"
# to see the pid of sleep 9
#ps --ppid $(ps -C battery-notific -o pid --no-headers) -o pid,user,ppid,comm


