#!/bin/bash
#this is the starter cards, the cards to be delt is in another file
rank1=J
suit1=♦
rank2=K
suit2=♠

#variables go above from BlackJack.sh

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

#pastes the cards next to eachother
 paste -d ' ' \
    <(draw_card "$rank1" "$suit1") \
    <(draw_card "$rank2" "$suit2")

