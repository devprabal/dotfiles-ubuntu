# TODO for awesome WM

## Essential

[ ] battery discharges when left, no sleep.
[x] no lock, no prompting of password when opened.
[ ] battery indicator
[ ] volume indicator
[ ] brightness indicator
[ ] network indicator
[ ] night light
[x] rofi for application launcher
[ ] keybindings for volume buttons, and for brightness
[ ] how to yank and paste or kill and paste in vim from other apps?
[ ] firefox and terminal in floating mode, if only terminal is opened, else leave firefox in maximized mode.
[ ] screen flickering on scrolling (in firefox), fix it. --> will be fixed by compton (probably)
[ ] keyboard backspace speed --> will be fixed by compton (probably)
[x] when changed `/usr/share/X11/xorg.conf.d/20-intel.conf`, then `~/.xsessionrc` stopped working. --> **fixed in `/usr/share/X11/xorg.conf.d/40-` and removed `~/.xsessionrc`.**
[ ] change gtk theme to something that fits the awesome-theme (with pywall gui wpgtk, source1? ; lxappearance, source2) [Source 1, JavaCafe01](https://github.com/JavaCafe01/dotfiles#system-info) [Source 2, the glorious dotfiles](https://github.com/manilarome/the-glorious-dotfiles/wiki/How-Tos)
[ ] password via `lua-pam` on lock screen instead of the custom plain text password which is now being used. [Elenapan dotfiles](https://github.com/elenapan/dotfiles/wiki/Advanced-setup).
[ ] what is the keybinding for last focused window ?
[ ] implement exit screen (having poweroff, reboot, logout, suspend) which is separate from lock screen. Implement it using rofi from u/adi and u/juker (having rofi appear from side).
[x] NOT USING NOW. `xscreensaver` has been added to `~/.xinitrc` which seems like is the standard/traditional way of starting applications at startup. [arch wiki](https://bbs.archlinux.org/viewtopic.php?pid=640418#p640418). `no-splash` option doesn't show the splash screen when `xscreensaver` starts. (a splash screen is the startup screen which comes while lauching an application which 
has such support, example spyder, gimp, libreOffice, etc.)
[x] Apparently, `gdm3` doesn't look for `~/.xinitrc` (i think so) so `xscreensaver` has been added to `~/.xprofile` [arch wiki](https://wiki.archlinux.org/index.php/Xprofile)


## Optional

[ ] configure `xscreensaver` for themes, time, startup etc. Read manpage to configure. (what is xscreensaver-gl?) [help in configuration, etc. arch wiki](https://wiki.archlinux.org/index.php/XScreenSaver). Prefer to use either the blurred background (by compton? or by `convert -blur`?) or one screensaver-art only which supports fullscreen.
[ ] another login manager?
[ ] gtk file picker to replace with something native to awesome?
[ ] manage dotfiles (dotbare?)
[ ] where is trash and how to delete its contents?
[ ] change icon theme in `.Xresources` to `capitaine` or `oreo`.
[ ] use dbus instead of spawn in awesome [becuase awesome in single threaded](https://pavelmakhov.com/2015/09/fix-awesome-freezes/), check also if `awful.util.easy_spawn_with_shell` already does the dbus thing in `awesome 4.3`.
[ ] adapt to the keybindings of **Elenapan**. They feel natural and logical.
[ ] use compton to avoid blocking and faster input events or scrolling. Compton will offload the drawing away from awesome.
[ ] show only non-empty tags. [faq, awesome](https://awesomewm.org/apidoc/documentation/90-FAQ.md.html)
[ ] cursor speed
[ ] I accidently discovered that <kbd>Super</kbd>+<kbd>f</kbd> hides the top panel. Or does it do a fullscreen to the running window? I think it does full screen.
[ ] what is the standard way of starting applications at startup? What are the differences between `.xinitrc` and `.xprofile`? Are they different only because of display managers? (Like gdm3 doesn't like `.xinitrc`).
[ ] configure and beautify rofi.