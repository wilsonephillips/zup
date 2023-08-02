#!/usr/bin/env bash

#File location /home/username/.local/bin/zup.sh
#and MUST be run from the zup.desktop file to
#open and run in Konsole from a shortcut.
#NOTE: you must edit the username in the path
#to match yours in this file and the properties
#for the .desktop file that links to it.

echo "****Updating all System packages****"
sudo zypper dist-upgrade
echo "****Updating Flatpaks from FlatHub****"
flatpak update
echo "****Script Completed!****"

#This keeps the window open till you are sure you
#you are ready to close it. Comment this out and
#it will close automatically.
read -n 1 -r -s -p "Press any key to EXIT..."
echo "\ncool"
exit 0;
