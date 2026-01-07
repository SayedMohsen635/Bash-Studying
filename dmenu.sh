#!/bin/bash
# these scripts are used to switch between folders as specified in value variable #
###################################################################################

# Using dmenu
# value="${HOME}/scripts\n${HOME}/c++\n${HOME}/temppoky"

# select=$(echo -e "$value" | dmenu)

# nautilus "$select" &

# MOST USED #
#############
# Using rofi
value="${HOME}/scripts\n${HOME}/c++\n${HOME}/temppoky"

select=$(echo -e "$value" | rofi -demnu)

nautilus "$select" &

# Using fzf
# value="${HOME}/scripts\n${HOME}/c++\n${HOME}/temppoky"

# select=$(echo -e "$value" | fzf)

# nautilus "$select" &
