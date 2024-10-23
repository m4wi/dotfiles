#!/usr/bin/env sh

pactl set-sink-mute @DEFAULT_SINK@ toggle

mic_status=$(pactl get-sink-mute @DEFAULT_SINK@ | grep -q "Mute: yes" && echo "muted" || echo "unmuted")

# Invierte el estado del micrófono
if [ "$mic_status" == "muted" ]; then
    dunstify -t 1500 -i ~/Downloads/rem.png "(A) Microphone" "Muted"
else
    dunstify -t 1500 -i ~/Downloads/rem.png "(A) Microphone" "Unmuted"
fi
