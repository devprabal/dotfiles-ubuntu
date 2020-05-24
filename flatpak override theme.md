### Make flatpak apps to follow user theme and cursor icons

When using flatpak apps, you may notice that the apps do not sometimes follow the system or user installed theme.

This is not noticeable when you are already using a theme for which flatpak has a theme-extension, example Yaru, Adwaita.

`$ flatpak list` will show something like this if Yaru theme is installed by flatpak automatically for its apps.
```
Yaru-light Gtk Theme                         org.gtk.Gtk3theme.Yaru-light                                          3.22        system
```

But this may be noticeable for which the proper theme extension is not automatically installed by default by flatpak for example Layan, etc. If you want to make it working for other themes, [do this method form Baby Wogue's video. But do this method with `--user` option.](https://www.youtube.com/watch?v=S6KkQrlQnbI)

For cursor themes, follow similar method -

Let us suppose that `org.telegram.desktop` (Telegram flatpak name) doesn't follow the Oreo cursors (Oreo cursor is installed under `/home/devpogi/.icons/oreo_blue_cursors`)
Now, do the following in the terminal (doesn't require sudo) -

```
flatpak --user override org.telegram.desktop --filesystem=/home/$USER/.icons/:ro
```
Open telegram app again, now you will see that the app follows oreo cursors.

The changes made by the above command are saved in `/home/devpogi/.local/share/flatpak/overrides/org.telegram.desktop` file.

> [Source: Github issue: Different cursor theme in flatpak apps](https://github.com/flatpak/flatpak/issues/709)

You can find the data of the flats (flatpak apps) installed in `~/.var/app`
> [Source: Github issue: Where do the configuration, profiles, or settings of Flatpak packages live?](https://github.com/flatpak/flatpak/issues/1214)

