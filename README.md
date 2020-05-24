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
