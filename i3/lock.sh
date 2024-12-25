#!/bin/bash
# Lock the screen
i3lock \
    --inside-color=00000000 \
    --ring-color=ffffff00 \
    --line-color=00000000 \
    --keyhl-color=ff0000ff \
    --bshl-color=ff0000ff \
    --ringver-color=00ff00ff \
    --ringwrong-color=ff0000ff \
    --verif-text="Verifying..." \
    --wrong-text="Wrong!" \
    --time-color=ffffffff \
    --date-color=ffffffff \
    --time-font="monospace" \
    --date-font="monospace" \
    --time-size=48 \
    --date-size=24 \
    --indicator \
    --clock \
    --force-clock
