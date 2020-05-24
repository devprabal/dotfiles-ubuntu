#!/bin/bash	
# nord color scheme for gnome-terminal
nord0="#2E3440" 
nord1="#3B4252" 
nord3="#4C566A" 
nord4="#D8DEE9" 
nord5="#E5E9F0" 
nord6="#ECEFF4" 
nord7="#8FBCBB" 
nord8="#88C0D0" 
nord9="#81A1C1" 
nord11="#BF616A" 
nord13="#EBCB8B" 
nord14="#A3BE8C" 
nord15="#B48EAD"
echo "['$nord1', '$nord11', '$nord14', '$nord13', '$nord9', '$nord15', '$nord8', '$nord5', '$nord3', '$nord11', '$nord14', '$nord13', '$nord9', '$nord15', '$nord7', '$nord6']"

# INSTALL INSTRUCTION 

# 1. Go to dconf editor
# 2. org.gnome.Terminal.Legacy.Profile
# 3. see the profile which you want to edit (hint: see the 'visible-name' in the profile) and edit the 'pallete' with the output of the above echo command.
