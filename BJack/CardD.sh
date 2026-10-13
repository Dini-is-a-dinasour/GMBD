#!/bin/bash

#this is the starter cards, the cards to be delt is in another file

draw_dealer() {
    local rank="$1"
    local suit="$2"

    # Hidden card
    printf '        ┌─────────┐\n'
    printf '        │░░░░░░░░░│\n'
    printf '        │░░░░BJ░░░│\n'
    printf '        │░░░░░░░░░│\n'
    printf '        │░░░cards░│\n'
    printf '        │░░░░░░░░░│\n'
    printf '        └─────────┘\n'

    # Move back up 7 lines
    printf '\033[7A'

    # Visible card
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


#shown cards from dealer
 rankD=${ranks[$RANDOM % ${#ranks[@]}]}
 suitD=${suits[$RANDOM % ${#suits[@]}]}

  #hidden card for dealer var
 rankH=${ranks[$RANDOM % ${#ranks[@]}]}
 suitH=${suits[$RANDOM % ${#suits[@]}]}

 paste -d ' ' \
   <(draw_dealer "$rank1" "$suit1")