#!/bin/bash
echo "Welcome Program"
datee()
{

	date  
}

uptime()
{

	uptime
}
sysusers()
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
            ;;
        *)
            echo "ERROR RETRY !"
            ;;
    esac
done
