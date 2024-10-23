
#!/usr/bin/env sh

packages=$(paru -Qu | wc -l)

dunstify -t 1500 -i ~/Downloads/rem.png "(A) Updates" "$packages updates"
