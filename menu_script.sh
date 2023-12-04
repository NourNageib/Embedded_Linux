#!/bin/bash
echo "Welcome Program"
showdate()
{

	date  
}

showSysUptime()
{

	uptime
}
showCurrentUsers()
{
	whoami
}
 input = 1
while [ $choice != 0 ]
do
    
    echo "1.Display the current date and time"
    echo "2. Display the system uptime"
    echo "3. Display system loggedin users"
    echo "Enter 0 to Quit"
    echo "Input:"
    read -r choice
    case $choice in
        1)
            showdate 
            ;;
        2)
            showSysUptime 
            ;;
        3)
            
           showCurrentUsers 
            ;;
        0)
            echo "Exit Good bye!"
            ;;
        *)
            echo "ERROR RETRY !"
            ;;
    esac
done
