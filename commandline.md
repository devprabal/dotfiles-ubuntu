### Commandline

Here, I will list some useful commands.

#### pygmentize

```bash
pygmentize -f html -O full,style=dracula -l md -o commands.html commands.md
```

Generate full standalone html output file using format html and lexer markdown (md) from the input file `commands.md` and coloring it with colorscheme dracula.

```bash
pygmentize -O style=dracula commands.md
```

Show the output on stdout using colorscheme dracula

```bash
diff -u hi.txt hi2.txt | pygmentize -O style=dracula
```

View the differences in unified way between two files and pipe the output into pygmentize command to color it using dracula colorscheme.

[Source: pygments command line](https://pygments.org/docs/cmdline/)

#### zathura

```bash
zathura /tmp/op.pdf
```

Open zathura from file `/tmp/op.pdf`.

The good thing about this is, if you change the file, keeping zathura open, then zathura will reload the file without you specifying it to do so. This helps when you want to see the pdf output of a latex/markdown file which you are currently editing.

#### pandoc

```bash
pandoc -f gfm -t pdf ~/Documents/rice/README.md -o /tmp/op.pdf -V geometry:margin=0.5in -V urlcolor='[HTML]{0000ff}'
```

Convert markdown to pdf and show the url links int the converted pdf file using the color #0000ff.

`-t` denotes "to" format `-f` denotes "from" format.

[Source: github](https://github.com/jgm/pandoc/issues/2581)

#### pdflatex

```bash
pdflatex report.tex
```

Use pdflatex for converting tex documents into pdf files instead of pandoc. (pandoc will give a "unusual conversion" warning).

#### pip3

```bash
pip3 install --user Pygments
```

Installing in `~/.local/lib/python3.8/site-packages/`, that is, in user dir.

```bash
pip3 install --user --upgrade youtube_dl
```

#### at

```bash
echo 'notify-send "Meeting with Rishu and Sawalkar"' | at 4:00PM
```

This will pop a notification at 4 pm with the subject as mentioned.


```bash
echo 'notify-send -u critical -i "/home/devpogi/.icons/Papirus/symbolic/actions/call-start-symbolic.svg" "Call Pogi" "On WhatsApp"' | at now + 1 minutes
```

Various options for notify-send command can be used as shown above.

*Note*: use `/home/devpogi` instead of `~` for icon `-i` location.

```bash
atq
```

Lists all pending jobs of user.

[Source : Stackoverflow](https://superuser.com/questions/38654/pop-up-notification-when-time-reaches-400pm)

for more info, always use manpages `man at`.

#### flatpak

```bash
flatpak ps
```

Show runnig flats.

#### xprop

```bash
xprop
```

Changes the cursor to x. Click on the window whose name you need to find. It will display the result in terminal.

#### apt

```bash
grep " install " /var/log/apt/history.log
```

Shows recently installed packages via apt.

```bash
add-apt-repository --remove ppa
```

Removes a ppa from `sources.list.d`  in `/etc/apt/`

```bash
apt search texlive
```

Searches for packages related to this name.

```bash
apt-file search titling.sty
```

Searches for the package(s) that provide this file. Need to install `apt-file` for this.

#### snap 

```bash
snap remove --purge package-name
```

Remove a snap package withour saving a snapshot of its data.

See `snap remove --help` or `snap --help` for more.

#### rsvg-convert

```bash
rsvg-convert fig.svg -o fig.png
```

Need to install `librsvg2` for converting svg to png, jpeg, etc.
