#!/bin/bash

values=$(cat "notes.txt")
echo "${values[@]}"

selected_value=$(echo -e "${values[@]}" | rofi -dmenu -p "ADD/RM/SELECT ")
set -x

if [[ "$selected_value" == "ADD" ]]; then
  result=$(rofi -dmenu -p "Enter something")
  echo "You entered: ${result}"
  echo "$result" >>"notes.txt"
elif [[ "$selected_value" == "RM" ]]; then
  /usr/bin/x-terminal-emulator -e "/bin/bash -i -c 'vi notes.txt'"
elif [[ -n $selected_value ]]; then
  xdotool type --delay 10 "$selected_value"
fi
