### Incantations

Some useful command line spells :eight_spoked_asterisk:

#### pygmentize

```bash
pygmentize -f html -O full,style=dracula -l md -o commands.html commands.md
```

- Generate full standalone html output file using format html and lexer markdown (md) from the input file `commands.md` and color it with colorscheme dracula.

- Show the output on stdout using dracula colorscheme -- `pygmentize -O style=dracula commands.md`


- View the differences in unified way between two files and pipe the output into pygmentize command to color it using dracula colorscheme -- `diff -u hi.txt hi2.txt | pygmentize -O style=dracula`

[Source: pygments command line](https://pygments.org/docs/cmdline/)

#### zathura

- Open zathura from file `/tmp/op.pdf` -- `zathura /tmp/op.pdf`

The good thing about this is, if you change the file, keeping zathura open, then zathura will reload the file without you specifying it to do so. This helps when you want to see the pdf output of a latex/markdown file which you are currently editing.

#### pandoc

```bash
pandoc -f gfm -t pdf ~/Documents/rice/README.md -o /tmp/op.pdf -V geometry:margin=0.5in -V urlcolor='[HTML]{0000ff}'
```

- Convert markdown to pdf and show the url links in the converted pdf file using the color `#0000ff`.

`-t` denotes "to" format `-f` denotes "from" format.

[See markpdf script also](dotfiles/bin/markpdf)

[Source: github](https://github.com/jgm/pandoc/issues/2581)

#### pdflatex

- Use pdflatex for converting tex documents into pdf files instead of pandoc (pandoc will give a "unusual conversion" warning) -- `pdflatex report.tex`

#### pip3

- Instal in `~/.local/lib/python3.8/site-packages/` -- `pip3 install --user Pygments`

- update a package (installed under user dir) -- `pip3 install --user --upgrade youtube_dl`

#### at

- Pop a notification at 4 pm with the subject as mentioned -- `echo 'notify-send "Meeting with Rishu and Sawalkar"' | at 4:00PM`


```bash
echo 'notify-send -u critical -i "/home/devpogi/.icons/Papirus/symbolic/actions/call-start-symbolic.svg" "Call Pogi" "On WhatsApp"' | at now + 1 minutes
```

Various options for notify-send command can be used as shown above.

*Note*: use `/home/devpogi` instead of `~` for icon `-i` location.

- Lists all pending jobs of user -- `atq`

[Source : Stackoverflow](https://superuser.com/questions/38654/pop-up-notification-when-time-reaches-400pm)

for more info, always use manpages `man at`.

#### flatpak

- Show running flats -- `flatpak ps`

- Test out a nightly package (gnome-nightly must be enabled) -- `flatpak run --branch=master org.gnome.Evince`

- To test gtk4-demos (just install some flatpak from gnome-nightly, exanple Evince) -- `flatpak run --command=gtk4-demo --device=dri org.gnome.Evince`

- fix errors on abnormal install, if you had Flatpak installation incomplete because of poor internet connection or system shutdown -- `flatpak update -v`

- list installed -- `flatpak list`

- update all apps at once -- `flatpak update`

- uninstall -- `flatpak uninstall <package-name>`

#### xprop

- Changes the cursor to x. Click on the window whose name you need to find. It will display the result in terminal -- `xprop`

#### dpkg

- install/update from .deb file -- `dpkg -i <deb-file>`

- [uninstall] (https://unix.stackexchange.com/questions/195794/how-to-uninstall-a-deb-installed-with-dpkg)
first check if the package is correctly installed or not. The output should have `ii` (installed ok installed) in the first column -- `dpkg -l | grep <package-name>`

- remove config files as well -- `dpkg -P <package-name>`

#### apt

- Show recently installed packages via apt -- `grep " install " /var/log/apt/history.log`

- list all apt installed packages -- `apt list --installed`

- Remove a ppa from `sources.list.d`  in `/etc/apt/` -- `add-apt-repository --remove ppa`

- Search for packages related to texlive -- `apt search texlive`

- Search for the package(s) that provide this file (titling.sty). Need to install `apt-file` for this -- `apt-file search titling.sty`

#### snap 

- Remove a snap package withour saving a snapshot of its data -- `snap remove --purge package-name`

See `snap remove --help` or `snap --help` for more.

#### rsvg-convert

- Need to install `librsvg2` for converting svg to png, jpeg, etc -- `rsvg-convert fig.svg -o fig.png`

#### conda

- `conda update conda`
- `conda update -n root conda` where root is the env name
- `conda env list`
- `conda create --name env-name python=3.6`
- Set working directory from the command line (from spyder3 --help) -- `spyder3 -w path/to/dir`

