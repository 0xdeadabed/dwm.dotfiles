# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    statusModules.sh                                   :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: 1mthe0wl </var/spool/mail/evil>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/01/07 20:12:12 by 1mthe0wl          #+#    #+#              #
#    Updated: 2022/01/10 15:43:23 by 1mthe0wl         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#!/bin/bash

#### Volume
get_vol() {
	vol=$(pulsemixer --get-volume | awk '{ print $1 }')
	mute=$(pulsemixer --get-mute)
	if [ "$mute" -eq "1" ] || [ "$vol" -eq "0" ]; then
		VICON=" 婢 "
	else
		if [[ "$vol" -gt "1" && "$vol" -lt "42" ]]; then
			VICON="  "
		elif [[ "$vol" -gt "41" && "$vol" -lt "71" ]]; then
			VICON=" 墳"
		elif [[ "$vol" -gt "70" ]]; then
			VICON="  "
		fi
	fi
	printf "%s %s" "$vol" "$VICON"
}

#### Battery
# Determine battery charge state
battery_status() {
	battery_path=/sys/class/power_supply/BAT1
	battery_state=$(acpi | awk '{print $3}' | sed 's/,//g')
	battery_full=$battery_path/energy_full
    battery_current=$battery_path/energy_now

    if [ $battery_state == 'Discharging' ]; then
		BATT_CONNECTED=0
    else
        BATT_CONNECTED=1
    fi
    now=$(cat $battery_current)
    full=$(cat $battery_full)
    BATT_PCT=$((100 * $now / $full))
}

# Print the battery status
print_battery() {
	battery_status
    if ((BATT_CONNECTED)); then
        ICON="⚡"
    else
        ICON=" "
    fi

    printf "%s %s " "$BATT_PCT%" "$ICON"
}

#### Date and time
get_datetime() {
    date +"📅 %a %d %b %Y | 🕓 %I:%M %p %Z"
}

#### Weather
get_weather() {
	weather=$(curl wttr.in?format=1)
	printf " %s" "$weather"
}

#### Put it all together
get_status() {
	echo "$(get_weather) | $(print_battery) | $(get_vol) | $(get_datetime)";
}


#### xsetroot loop
while true; do
	xsetroot -name "$(get_status)";
	sleep 1m;
done
