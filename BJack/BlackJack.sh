#!/bin/bash


clear
echo "Due to my lack of knowledge, this game has a limit of six cards dealable"
echo "for the player and the dealer, and once either person reaches over 21"
echo "it automaticly stops dealing cards for that person and there aint a split option,Hit enter to start"
read u 
sleep 0.2
clear
echo "starting"
sleep 2

#copied emojis from host computer
ranks=("A" "2" "3" "4" "5" "6" "7" "8" "9" "10" "J" "Q" "K")
suits=("♥" "♦" "♣" "♠")


#sets the three cards rank & suit
 rank1=${ranks[$RANDOM % ${#ranks[@]}]}
 suit1=${suits[$RANDOM % ${#suits[@]}]}

 rank2=${ranks[$RANDOM % ${#ranks[@]}]}
 suit2=${suits[$RANDOM % ${#suits[@]}]}



#sends the information held in the variables to the cardg.sh
 sed -i "s/^rank1=.*/rank1=$rank1/" Cardg.sh
 sed -i "s/^suit1=.*/suit1=$suit1/" Cardg.sh

 sed -i "s/^rank2=.*/rank2=$rank2/" Cardg.sh
 sed -i "s/^suit2=.*/suit2=$suit2/" Cardg.sh



echo "Dealers cards"

source CardD.sh

echo "cards dealt:"

source Cardg.sh

x=1

while ((x <= 3)); do 
  echo " 1) Hit"
  echo " 2) Stand"
  echo " 3) Raise"
  echo " 4) Surrender"
  read user


 
 case $user in 
   1)
    	echo "You: 'hit'"
   	 x=1
    ;;

   2)
   	 echo "gundam"
   	;;

   3)
   	 echo "femboy"
   	;;

   4)
   	 echo "exit"
   	 x=4
   	;;

   5)
   	 echo "hehe"
   	 x=5
   	;;

   *)
   	echo "not an option"
   ;;

 esac


done