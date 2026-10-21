#!/bin/bash

echo "welcome to a simulation of Black Jack!"
sleep 2

echo "you will be versing the dealer in as many games as you'd like."
sleep 2

echo "booting up simulation..."
sleep 3
echo "this will run forever, to exit whenever, press ^C"
sleep 1
echo "Due to my lack of knowledge, this game has a limit of six cards dealable"
echo "and there aint a split option,Hit enter to start"
read u 
sleep 0.2
source BlackJack.sh
exit 0