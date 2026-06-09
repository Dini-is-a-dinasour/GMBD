#!/bin/bash

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
while true; do
	echo "would you like to start using the slot machine? (y or n)"
	read usless
	if [[ $usless == "y" || $usless == "Y" ]]; then
		echo "Rolling"
		sleep 1

