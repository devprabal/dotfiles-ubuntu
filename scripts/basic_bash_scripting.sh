#!/bin/bash
eval "echo 2.4+1 | bc"
echo "NO of arguments = $#"
if [ -e $1 ]
then 
echo yes
else
echo no
fi
if [ -z $2 ]
then echo empty
else echo not empty
fi
if [ "$3" = "" ]
then echo third positional arg empty
else
echo third positional arg not empty
fi
# head -n 12 hi.txt | tail -n $(( 12 -5+1 )) 5 to 12 lines
var1=$(which python3)
if [ "$var1" != "" ]
then echo found; echo $var1
else
echo notfound
fi
dialog --backtitle "back" --title "title" --infobox "info" 10 20
echo -e "\033[0;31m fi"
read -p "enter" varname
echo $varname
