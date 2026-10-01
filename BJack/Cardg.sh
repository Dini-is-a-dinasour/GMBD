#!/bin/bash

rank1=J
suit1=♣
rank2=J
suit2=♣
rank3=6
suit3=♦

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


 paste -d ' ' \
    <(draw_card "$rank1" "$suit1") \
    <(draw_card "$rank2" "$suit2") \
    <(draw_card "$rank3" "$suit3")

