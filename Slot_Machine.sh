#!/bin/bash
clear
echo "NOTICE OF INTENDED USE AND DISCLAIMER"
sleep 2
echo -e "This software and associated materials are provided strictly for entertainment and recreational purposes. \n Nothing contained herein is intended to facilitate, promote, encourage, or constitute participation in gambling or wagering activities."

echo -e "The Company expressly disclaims and does not authorize any use of this device or software for gambling, wagering, or betting activities. \n Users are responsible for ensuring that their use of this software complies with all applicable laws, regulations, and policies."
echo -e "The use of this software, or any associated functionality for the purpose of placing bets, wagers, \n or otherwise staking money or anything of monetary value is strictly prohibited."
echo -e "By using this software, you acknowledge and agree to these restrictions."
echo "press anything to continue"
read e
sleep 0.2

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
	echo "rolling (press enter to start)"
	read mon
	case $mon in 
		1)
			echo "exiting"
			exit 0
			;;


        *)
			((cash-=10))
			sed -i "s/^cash:.*/cash: $cash/" cash.txt

			x=1

			while [ $x -le 7 ]; do

              sleep 0.5
			  clear

			  gamb1=$((RANDOM % 7 + 1))
			  gamb2=$((RANDOM % 7 + 1))
			  gamb3=$((RANDOM % 7 + 1))

			  echo "$gamb1 $gamb2 $gamb3"
			  ((x+=1))

			done

			if [[ "$gamb1" == "$gamb2" && "$gamb2" == "$gamb3" && "$gamb1" -ge "4" ]]; then
				echo "JACKPOTTTT"
			((cash+=10))
			sed -i "s/^cash:.*/cash: $cash/" cash.txt	

			elif [[ "$gamb1" == "$gamb2" && "$gamb2" == "$gamb3" && "$gamb1" -le "4" ]]; then
				echo "JACKKKKKPOT"
			((cash+=5))
			sed -i "s/^cash:.*/cash: $cash/" cash.txt	

			elif [[ "$gamb1" -eq "5" && "$gamb2" -eq "6" && "$gamb1" -eq "7" ]]; then
				echo "CRAZY JACKKKPOT SUPA SUPA RARE!!!!!!!!"
			((cash+=50))
			sed -i "s/^cash:.*/cash: $cash/" cash.txt		

			elif [[ "$gamb1" -eq "1" && "$gamb2" -eq "2" && "$gamb1" -eq "3" ]]; then
				echo "LESSER JACPOTTT!!!!!!!!!"
			((cash+=40))
			sed -i "s/^cash:.*/cash: $cash/" cash.txt				


			else
				echo "sooooo close!"
			fi
            ;;

    esac

done

