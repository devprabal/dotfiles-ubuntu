# TODO

## Works to be done for ricing and improving my workflow

### write about installed softwares, plugins, etc.

- [ ] pygmentize `pygmentize TODO.rice.md`, `pygmentize a.cpp`, where installed `~/.local/lib/python3.8/site-packages`, how to install pip3 install --user Pygments
- [ ] feh
- [ ] msee (via npm) -- not so great
- [ ] gnome firefox look -- not using now
- [ ] not ricing many things, not using many extensions, keeping it raw with minimal tweaks and focusing on codes/development more.

### update or add configs or screenshots

- [ ] gnome-tweaks-screenshots
- [ ] dconf dump 
- [ ] enabled extensions
- [ ] [code section highlights](https://stackoverflow.com/questions/20303826/highlight-bash-shell-code-in-markdown)
- [ ] add `~/.profile` to dotfiles along with `.zsh` and `.bashrc`
- [ ] add in [conda_usage.md](conda_usage.md) the other way to activate env using conda even in zsh by conda init command.

### solve issues

- [x] [avidemux new icons with new Papirus icon theme](avidemux_icon_workaround.md)
- [ ] `nautilus-terminal` not working (installed in `~/.local/lib/python3.8/site-packages`)
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

### github.io (static site for `rice`)

- [ ] static site generate from `.md` files with [fastpages](https://github.com/fastai/fastpages).
- [ ] static site generator with hugo.

### reading

- [ ] github flavoured markdown vs. other markdowns
- [ ] [writing in github flavoured markdown](https://help.github.com/en/github/writing-on-github)
- [ ] markdown rendering engine
- [ ] pandoc tool and its command line utilities
