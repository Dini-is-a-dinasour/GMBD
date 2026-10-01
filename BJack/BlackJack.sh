#!/bin/bash

echo "welcome to a simulation of Black Jack!"
sleep 2

echo "you will be versing the dealer in as many games as you'd like."
sleep 2

echo "booting up simulation..."
sleep 3

clear

ranks=("A" "2" "3" "4" "5" "6" "7" "8" "9" "10" "J" "Q" "K")
suits=("♥" "♦" "♣" "♠")



 rank1=${ranks[$RANDOM % ${#ranks[@]}]}
 suit1=${suits[$RANDOM % ${#suits[@]}]}

 rank2=${ranks[$RANDOM % ${#ranks[@]}]}
 suit2=${suits[$RANDOM % ${#suits[@]}]}

 rank3=${ranks[$RANDOM % ${#ranks[@]}]}
 suit3=${suits[$RANDOM % ${#suits[@]}]}

 sed -i "s/^rank1=.*/rank1=$rank1/" Cardg.sh
 sed -i "s/^suit1=.*/suit1=$suit1/" Cardg.sh

 sed -i "s/^rank2=.*/rank2=$rank2/" Cardg.sh
 sed -i "s/^suit2=.*/suit2=$suit2/" Cardg.sh

 sed -i "s/^rank3=.*/rank3=$rank3/" Cardg.sh
 sed -i "s/^suit3=.*/suit3=$suit3/" Cardg.sh

echo "cards dealt:"

source Cardg.sh