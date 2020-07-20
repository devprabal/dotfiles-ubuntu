## The appearance, theme, colorscheme of apps on my desktop *Pavi* (Ubuntu)

> The first enty in each tells the current setup. Rest show alternatives that are pleasing and/or have been used in the past.


### Ah! the tweaks

See [gnome-tweaks](tweaks.md)

### And the extensions

See [gnome-shell extensions](gnome-shell-extensions.md)

---

### Telegram

- Now using [this purple theme - Stas](https://t.me/themes/132)
	- Check the "Tile background option" in the settings.
- Normal light theme with Pavi color (#881798).story
- [dracula theme](https://draculatheme.com/telegram)
- [This purple island theme is also good](https://t.me/themes/174)

---

### gedit

- Now using the default **Solarised-Light** theme provided with the distribution.
- [dracula theme](https://github.com/dracula/gedit)

---

### gnome-terminal

- [dracula theme](https://draculatheme.com/gnome-terminal)
- [nord theme](https://github.com/arcticicestudio/nord-gnome-terminal) | [install instructions](scripts/nord-colors for terminal.sh)

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

### VSCode

- **Light+** default theme provided with the distribution
	-	[Material Icon Theme](https://marketplace.visualstudio.com/items?itemName=PKief.material-icon-theme)

- [dracula theme](https://draculatheme.com/visual-studio-code)
- **Dark+** default theme

---

### pygmentize

- [dracula theme](https://draculatheme.com/pygments)

Installation for pygments -
(This is different from that mentioned in the website. This is what I did.)
>  For example, if your style should be called "mondrian", name the class MondrianStyle, put it into the file mondrian.py and this file into the pygments.styles subpackage directory. 

[Source: pygments docs](https://pygments.org/docs/styles/)

The git dir which is cloned from the [draculatheme for pygments](https://draculatheme.com/pygments) has a python file `dracula.py` which has a class `DraculaStyle`. Just copy that into `~/.local/lib/python3.8/site-packages/pygments/styles` because I have installed Pygments using `pip3 install --user Pygments`.

---

### Zathura

[my configuration](dotfiles/zathurarc)

---

### Make flatpaks to follow user theme and cursors.

See [flatpak override theme.md](flatpak%20override%20theme.md)

---

### App not using Papirus Icons

See [this](avidemux_icon_workaround.md) to solve the issue with any other app in a similar way.

---

### Make Zotero show up in App Launcher/desktop entry, use papirus icon theme and scale for HiDPI screens

See [Zotero_setup.md](zotero_setup.md)

---

### Increase Grub font size

```bash
sudo grub-mkfont --output=/boot/grub/fonts/Hack24.pf2 --size=24 /home/devpogi/.fonts/Hack\ Regular\ Nerd\ Font\ Complete.ttf
```

where the output file name can be anything, and I have placed it inside the fonts dir in the grub dir. The Hack Nerd Font from `~/.fonts/` is used as input font.

Then, edit `/etc/default/grub` and add the following line to it - 

```bash
GRUB_FONT=/boot/grub/fonts/Hack24.pf2
```

---

### Change TTY (1,2,3, etc.) font size for better readability on HiDPI screens

`sudo dpkg-reconfigure console-setup`. This will ask you about the font and size to be set in it TUI (terminal user interface).

I have set the `FONTFACE` and `CODESET` to *let system decide* or **"guess"** . The `FONTSIZE` is set to `12x24` and `CHARMAP` to **"UTF-8"**.

The default configuration can be found in `/etc/default` with file name `console-setup`. The changes will reflect in the same file.

I don't know what it was saying about the `framebuffer` stuff, I did set a size `12x24` which requires framebuffer. And to my satisfaction, it works out of the box, with no other dependencies/configs to be installed along-side.

[Source, stackoverflow](https://unix.stackexchange.com/questions/49779/can-i-change-the-font-of-the-text-mode-console)

---

### 
