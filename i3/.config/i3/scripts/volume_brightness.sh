#!/bin/bash
# original source: https://gitlab.com/Nmoleo/i3-volume-brightness-indicator

# See README.md for usage instructions
bar_color="#7f7fff"
volume_step=1
brightness_step=5
max_volume=100
max_brightness=255
notification_timeout=1000

# Uses regex to get volume from pactl
function get_volume {
  pactl get-sink-volume @DEFAULT_SINK@ | grep -Po '[0-9]{1,3}(?=%)' | head -1
}

# Uses regex to get mute status from pactl
function get_mute {
  pactl get-sink-mute @DEFAULT_SINK@ | grep -Po '(?<=Mute: )(yes|no)'
}

# Uses regex to get brightness from xbacklight
function get_brightness {
  raw_brightness=$(brightnessctl g)
  max_brightness=$(brightnessctl m)
  echo $((raw_brightness * 100 / max_brightness))
}

# Returns a mute icon, a volume-low icon, or a volume-high icon, depending on the volume
function get_volume_icon {
  volume=$(get_volume)
  mute=$(get_mute)
  if [ "$volume" -eq 0 ] || [ "$mute" == "yes" ]; then
    volume_icon=""
  elif [ "$volume" -lt 50 ]; then
    volume_icon=""
  else
    volume_icon=""
  fi
}

# Always returns the same icon - I couldn't get the brightness-low icon to work with fontawesome
function get_brightness_icon {
  brightness_icon=""
}

# Displays a volume notification using notify-send
function show_volume_notif {
  volume=$(get_volume)
  get_volume_icon
  notify-send -i audio-volume-muted -t $notification_timeout "Volume" "$volume_icon $volume%" -h int:value:$volume -h string:x-canonical-private-synchronous:volume
}

# Displays a brightness notification using dunstify
function show_brightness_notif {
  brightness=$(get_brightness)
  echo $brightness
  get_brightness_icon
  notify-send -i audio-volume-muted -t $notification_timeout "Brightness" "$brightness_icon $brightness%" -h int:value:$brightness -h string:x-dunst-stack-tag:brightness_notif
}

# Main function - Takes user input, "volume_up", "volume_down", "brightness_up", or "brightness_down"
case $1 in
volume_up)
  # Unmutes and increases volume, then displays the notification
  pactl set-sink-mute @DEFAULT_SINK@ 0
  volume=$(get_volume)
  if [ $(("$volume" + "$volume_step")) -gt $max_volume ]; then
    pactl set-sink-volume @DEFAULT_SINK@ $max_volume%
  else
    pactl set-sink-volume @DEFAULT_SINK@ +$volume_step%
  fi
  show_volume_notif
  ;;

volume_down)
  # Raises volume and displays the notification
  pactl set-sink-volume @DEFAULT_SINK@ -$volume_step%
  show_volume_notif
  ;;

volume_mute)
  # Toggles mute and displays the notification
  pactl set-sink-mute @DEFAULT_SINK@ toggle
  show_volume_notif
  ;;

brightness_up)
  # Increases brightness and displays the notification
  brightnessctl set ${brightness_step}%+
  ddcutil setvcp 10 + ${brightness_step}
  show_brightness_notif
  ;;

brightness_down)
  # Decreases brightness and displays the notification
  brightnessctl set ${brightness_step}%-
  ddcutil setvcp 10 - ${brightness_step}
  show_brightness_notif
  ;;
esac
