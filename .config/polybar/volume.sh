#!/bin/bash

# Get Master volume and mute state
VOL=$(amixer get Master | awk -F'[][]' 'END{ print $2 }')
MUTE=$(amixer get Master | awk -F'[][]' 'END{ print $4 }')

if [ "$MUTE" = "off" ]; then
    ICON="婢"
else
    ICON=""
fi

# Output without trailing newline
printf "%s %s" "$ICON" "$VOL"

