#!/bin/bash

draw_card() {
    local rank="$1"
    local suit="$2"

    printf '┌─────────┐\n'
    printf '│ %-7s │\n' "$rank"
    printf '│         │\n'
    printf '│    %s    │\n' "$suit"
    printf '│         │\n'
    printf '│ %7s │\n' "$rank"
    printf '└─────────┘\n'
}

ranks=("A" "2" "3" "4" "5" "6" "7" "8" "9" "10" "J" "Q" "K")
suits=("♥" "♦" "♣" "♠")

x=1


 rank1=${ranks[$RANDOM % ${#ranks[@]}]}
 suit1=${suits[$RANDOM % ${#suits[@]}]}

 rank2=${ranks[$RANDOM % ${#ranks[@]}]}
 suit2=${suits[$RANDOM % ${#suits[@]}]}

 rank3=${ranks[$RANDOM % ${#ranks[@]}]}
 suit3=${suits[$RANDOM % ${#suits[@]}]}

 paste -d ' ' \
    <(draw_card "$rank1" "$suit1") \
    <(draw_card "$rank2" "$suit2") \
    <(draw_card "$rank3" "$suit3")

 ((x+=1))
