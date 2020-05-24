# Commands

## apt

- **moo** | *cowpowers*

	Usage:


	- `apt moo`

- **update** | *updates the system repos*

	Usage:


	- `sudo apt update`

## bash

- **ls** | *list files and directories*

	Usage:


	- `ls -a`


	- `ls -alh`


	- `ls dir1`

- **clear** | *clears the terminal*

	Usage:


	- `clear`


	- `Ctrl+L`

- **find** | *finds a filename using regex*

	Usage:


	- `find . -type f -iname "*papirus*"`

- **pgrep** | *returns the pid of the program-name if it is opened else return nothing*

	Usage:


	- `pgrep -u $(whoami) gnome-terminal`


	- `pregp gedit`

- **cat** | *outputs the contents of a file to stdout or redirects it*

	Usage:


	- `cat a.cpp`


	- `cat file.txt > file2.txt`


	- `cat file.txt >> file2.txt`


	- `cat .bashrc`

## nautilus

- **nautilus** | *launches gnome-files*

	Usage:


	- `nautilus`


	- `nautilus dir1`


	- `nautilus -q`

## pygmentize

- **pygmentize** | *displays the contents of the file in a colored way according to the file's language*

	Usage:


	- `pip3 install --user Pygments`


	- `pygmentize file.md`


	- `pygmentize a.cpp`


	- `cat a.cpp | pygmentize`

