# links to help while configuring awesome WM

## awesome documentation 

[2018, new](https://awesomewm.org/apidoc/index.html)


## ~/.Xresources

[Find and change system dpi](https://askubuntu.com/questions/197828/how-to-find-and-change-the-screen-dpi)

[Cursor size and theme ](https://wiki.archlinux.org/index.php/Cursor_themes)

## NOT USING NOW ~/.xsessionrc


[Touchpad settings, natural scrolling and tap to click](https://askubuntu.com/questions/403113/how-do-you-enable-tap-to-click-via-command-line)

## /usr/share/X11/xorg.conf.d/40-libinput.conf 
 
[Touchpad settings, natural scrolling and tap to click](https://bbs.archlinux.org/viewtopic.php?id=232862)
- see `man xorg.conf` to help in setting up tap to click and natural scrolling
- see `man libinput` for option like `NaturalScrolling` and `Tapping`

```
Section "InputClass"
    Identifier "Touchpad"
    MatchIsTouchpad "on"
    Driver "libinput"
    Option "Tapping" "on"
EndSection

Section "InputClass"
    Identifier "Touchpad"
    MatchIsTouchpad "on"
    Driver "libinput"
    Option "NaturalScrolling" "on"
EndSection
```

## /usr/share/X11/xorg.conf.d/20-intel.conf

[backlight with xbacklight and intel_backlight](https://askubuntu.com/questions/762764/cant-change-brightness-since-ubuntu-16-04-lts)

[stackoverflow: other links for brightness control](https://unix.stackexchange.com/questions/481490/no-outputs-have-backlight-property-but-xorg-conf-is-configured-and-xbacklight)

[arch wiki: other links for brightness control](https://wiki.archlinux.org/index.php/Backlight)

```
Section "Device"
        Identifier  "card0"
        Driver      "intel"
        Option      "Backlight"  "intel_backlight"
        BusID       "PCI:0:2:0"
EndSection
```

## ~/.config/awesome/

[in rc.lua, for brightness keybindings](https://askubuntu.com/questions/96662/brightness-control-on-awesome-windowing-manager)

## /usr/share/X11/xorg.conf.d and /etc/X11/xorg.conf.d

[for future reference on how to create a `xorg.conf.d` dir in /etc/X11/ using `X -configure`](https://askubuntu.com/questions/4662/where-is-the-x-org-config-file-how-do-i-configure-x-there)


## xev

`xev` to show the keycodes for certain media keys and other keys whose names are
not certain like `XF86AudioRaiseVolume` is for Volume Increase key (F8, on my laptop).


## current (default, when not modified) keybindings

Keybindings can be shown by <kbd>Super</kbd>+<kbd>s</kbd>. They can also be seen in the manpage of awesome `man awesome`.

## Rofi

Change the `terminal`, `run-shell-command` options in `~/.config/rofi/config.rasi`.
Open rofi and type command followed by <kbd>Shift</kbd>+<kbd>Enter</kbd>.
This will open up a new terminal and wait unless a key is pressed. 
[Execute_shell_commands_from_rofi](https://wiki.archlinux.org/index.php/Rofi#Execute_shell_commands_from_rofi)

## I think this is my first real power usage of the command line

I needed to copy all the dot files but exclude the **directories** starting with `.`
I was in `~/Documents/rice/dotfiles` which has `./home/config`. Also, all the files were dotfiles.

```bash
cp -r $(ls -ap | grep -v /) home/
```


