#!/bin/bash
while true; 
do
	echo "welcome"
	echo " 1 .Display date & time :"
	echo " 2 .uptime :"
	echo " 3 .info about system users login :"
	echo " 4.press '8' quit :"
	
	read -p input
	case $input in
1)
		now="$(date)"

		printf"Current date and time %s\n" "$now"

		now="$(date +'%d/%m/%Y')"
		printf "Current date in dd/mm/yyyy formate %s\n" "$now"

		echo "Starting backup at $now ,please wait..."
	;;
	2)
		uptime
		;;
	3)
	   whoami
	;;
	8)
	
	echo "Exit"
	exit 0
	;;
	esac
	done

