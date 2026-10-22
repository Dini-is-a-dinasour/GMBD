#!/bin/bash
#this is the rest of the cards
rank3=K
suit3=♠


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
    <(draw_card "$rank3" "$suit3")

