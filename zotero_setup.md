## Zotero setup and configs

### This guide is for installing the same zotero workflow/environment from the previous computer to a new computer

1. First you need to do this - [copy zotero extracted folder to `~/opt/`](https://www.zotero.org/support/installation#linux)
This can be done with the newly downloaded zotero archive. This does not need to be the same folder from the previous computer.
Finally, you should be able to find the executable in -

`/home/devpogi/opt/Zotero_linux-x86_64/zotero`

Please rename the parent folder of the executable to `Zotero_linux-x86_64` if not already provided from the extracted folder because there are some hardcoded paths in some files.

2. From the previous computer you need to other folders - `Zotero` (present in `~`) and `.zotero` (present in `~`).

3. Copy these folders to `~` in the new computer.

4. This should make the same environment now in your new computer.

5. Your new and old data (pdfs, webpages, resources, etc.) is stored in `~/Zotero/storage` (as it was in the old computer).

6. You can safely update the zotero from inside the app by launching it from terminal as `~/opt/Zotero_linux-x86_64/zotero`

7. Updates will not do anything to the preferences, or data.

8. Run the `~/opt/Zotero_linux-x86_64/set_launcher_icon` script from a terminal to update the .desktop file for that location.

9. Create a symlink `zotero.desktop` into `~/.local/share/applications/` by running the following command in terminal - 

```
ln -s ~/opt/Zotero_linux-x86_64/zotero.desktop ~/.local/share/applications/zotero.desktop
```

10. Avoid doing anything in `/usr/bin` or `/usr/share/applications`

### Changing icon to that provided by Papirus

11. Find papirus icons by `find . -type f -iname '*zotero*' -print` in `~/.icons/Papirus` in terminal.
You will see 6 svg icon names.

12. Copy all these icons to `/home/devpogi/opt/Zotero_linux-x86_64/chrome/icons/default` by similar commands as the one shown below -

```
cp ./48x48/apps/zotero.svg /home/devpogi/opt/Zotero_linux-x86_64/chrome/icons/default/zotero48.svg
```

The terminal is in `~/.icons/Papirus` and the icons are named 48, 32, 22, and so on respectively according to the original icon from papirus.

13. Edit the `zotero.desktop` file in `~/opt/Zotero_linux-x86_64/` and replace the appropriate line with `Icon=/home/devpogi/opt/Zotero_linux-x86_64/chrome/icons/default/zotero64.svg`

14. Now the changed icon will appear in the App Drawer and also you can launch zotero from the App drawer.

### Scaling on HiDPI screens.

15. Zotero follows firefox css styles. So like I once did in firefox to improve scaling (to get bigger text and icons), we have to do the same in zotero (not in firefox now).

16. Open zotero. Go to Edit->Preferences->Advanced->config editor

17. Search for `layout.css.devPixelsPerPx` and set it to 1.4 or whatever suits you.

> [Source: https://forums.zotero.org](https://forums.zotero.org/discussion/comment/351771#Comment_351429)
