# TODO

## :rice: improve workflow

### some good packages etc.

- [ ] pygmentize `pygmentize TODO.rice.md`, `pygmentize a.cpp`, where installed `~/.local/lib/python3.8/site-packages`, how to install `pip3 install --user Pygments`
- [ ] feh -- image viewer
- [ ] gnome-sushi -- for file preview in nautilus
- [x] [NOT USING] `nautilus-terminal` -- show terminal widget (and dynamically change pwd in that terminal) in nautilus. Need to install `python3-nautilus` when installing with pip3 `pip3 install --user`.
- [ ] [battery wallpaper](https://github.com/adi1090x/battery-wallpaper). Almost all of `adi1090x`'s creations are awesome. He has also created a custom Arch distribution *Archcraft* with all his rices included for selection by user.
- [ ] firefox-addons - Dark Reader, Imagus, Grammarly, Gnome Shell Integration, OneTab, uBlock Origin, Zotero Connector. 
- [ ] [NOT USING] `snap install netron` for visualizing neural networks. There is a python script to do that.
- [ ] draculatheme [for gnome-terminal, gedit, pygmentize](https://draculatheme.com/). Copy the class file (`dracula.py`) of dracula into `~/.local/lib/python3.8/site-packages/pygments/styles` for using dracula style.
- [ ] `.dir_colors` in `~`, installed during dracula-gnome-theme as an optional utility. But it is good and customizable.
- [ ] pdf readers (in order of preference) - `masterpdfeditor`, `zathura`, `evince`. I have written a comparison for the popular ones [here](https://www.reddit.com/r/linux4noobs/comments/hjwq19/comment/fwq2ll3).
- [ ] qutebrowser -- a browser in Qt with keyboard navigation
- [ ] [starship for git status on PS1](https://starship.rs/)
- [ ] [fet.sh](https://github.com/6gk/fet.sh/blob/master/fet.sh) -- fetch written in POSIX shell with no external commands (~100 loc)
- [ ] [bolt](https://github.com/salman-abedin/bolt) -- A launcher wrapper written in PSOIX shell with less than 200 sloc. Very minimal alternative to rofi or dmenu.
- [x] [NOT USING] [Gnome firefox look](https://github.com/rafaelmardojai/firefox-gnome-theme)
- [ ] [discord chat explorer](https://github.com/Tyrrrz/DiscordChatExporter) -- CLI to export all chats from discord server/channels in various formats etc. Requires dot net core. Read the wiki of project's github for all help. 


NOTE :pencil: **There are some messages in "Saved Messages" in telegram that list some softwares/tools/scripts that have not been tried-out but sound cool. There are marked with :question: **

### update

- [ ] gnome-tweaks-screenshots
- [ ] `*fetch` screenshot
- [ ] dconf dump 
- [ ] enabled gnome-extensions
- [ ] [syntax highlighting for all code-blocks written in any markdown file](https://stackoverflow.com/questions/20303826/highlight-bash-shell-code-in-markdown)
- [x] add in [conda_usage.md](conda_usage.md) the other way to activate env using conda even in zsh by `conda init` command.
- [ ] script to manage dotfiles. script to cp into rice any dotfile that is modified.
- [ ] make rice public and change README.md to look structured and beautiful.
- [ ] These things do not tell when a new update is available and hence are required regular manual updates -- papirus icon pack, hack nerd font, prof-gnome-gtk and gnome-shell theme.
- [ ] Likewise, masterpdfeditor5 updates the `/usr/share/applications/masterpdfeditor5.desktop` file to change the Icon shown in the app grid to the one provided in its install dir `/opt/master-pdf-editor`. We need to manually change that to `masterpdfeditor` for Papirus-icons.

### issues

- [x] [avidemux new icons with new Papirus icon theme](avidemux_icon_workaround.md)
- [x] `flatpak override --filesystem=~/.themes` for flatpak apps to follow themes installed in (`~/.themes`) instead of Yaru or Adwaita. `cd /var/lib/flatpak/overrides` to see the changes in file `global`.
- [ ] How to save OneTab firefox-addon settings? It cannot be synced with firefox's profile and thus settings have to be configured when firefox is installed on a new laptop/OS (with same account). 
- [ ] Make something, maybe a bot, to manage all saved items in telegram (Saved Messages), WhatsApp (Info), discord (leisure), reddit (saved posts and comments) together and consistently. It must also be able to search through it.
- [ ] Zotero first *major* - *task offloading* research has left so many files to read again, some of which are codes help, latex help, rl, etc. Something like a kerko app can be made to view and search through this archive.

### personal website

- [ ] `ssg` [watch this video, simplest and bloat-less static website generator from markdown written in posix shell and require `lowdown` C library](https://youtu.be/N_ttw2Dihn8).  [static site generator](https://www.reddit.com/r/opensource/comments/hlaqk2/i_have_created_my_own_static_site_generator_in/?utm_medium=android_app&utm_source=share)
- [ ] static site generate from `.md` files with [fastpages](https://github.com/fastai/fastpages).
- [ ] [I WON'T USE THIS] static site generator with hugo.
- [ ] ask an artist to commission a profile pic for me. It should be creative like showing only the outline of my features [like this here](https://github.com/buffet/) or an anime kawai adaptation of my face. Use it as profile pic for all platforms.
- [ ] personal web should include my creative skills too like drawings, cookings (maybe with recipe like [here, sclurrey](https://theskullery.net/recipes/veggie-mini-pizza) ), books read (a link to goodreads), anime watched (maybe review too), and rice.
- [ ] write reviews for books read on goodreads.
- [ ] [online_accounts_links](online_accounts.md) (like linktree) 

### github profile readme

- [ ] [awesome-github-profile-readmes awesomelist](https://github.com/abhisheknaiidu/awesome-github-profile-readme)
- [ ] [youtube-video for help and ideas](https://www.reddit.com/r/VisualCoding/comments/ia6yvn/update_next_level_github_profile_readme_new/?utm_medium=android_app&utm_source=share)


### reading/watching/etc. for ideas and incorporations

- [ ] archwiki and gentoo wiki are :heart:
- [x] github flavoured markdown vs. other markdowns
- [ ] markdown rendering engine ?
- [x] pandoc tool and its command line utilities
- [ ] watch zathura workflow video on [youtube](https://www.youtube.com/watch?v=OC8FZW56MEc)
- [ ] [Journaling in vim with markdown formatting](https://danishpraka.sh/2020/02/23/journaling-in-vim.html)


### these people's :rice_ball: are inspirational

- [ ] [sofiaben i3](https://github.com/sofiabelen/dotfiles)
- [ ] [elenapan awesomeWM](https://github.com/elenapan/dotfiles)
- [ ] [the-glorious-dotfiles awesome](https://github.com/manilarome/the-glorious-dotfiles)
- [ ] [Swifty chicken bspwm](https://github.com/SwiftyChicken/dotfiles)
- [ ] [JavaCafe01 awesomeWM](https://github.com/JavaCafe01/dotfiles)


