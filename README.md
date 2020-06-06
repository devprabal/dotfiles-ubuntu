# Linux ricing

> The old configs have been moved [here.](https://github.com/devprabal/rice/blob/master/old/README.md)

> Most of the setups/tricks/configs/extensions/tweaks from the old still do work.

> If you are new to ricing, I suggest you to start by implementing/reading the old [`README.md`](https://github.com/devprabal/rice/blob/master/old/README.md) file because most of the new setups have been taken from the old and built/modified upon it or are a minimal version of the old with new workflow styles.

---

However, I am setting up fresh installs and setups on my *Pavi* (Pavilion15 cx0140tx).

![Basic System Overview](appearance/neofetch_24May2020.png)
*About Pavi, by [neofetch](https://github.com/dylanaraps/neofetch)*



These are the newly learned things or new setups - 

---

### Make flatpaks to follow user theme and cursors.

See [flatpak override theme.md](flatpak%20override%20theme.md)

---

### `conda init` command, if not using bash

If your **$SHELL** `echo $SHELL`  is not  bash, then the conda package manager (of anaconda) may not get initiated for that particular shell, say for example zsh.

conda, by default, places its initialization script in `~/.bashrc`.

So `conda` in zsh will say `zsh: command not found: conda`.

**Workaround** - 

DO NOT source `.bashrc` at the end of `.zshrc` because I have found it makes zsh loading slow.

You can open a bash session in zsh by typing `$ bash` and then run conda commands. 

OR (recommended)

`conda init zsh`

See `conda init --help`  for more.

---

### Deactivate auto-start of conda on launching a terminal

If you'd prefer that conda's base environment not be activated on startup, set the **auto_activate_base** parameter to false:

`conda config --set auto_activate_base false`

---

### Make Zotero show up in App Launcher/desktop entry, use papirus icon theme and scale for HiDPI screens

See [Zotero_setup.md](zotero_setup.md)

---

### App not using Papirus Icons

See [this](avidemux_icon_workaround.md) to solve the issue with any other app in a similar way.

---

### VSCode sync

Settings, configurations, extensions for VSCode is synced by the following VSCode extension -

[Settings sync](https://marketplace.visualstudio.com/items?itemName=Shan.code-settings-sync)

It saves your settings, etc. in your github gist from which they can be downloaded on a new system or fresh install.

---

### Ah! the tweaks

See [gnome-tweaks](tweaks.md)

### And the extensions

See [gnome-shell extensions](gnome-shell-extensions.md)

---

### Zathura

A minimal and vim-like pdf viewer which is light and extremely configurable.

The configuration file for zathura has to be set up in `~/.config/zathura/` as `zathurarc` which is a plain text file which is read by zathura line by line (# comment lines ignored). 

The documentation provides ways to set up colors, window sizes, etc.

See [documentation - zathura](https://pwmt.org/projects/zathura/documentation/)

See [documentation - girara, where you can set window sizes, etc.](https://pwmt.org/projects/girara/options/)

[my configuration](dotfiles/zathurarc)

---

### Dracula colorscheme

Recently, I have been trying out dracula color scheme for many apps. This is because they look vivid and clear, not because I am a fan of dark-themes, which I am not.

However, I have the following apps/programs using this colorscheme - 

- gnome-terminal
- VSCode (Switched to inbuilt light-theme Light+ again)
- gedit (Switched to Solarised again)
- telegram
- pygmentize

All the ports and instructions for installation can be found on the official [website](https://draculatheme.com/).

Installation for pygments -
(This is different from that mentioned in the website. This is what I did.)
>  For example, if your style should be called "mondrian", name the class MondrianStyle, put it into the file mondrian.py and this file into the pygments.styles subpackage directory. 
> 
[Source: pygments docs](https://pygments.org/docs/styles/)

The git dir which is cloned from the [draculatheme for pygments](https://draculatheme.com/pygments) has a python file `dracula.py` which has a class `DraculaStyle`. Just copy that into `~/.local/lib/python3.8/site-packages/pygments/styles` because I have installed Pygments using `pip3 install --user Pygments`.

---

### Commandline 

I have written some frequently used and important (and easily forgettable) commands [here](commandline.md).

---

### PS1

I changed my PS1 (in `.bashrc` file) to the following - 

```bash
PS1=$'\\[\e[1;37m\\]\uf31b \w \\[\e[0m\\]\\[\e[0;32m\\]\uf155\\[\e[0m\\] '
```

For this to work, you must have encoding as UTF-8 enabled in gnome-terminal, and the font which it uses should be [Hack Nerd Font](https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/Hack/Regular/complete/Hack%20Regular%20Nerd%20Font%20Complete.ttf)

You can write `\uABCD` for unincode represented by `ABCD` in the `$'.....'` expression. 

[Source: stackoverflow](https://unix.stackexchange.com/questions/25903/awesome-symbols-and-characters-in-a-bash-prompt)

[Source: nixcraft](https://www.cyberciti.biz/tips/howto-linux-unix-bash-shell-setup-prompt.html)

For searching glyphs/icons and their unicode pattern use the website [nerdfornts.com/cheat-sheet](https://www.nerdfonts.com/cheat-sheet).

`\e` represent `033` escape character.

`\w` represents the full path of working dir.

`\\[\e[1;37m\\]` represents a color/bold/highlight/underline etc. which can be looked up from [stackoverflow](https://stackoverflow.com/questions/5947742/how-to-change-the-output-color-of-echo-in-linux/#answer-28938235)

---

### Anki 

Still not used, just installed. 

---

### Celluloid 

I was installing [mpv](https://github.com/mpv-player/mpv-build) from git-master but couldn't. 

Somehow, I stumbled upon gnome-mpv, now renamed to celluloid, which is a GTK+ frontend of mpv, built on mpv. So, I installed that from flathub.

I have still not experimented/played-around with it. 

---

### 
