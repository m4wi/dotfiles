
#!/usr/bin/env sh

# Change Mic State
pactl set-source-mute @DEFAULT_SOURCE@ toggle

mic_status=$(pactl get-source-mute @DEFAULT_SOURCE@ | grep -q "Mute: yes" && echo "muted" || echo "unmuted")
# Send Notification
if [ "$mic_status" == "muted" ]; then
    dunstify -t 1500 -i ~/Downloads/rem.png "(A) Microphone" "Muted"
else
    dunstify -t 1500 -i ~/Downloads/rem.png "(A) Microphone" "Unmuted"
fi
