#!/usr/bin/env bash

if [ "$DUNST_BODY" != "^Volume" ] && [ "$DUNST_BODY" != "^Brightness" ]; then
  paplay /usr/share/sounds/freedesktop/stereo/audio-volume-change.oga --volume=35536 &
# elif [ "$DUNST_BODY" = "^Battery low" ]; then
#   paplay ~/.local/share/sounds/low_batt.ogg
# elif [ "$DUNST_URGENCY" = "critical" ]; then
#   paplay ~/.local/share/sounds/notify2.ogg
else
  paplay /usr/share/sounds/freedesktop/stereo/bell.oga --volume=35536 &
fi
