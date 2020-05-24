#!/bin/zsh
echo "==========EDITING .zshrc=========="
gedit /home/devpogi/.zshrc >/dev/null 2>&1
cp /home/devpogi/.zshrc /home/devpogi/Documents/rice/dotfiles/
echo "Changes made to .zshrc file in $HOME"
echo -e "Changed file copied to ~rice.\nNow you can go to ~rice and make a commit"
echo "=================================="
/home/devpogi/sourcing-zshrc.sh
