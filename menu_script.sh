#!/bin/bash
echo "Welcome Program"
datee()
{

		now="$(date)"
	printf "Current date and time %s\n" "$now"
	 
	now="$(date +'%d/%m/%Y')"
	printf "Current date in dd/mm/yyyy format %s\n" "$now"
	 
	echo "Starting backup at $now, please wait..."  
}

uptime()
{

	uptime
}
sysusers()
{
	whoami
}




while true ;
do
    
    echo "1.Display the current date and time"
    echo "2. Display the system uptime"
    echo "3. Display system loggedin users"
    echo "Enter 0 to Quit"
    echo "Input:"
    read -r input_choice
    case $input_choice in
        1)
            datee 
            ;;
        2)
            uptime 
            ;;
        3)
            
           sysusers 
            ;;
        0)
            echo "Exit Good bye!"
            exit 0
	    ;;
        *)
            echo "ERROR RETRY !"
            ;;
    esac
done
