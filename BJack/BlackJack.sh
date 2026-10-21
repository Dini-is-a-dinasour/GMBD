#!/bin/bash


clear
echo "Due to my lack of knowledge, this game has a limit of six cards dealable"
echo "and there aint a split option,Hit enter to start"
read u 
sleep 0.2
clear
echo "starting (money=1000)"
money=1000
pot=0
sleep 2

#copied emojis from host computer
ranks=("A" "2" "3" "4" "5" "6" "7" "8" "9" "10" "J" "Q" "K")
suits=("♥" "♦" "♣" "♠")


#sets the three cards rank & suit
 rank1=${ranks[$RANDOM % ${#ranks[@]}]}
 suit1=${suits[$RANDOM % ${#suits[@]}]}

 rank2=${ranks[$RANDOM % ${#ranks[@]}]}
 suit2=${suits[$RANDOM % ${#suits[@]}]}

 rank3=${ranks[$RANDOM % ${#ranks[@]}]}
 suit3=${suits[$RANDOM % ${#suits[@]}]}

 rank4=${ranks[$RANDOM % ${#ranks[@]}]}
 suit4=${suits[$RANDOM % ${#suits[@]}]}

 rank5=${ranks[$RANDOM % ${#ranks[@]}]}
 suit5=${suits[$RANDOM % ${#suits[@]}]}

 rank6=${ranks[$RANDOM % ${#ranks[@]}]}
 suit6=${suits[$RANDOM % ${#suits[@]}]}

#sends the information held in the variables to the cardg.sh
 sed -i "s/^rank1=.*/rank1=$rank1/" Cardg.sh
 sed -i "s/^suit1=.*/suit1=$suit1/" Cardg.sh

 sed -i "s/^rank2=.*/rank2=$rank2/" Cardg.sh
 sed -i "s/^suit2=.*/suit2=$suit2/" Cardg.sh

echo "please specify the amount of money your putting in"
read putin

money1=$((money - putin))

pot=$((putin * 2))

echo "pot: $pot money: $money1"

echo "Dealers cards"

source CardD.sh

echo "cards dealt:"

source Cardg.sh

x=1
y=1
while ((x <= 3)); do 
  echo " 1) Hit"
  echo " 2) Stand"
  echo " 3) Raise"
  echo " 4) Surrender"
  read user


 
 case $user in 
   1)
    	echo "You: 'hit'"
      case $y in 
        1)
          sed -i "s/^rank3=.*/rank3=$rank3/" CardR.sh
          sed -i "s/^suit3=.*/suit3=$suit3/" CardR.sh
          source Cardg.sh 
          source CardR.sh
          ((y += 1))
          ;;
        2)
          sed -i "s/^rank3=.*/rank3=$rank3/" CardR.sh
          sed -i "s/^suit3=.*/suit3=$suit3/" CardR.sh
          source Cardg.sh 
          source CardR.sh
          sed -i "s/^rank3=.*/rank3=$rank4/" CardR.sh
          sed -i "s/^suit3=.*/suit3=$suit4/" CardR.sh
          source CardR.sh
          ((y += 1))
          ;;
        3)
          sed -i "s/^rank3=.*/rank3=$rank3/" CardR.sh
          sed -i "s/^suit3=.*/suit3=$suit3/" CardR.sh
          source Cardg.sh 
          source CardR.sh
          sed -i "s/^rank3=.*/rank3=$rank4/" CardR.sh
          sed -i "s/^suit3=.*/suit3=$suit4/" CardR.sh
          source CardR.sh
          sed -i "s/^rank3=.*/rank3=$rank5/" CardR.sh
          sed -i "s/^suit3=.*/suit3=$suit5/" CardR.sh
          source CardR.sh      
          ((y += 1))
          ;;
        4)
          sed -i "s/^rank3=.*/rank3=$rank3/" CardR.sh
          sed -i "s/^suit3=.*/suit3=$suit3/" CardR.sh
          source Cardg.sh 
          source CardR.sh
          sed -i "s/^rank3=.*/rank3=$rank4/" CardR.sh
          sed -i "s/^suit3=.*/suit3=$suit4/" CardR.sh
          source CardR.sh
          sed -i "s/^rank3=.*/rank3=$rank5/" CardR.sh
          sed -i "s/^suit3=.*/suit3=$suit5/" CardR.sh
          source CardR.sh            
          sed -i "s/^rank3=.*/rank3=$rank6/" CardR.sh
          sed -i "s/^suit3=.*/suit3=$suit6/" CardR.sh
          source CardR.sh
           ((y += 1))    
          ;;
        5)
          echo "cannot hit anymore, limit reached"
          ;;
        *)
          echo "not an option for 'hit'"
          ;;
        esac

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