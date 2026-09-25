#!/bin/bash
clear
echo "hey there! welcome to my very normal game."
sleep 2
echo "This is for entertainment purposes only and this company does not condone gambling in anyway"
echo "This device may not be used for that purpose and to bet money in anyway."
sleep 8
clear
echo "now that the big boi words are out of the way..."
sleep 2
echo "LETS GO GAMBLING"
sleep 1
echo "Youll start with 500 bucky bois, got it pookie?"
sleep 1
echo "cash: 500"

cash=500
sed -i "s/^cash:.*/cash: $cash/" cash.txt

cash=$(grep '^cash:' cash.txt | cut -d ':' -f 2- | xargs)

echo "would you like to start the slot machine? (y or n)"
read usless
	if [[ $usless == "y" || $usless == "Y" ]]; then
		echo "Alright, taking 10 buckaroos from your bank account."
		sleep 1

     elif [[ $usless == "n" || $usless == "N" ]]; then
    	echo "... dont resist the tempation..."
    	sleep 2
    	echo "anyways lets get GAMBLING!"
    	sleep 1
    	echo "Alright, taking 10 buckaroos from your bank account."

     else
    	echo "do you think your funny :|"
    	sleep 1
    	echo -e "Imma, \n Imma just restart the Slot_Machine..."
    	sleep 2
    	clear
    	source Slot_Machine.sh 
    	exit 0
    fi

while true; do
	echo "test phase please press 1 to check balance -5"
	read test
	case $test in 
		1)
			((cash-=5))
			sed -i "s/^cash:.*/cash: $cash/" cash.txt
			echo "balance: $cash"
            ;;

        *)
        	echo "exiting."
        	exit 0
            ;;
    esac

done

