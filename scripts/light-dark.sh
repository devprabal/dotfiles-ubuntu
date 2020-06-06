#!/bin/bash
# script to change the theme (also shell theme and icons) according to command line --light or --dark option
#TODO: check for the existence of the themes, icons, Prof-gnome, etc.
#TODO: do for 3 themes - Yaru, Adwaita, and Prof-Gnome
if [ "$1" = "--light" ]
then
	gsettings set org.gnome.desktop.interface gtk-theme 'Prof-Gnome-Light-3.5'
	gsettings set org.gnome.desktop.interface icon-theme 'Papirus-Light'
	gsettings set org.gnome.shell.extensions.user-theme name 'Adwaita-blue-riced-simple'
elif [ "$1" = "--dark" ]
then
	gsettings set org.gnome.desktop.interface gtk-theme 'Prof-Gnome-Dark-3.5'
	gsettings set org.gnome.desktop.interface icon-theme 'Papirus-Dark'
	gsettings set org.gnome.shell.extensions.user-theme name 'Adwaita-blue-dark-simple'
else
	echo "Usage: --light or --dark"
fi

