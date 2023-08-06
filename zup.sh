#!/usr/bin/env bash

#File location /home/username/.local/bin/zup.sh
#and MUST be run from the zup.desktop file to
#open and run in Konsole from a shortcut.
#NOTE: you must edit the username in the path
#to match yours in this file and the properties
#for the .desktop file that links to it.

# added color to the echo lines

echo
echo -e "\033[1;31m****Updating all System packages****\033[0m" "\n" # the "\n" adds a blank line
sudo zypper dist-upgrade
echo
echo -e "\033[1;31m****Updating Flatpaks from FlatHub****\033[0m" "\n" # the "\n" adds a blank line
flatpak update
echo
echo -e "\033[1;32m****Script Completed!****\033[0m" "\n" # the "\n" adds a blank line

#This keeps the window open till you are sure you
#you are ready to close it. Comment this out and
#it will close automatically.

echo
read -n 1 -r -s -p "Press any key to EXIT"
echo "\ncool"
exit 0;


# Color References for convenience
# Reset
# \e[0;0m | NoColor
# Regular Colors

# Value    | Color
# -------- | -----
# \e[0;30m | Black
# \e[0;31m | Red
# \e[0;32m | Green
# \e[0;33m | Yellow
# \e[0;34m | Blue
# \e[0;35m | Purple
# \e[0;36m | Cyan
# \e[0;37m | White

# Bold

# Value    | Color
# -------- | -----
# \e[1;30m | Bright Black
# \e[1;31m | Bright Red
# \e[1;32m | Bright Green
# \e[1;33m | Bright Yellow
# \e[1;34m | Bright Blue
# \e[1;35m | Bright Purple
# \e[1;36m | Bright Cyan
# \e[1;37m | Bright White
