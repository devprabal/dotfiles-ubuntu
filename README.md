**Theme** - Yaru light

**Shell theme** - default, Yaru

**Cursors** - [Capitaine light](https://www.gnome-look.org/p/1148692/startdownload?file_id=1551970626&file_name=capitaine-cursors-light-r3.tar.gz&file_type=application/x-gzip&file_size=436027), (Bibata is also a good choice)


**Icon theme** - [Papirus-Light](https://www.gnome-look.org/p/1166289/)

To change folder color (for all folders), [install papirus-folders](https://github.com/PapirusDevelopmentTeam/papirus-folders)

**Extensions** - 

- Dash to panel (setings available in the dir)
however, dash to panel can be used alongside with [Arc Menu](https://gitlab.com/LinxGem33/Arc-Menu) extension for a feature rich and wholesome experience. Setting files for both are provided in the directory and can be imported to these extensions. (However, now arc-menu is not my daily driver).
- [Removable drive menu](https://extensions.gnome.org/extension/7/removable-drive-menu/)
- [Clipboard indicator](https://extensions.gnome.org/extension/779/clipboard-indicator/)
- [Panel OSD](https://extensions.gnome.org/extension/708/panel-osd/). To modify notification placement.
- [KStatusNotifierItem/AppIndicator Support  - This is needed for tray icons to be supported by papirus icon theme](https://extensions.gnome.org/extension/615/appindicator-support/)

- [NOT USING NOW: Switcher and app launcher combined with Super+w](https://extensions.gnome.org/extension/973/switcher/) Read the short description on the extentions webpage to know the working.
- [NOT USING NOW: QuickLists for Files on right click on nautilus icon on dash to Panel](https://extensions.gnome.org/extension/1747/quicklists/)
- [Hide Universal Access icon in top bar](https://extensions.gnome.org/extension/2398/hide-universal-access/). Universal access icon will show up when you change cursor size to medium (which you may have to on a hidpi screen).
- remove ubuntu dock


```
sudo apt remove gnome-shell-extension-ubuntu-dock -y
```

**Notifications** -
[Panel OSD](https://extensions.gnome.org/extension/708/panel-osd/)

*Settings* -
- 98% for both horizontal and vertical
- Force show all details

**Fonts** - 

- Interface Text - Ubuntu regular 11
- Document Text - Ubuntu regular 11
- Monospace Text - Hack nerd font regular 13
- Legacy Window Titles - Ubuntu Regular 11
- Hinting - Slight
- Antialiasing - Subpixel
- Scaling Factor - 1.30

### Install **flatpaks** whenever you can instead of snaps.
However, the vscode I installed was a snap because it was directly packaged by Microsoft. Its corresponding flatpak wasn't directly packaged by MSoft.
 - install vlc flat and snap and see the difference.
 
*(Flats work more snappily and support hidpi and gnome-theming. Also Papirus icon theme can not find desktop icon path for snaps because they are hardcoded but can do so for flats).*

**Terminal** -


>(default now is zsh, oh-my-zsh, powerlevel10k)
gnome-terminal

> color pallete for bash in gnome-terminal is [Chalk pallete](https://mayccoll.github.io/Gogh/) and no transparency 

- Change PS1 (see .bashrc)

- Change padding (see ~/.config/gtk-3.0/gtk.css)

- install `most` for colored man pages (and add the appropriate line in .bashrc)

- install `lsd` for icons in ls command. Add  `alias ls="lsd"`

- install `fzf` [fuzzy finder - Fuzzy completion for bash and zsh](https://github.com/junegunn/fzf)

- neofetch (install `w3m-img` and `imagemagick` for displaying image for distro), dotfiles provided (change `image_backend` and `image_source` in the `config.conf` file)

the above is only for terminals that support image(example, termite) 

>(alternative termite)
    
- Termite ([installation instructions, build from source](https://computingforgeeks.com/install-termite-terminal-on-ubuntu-18-04-ubuntu-16-04-lts/))

- see `fix for vte while installing termite`  for error during `make` of `vte-ng`

>(alternative tilix) Trying to switch to this

>(alternative kitty) This is not a VTE-based, so it can display images too.

---

**zsh -**
follow the instructions here to install [zsh](https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH), oh-my-zsh and powerlevel10k.

add the following line to the end of `.zshrc`

``` 
source ~/.bashrc 
``` 

for retaining the settings, alias, etc. from bash.

Some other good alias are -

 - `alias gitlog="git log --all --graph --decorate --oneline"`
 - `alias gits="git status"`
 - `alias la='ls -A'`

[Named directories](http://zsh.sourceforge.net/Guide/zshguide02.html#l20) are a feature of zsh. For example, if you have set the following in `.zshrc` -

```
ctci=/home/devpogi/Documents/scratch-codes/learning-C++/CTCI
: ~ctci
```
then you can directly go to this dir by typing `~ctci`.

---

install [nnn](https://github.com/jarun/nnn) and [buku](https://github.com/jarun/Buku)

also try to learn/ remember some of its keybindings from it's README or by typing `?` to be productive with it.

---

install **spotify** from .deb as per the instructions on their website.

install [spicetify](https://github.com/khanhas/spicetify-cli) for theming spotify.

Don't forget to do the following, it's mentioned on the README of spicetify- 

- `sudo chmod 777 /usr/share/spotify -R`

- Increase/decrease font-size of spotify app by  `Ctrl+/-`

My theme - [Arc-Dark](https://github.com/morpheusthewhite/spicetify-themes/wiki/Themes-preview)

Follow [instructions](https://github.com/morpheusthewhite/spicetify-themes) to set the theme.

Fixed issue of not playing the song for more than 6 seconds - Enable Crossfade, then set to 0 sec. 

---

install [gotop](https://github.com/cjbassi/gotop) which is an alternative to `htop`

also try to learn/ remember some of its keybindings from it's README or by typing `?` to be productive with it.

---

install **`term-clock`** from [git](https://github.com/Souravgoswami/term-clock) and set alias `termclock="ruby ~/term-clock/term-clock.rb` for displaying colorful time in terminal. This is just for fun. (Note, ruby is needed to be installed for this.) I have changed the `.conf` file. It is provided in the dotfiles.

also set alias `alias systime="date +%R"` for displaying **time in terminal**.

---

**lecture message on every `sudo -i` command**


set [sudowoodo](https://www.reddit.com/r/linux/comments/ern4sb/sudowoodo_reminding_you_to_be_careful_when_using/) to appear with a lecture message on every usage of **`sudo -i`** command. 
Follow [this](https://audreyxie.com/2020/sudowoodo-reminding-you-to-be-careful-when-using-sudo/) link to set it up. 
If anything goes wrong, you can edit the sudoers.tmp file again by pressing `e` or you can discard the changes by pressing `x`.
Remember, it should be `lecture_file` instead of `lecture_path`.

---

**Terminal Phase (Shooting game in terminal)**


[screenshot and reddit post](https://www.reddit.com/r/linux/comments/erh851/i_made_a_space_shooter_that_runs_in_your_terminal/)


[install and launch instructions](https://gitlab.com/dustyweb/terminal-phase)

---

**VSCode** -

settings available in the dir `code settings`
(follow method 1 image to sync settings from github gist)
(I have restored to light+ default theme which is almost always preferable)

(However, material theme (dark mode) is also a good choice along with set accent color Bright Teal)

---

**Gedit** -

[Plane-dark-theme](https://github.com/wfpaisa/plane-gedit)
Installation instructions are mentioned in the above github repo

[NOT A DAILY DRIVER Material-theme](https://github.com/maateen/gedit-material-theme)


---


**Nautilus -**

Read the [wiki](https://wiki.archlinux.org/index.php/GNOME/Files) for tips and tricks to use with nautilus like `Ctrl+l`, admin priviledges etc. for better and faster productivity with file manager.

Also watch the [video on files tips and tricks](https://www.youtube.com/watch?v=tR5uDUlZJNA) by Alex (baby wogue).

See **Nautilus Extensions** [Nautilus Python](https://wiki.gnome.org/Projects/NautilusPython)

One Example of Nautilus extension-
 
install **folder-color** to change the color of individual directories in nautilus. Different colors help to easily identify more often used folders like `.config`, `.themes`, `.icons` all present in the same HOME directory.
This works in coordination with Papirus icon pack.

```
sudo apt install folder-color
```

Right click any folder to get the option to change the color after restarting nautilus.

---

**Firefox -**

 - [One Tab](https://addons.mozilla.org/en-US/firefox/addon/onetab/?src=featured) Better than Bulk URL opener. Has sync facility also if you are to login on another computer's firefox. Reduces memory consumption because it avoids loading all the opened tabs and just maintains a list of them which can be named and favourited too.
 - [Bulk URL opener](https://addons.mozilla.org/en-US/firefox/addon/bulkurlopener/?src=search)
 This comes in very handy when all the tabs need to be saved to a file and later reopened. This is useful when say you are working on a project and all your tabs are related to it. Suddenly, you have an urgent need to work on a different project, which will require many tabs, then you should save the opened URL of the former project to a file locally or make a new list with the extention. Later, you can select all the links from the file and drop them to the tab bar of firefox, firefox automatically opens all links in separate tabs. Or you can open all tabs from the saved list in the extention.
 
 - [Imagus - With a simple mouse-over you can enlarge images and display images/videos from links.](https://addons.mozilla.org/en-US/firefox/addon/imagus/?src=featured)

 - [NOW NOT A DAILY DRIVER][tilde-enhanced custom startpage](https://github.com/Ozencb/tilde-enhanced)
 It breaks as firefox updates, so we need to patch it correctly everytime. Also, firefox is becoming more strict to these kinds of things, it doesn't allow it without a lot of configurations.
   
   > [more custom startpages ideas can be found here](https://www.reddit.com/r/startpages/)
   
    - Open preferences in firefox and set homepage and new windows to the `index.html` absolute path of tilde-enhanced index.html like 
   `file:///home/devpogi/tilde-enhanced/index.html`
   
    - Make sure to add the file://absolute-path.
   
    - Do read the README.md of this github site to get to know the working/usage of this startpage and to improve workflow. 
   
    - Also, replace the js script file with the one provided in `firefox/tilde-enhanced/js`

    - Also change the assets dir with its corresponding dir in `firefox/` for extra icons.

    - Now for changing the newTab with this file location do the [following](https://github.com/Urimu/Startpage) -

    - Go to the installation folder of Firefox, `C:\Program Files\Mozilla Firefox` is default on Windows, (`usr/lib/firefox` on linux), open `defaults` then `pref` and put the `autoconfig.js` (from [`Firefox_cfg`](https://github.com/Urimu/Startpage/tree/master/Firefox_cfg)) there. Go back to the installation folder and paste `autoconfig.cfg` (from [`Firefox_cfg`](https://github.com/Urimu/Startpage/tree/master/Firefox_cfg)) in, open it and edit the "**newTabURL**" to the file path of the index.html

    - you can search where firefox is installed on linux by `whereis firefox`.

    - download the `autoconfig.js` and `autoconfig.cfg` files from the [github](https://github.com/Urimu/Startpage/tree/master/Firefox_cfg).
   
 - [NOT DAILY DRIVER: NightTab for a customized look to new tab](https://addons.mozilla.org/en-US/firefox/addon/nighttab/)
 
   - This is now removed due to the above custom tilde startpage. However, The settings are available (in dir `firefox/`) and can be imported to this extention.

 - [NOT DAILY DRIVER: Sidebery for Tabs tree and bookmarks in sidebar](https://addons.mozilla.org/en-US/firefox/addon/sidebery/?src=search) This is purely optional to install. Needs to do a lot of settings to get it working as desired. So, I have left this out at the moment but kept it as a reminder for maybe, future. There is also a css rule commented out in `userChrome.css` file in `firefox/` dir.


 - **`about:config`**
    
    - `layout.css.devPixelsPerPx = 1.3`
    [this is required for scaling]
    
    [all below this are required for `userChrome.css`, and so are optional]
    - `toolkit.legacyUserProfileCustomizations.stylesheets = true`
    - `svg.context-properties.content.enabled=true`

 
  - **userChrome.css Customizations**

  In root dir (of **`about:profiles`**), open it and create a new dir named `chrome` and make a file in it named `useChrome.css`. Put your firefox [customizations](https://www.reddit.com/r/FirefoxCSS) in this file and restart firefox. (Not refresh firefox). One such customization (which is now my daily driver) has been provided in `firefox/` dir.

  - **quick notepad pinned tab**

  ```
  data:text/html, <style>html,body{margin: 0; padding: 0;}</style><textarea style="font-size: 1.7em; line-height: 1.5em; background: rgb(36, 39, 48); color: rgb(227, 228, 230); width: 100%; height: 100%; border: none; outline: none; margin: 0; padding: 90px;" autofocus placeholder="Hi Prabal..." />

  ```
  put the above code in url bar and pin the tab.

---


### Some good **color themes and pallete** that are a project across various applications and are in heavy development.

1. [Material Theme](https://github.com/material-theme/vsc-material-theme#official-portings)

    [Material Design](https://material.io/)

    It is intended for VSCode, but has officially been ported to use with other apps like vim, sublime text, etc.
    It has many themes like palenight, deep ocean, lighter, darker and oceanic, all of which are visually appealing.

    There is also a jetbrains IDEs integration of the theme.[Plugin](https://www.material-theme.com/)

    There is also material icons for VSCode and JetBrains IDEs.

2. [Plane](https://github.com/wfpaisa/plane#apps-theme-and-color-schemes)

    The plane-project also has gnome gtk3 themes, shell theme and icons pack apart from color pallete for other apps like vim, gedit, vscode, tilix, firefox, etc.

3. [Nordic](https://www.nordtheme.com/)

    This is one of the best flat-like, pale, but vivid and distraction-free color pallete. It also has ports to many [apps](https://www.nordtheme.com/ports).

    There is also a [GTK3 theme](https://www.gnome-look.org/p/1267246/) which works best with [Zafiro Icon pack](https://www.gnome-look.org/p/1209330/). My first rice which was worth posting on [unixporn](https://www.reddit.com/r/unixporn/comments/d24bxk/gnome_ubuntu_1904_desktop_customizations/) used Nordic in almost all apps.

4. [Adapta](https://github.com/adapta-project)

    Adapta is another good material-look design.
    However, it has now not widely popular, yet it is worth a try. It is still maintained. 

    [GTK3 theme Adapta Colorpack - this is a fork of the original adapta gtk3 theme to add more features](https://www.gnome-look.org/p/1351232/)

    [Original GTK3 theme is now no longer maintained. It also has ports to many other apps.](https://github.com/adapta-project/adapta-gtk-theme)


---

### [Is it possible to dump all the gsetting/dconf/whatever configuration database(2) in a readable file so that I can check differences with diff -u?](https://askubuntu.com/questions/522833/how-to-dump-all-dconf-gsettings-so-that-i-can-compare-them-between-two-different)

```
dconf dump / > dconf-backup.txt
```

