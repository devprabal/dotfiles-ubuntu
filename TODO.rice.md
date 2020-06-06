# TODO

## Works to be done for ricing and improving my workflow

### write about installed softwares, plugins, etc.

- [ ] pygmentize `pygmentize TODO.rice.md`, `pygmentize a.cpp`, where installed `~/.local/lib/python3.8/site-packages`, how to install pip3 install --user Pygments
- [ ] feh
- [ ] msee (via npm) -- not so great
- [ ] gnome firefox look -- not using now
- [ ] not ricing many things, not using many extensions, keeping it raw with minimal tweaks and focusing on codes/development/research more.
- [ ] gnome-sushi
- [ ] [battery wallpaper](https://github.com/adi1090x/battery-wallpaper)
- [ ] OneTab firefox addon configuration, since it cannot be saved? Or can it be? See in profiles folder of mozilla?
- [ ] snap install netron for visualizing neural networks.
- [ ] `flatpak ps` to view running flatpak processes
- [ ] `flatpak override --filesystem=~/.themes` for flatpak apps to follow themes installed in (`~/.themes`) instead of Yaru or Adwaita. `cd /var/lib/flatpak/overrides` to see the changes in file `global`.
- [ ] Write about useful commands in [commands.md](commands.md).
- [ ] draculatheme [for gnome-terminal, gedit, pygmentize](https://draculatheme.com/) also write about dropping the class file of dracula into pygments/style subpackage for using dracula style
- [ ] .dir_colors in ~, installed during dracula-gnome-theme as an optional utility. But it is good and customizable.

### update or add configs or screenshots

- [ ] gnome-tweaks-screenshots
- [ ] dconf dump 
- [ ] enabled extensions
- [ ] [code section highlights](https://stackoverflow.com/questions/20303826/highlight-bash-shell-code-in-markdown)
- [ ] add `~/.profile` to dotfiles along with `.zsh` and `.bashrc`
- [ ] add in [conda_usage.md](conda_usage.md) the other way to activate env using conda even in zsh by conda init command.

### solve issues

- [x] [avidemux new icons with new Papirus icon theme](avidemux_icon_workaround.md)
- [ ] `nautilus-terminal` not working (installed in `~/.local/lib/python3.8/site-packages`) Issue has been solved in a reply on github. Just need to install `python3-nautilus` because I installed it with pip3.
- [ ] need to source `~/.profile` for each new terminal window for `npm` and `node` packages. Also the `node-modules` dir has many directories corresponding to installed packages, which are not on PATH, how to include node-modules on PATH such that the bin folders of the modules get automatically included. The directory structure looks like - 

```console
~/.local/bin
			├── node_modules
			│   ├── abbrev
			│   ├── ansicolors
			.	.
			.	.
			.	.	
			│   ├── marked
			│   ├── msee
				│   ├── bin
				│   ├── Example.md
				.   .
				.	.
				.	.
				│   └── test.md
				.
				.
				.
```
- [ ] sourcing of .zshrc in sourcing-zshrc.sh is not working, try it by modifying named directories.
- [ ] Change font color in dashToPanel by [custom color workaround for indicator icons, clock, date in dashToPanel extension] (https://github.com/home-sweet-gnome/dash-to-panel/issues/727)
- [ ] installed (by `apt`) libgtk-3-dev, meson, sassc for generating css files from Adwaita scss files in `~/.themes`. Do they need to be removed or leave them as they are for one day when I make my first GTK app?
- [ ] gnome-shell ricing with sassc (scss) for Adwaita-blue-riced, fix workspace column round border, running app background color on dash. Take screenshots and post to r/unixporn.

### try something new

- [ ] make a script to add items to this `TODO.rice.md` from terminal. Something like -
```console
$ edit_todo --list_sections TODO.rice.md

Sections are - 
1. write about installed softwares, plugins, etc.
2. update or add configs or screenshots
3. solve issues
4. try something new
5. github.io (static site for `rice`)
6. reading

$ edit_todo --append 3 "add completed flag to cross-out completed tasks in the TODO.rice.md file"

Changes made to section 3. solve issues -

solve issues

- [ ] [avidemux new icons with new Papirus icon theme](TODO-avidemux_icon_workaround.md)
- [ ] add completed flag to cross-out completed tasks in the TODO.rice.md file

$
```

- [x] [Gnome firefox look](https://github.com/rafaelmardojai/firefox-gnome-theme)
- [ ] custom icon pack from many different icon packs, [reddit comment](https://www.reddit.com/r/Ubuntu/comments/g9rg7r/unity_on_2004_is_smoother_than_you_would_think/foxshh9?utm_source=share&utm_medium=web2x).
- [ ] Bash Script for battery with acpi is incomplete. Add to startup, fix sleep starting its own pid, fix PID number of the script to assist in killing it.
- [ ] For bigger font and symbolic icon size of datetime and battery on panel edit the following lines to gnome-shell.css of the shell theme you are using (`~/.themes/mytheme/gnome-shell/gnome-shell.css`). Find a way to improve visual effect (maybe drawing a box) on hover. Done. See the changed css file having "edited by me"  comment.

```
#panel .panel-button {

  font-weight: bold;
  color: white;
  font-size: 21px;
```

- [ ] Make a script to add commands to [commands.md](commands.md).
- [ ] Make something, maybe a bot, to manage all saved items in telegram and Info in WhatsApp together and consistently. It must also be able to search through it.
- [ ] Zotero first major task offloading research has left so many files to read again, some of which are codes help, latex help, rl, etc. Something like a kerko app can be made to view and search through this archive, henceforth named as big bang.

### github.io (static site for `rice`)

- [ ] static site generate from `.md` files with [fastpages](https://github.com/fastai/fastpages).
- [ ] static site generator with hugo.

### reading

- [ ] github flavoured markdown vs. other markdowns
- [ ] [writing in github flavoured markdown](https://help.github.com/en/github/writing-on-github)
- [ ] markdown rendering engine
- [ ] pandoc tool and its command line utilities
- [ ] watch zathura workflow video on [youtube](https://www.youtube.com/watch?v=OC8FZW56MEc)
- [ ] sofiaben's [dotfiles](https://github.com/sofiabelen/dotfiles)
