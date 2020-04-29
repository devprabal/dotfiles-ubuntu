### avidemux icon not following papirus icon

``` 
$ cd ~/.icons/Papirus
$ find . -type f -iname '*avidemux*' -print`
```

The above command will show the icons if they exist by the name having subscript as avidemux or not.

The output comes out to be like - (as of Apr 21, 2020, from gnome-look.org, not from master on github)

```

./48x48/apps/avidemux.svg
./22x22/apps/avidemux.svg
./32x32/apps/avidemux.svg
./24x24/apps/avidemux.svg
./64x64/apps/avidemux.svg
./16x16/apps/avidemux.svg

```

Now cat the desktop file for avidemux.

`$ which avidemux` doesn't work because its name is `avidemux2.7_qt5`

`$ which avidemux2.7_qt5` will show in `/usr/bin/avidemux2.7_qt5`

```
$ cd /usr/share/applications/
$ sudo gedit avidemux2.7_qt5.desktop

```

Edit the line which has `Icon=avidemux_icon` to `Icon=avidemux`

Logut and login. Now the icon will follow papirus style in the App drawer.

A better workaround would have been to manually generate symlink and new icons that symlink to the already existing icons by following their [guide](https://github.com/PapirusDevelopmentTeam/papirus-icon-theme/tree/master/tools/work#make-symlinks-to-an-existing-icon). For this, you would need to clone the repo and follow the steps mentioned in the link.

---

However, this is a temporary workaround till the master gets released on [gnome-look](gnome-look.org).

I have alreaady opened an issue for this on their [github page](https://github.com/PapirusDevelopmentTeam/papirus-icon-theme/commit/b7744c16e6ce6dc47df4e7ec5ea8f922722c7466) and the issue has also been solved and closed by symlinking a new `avidemux_icon` to `avidemux.svg`

So that will solve the issue without the workaround described above.

Also, when the new changes get on gnome-look, download that new icon set and replace the old ones in `~/.icons`.

Also, edit the the line which has `Icon=avidemux` to `Icon=avidemux_icon` in `/usr/share/applications/avidemux2.7_qt5.desktop`.
