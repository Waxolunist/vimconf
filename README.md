# About

This is my vim configuration of vim for windows, unix and mac. The unix-style does also work on macintosh (at least on Max OS X 10.3).

I am a lot working on different operating system. Thanks to Bram Moolenar, I have at least my favourite editor on every system. Because I am also sometimes working on the terminal, I customized the vimrc, that it is working on Mac, Linux and Windows, at least on the most common versions of it. I try to support Cygwin as well. Because I always stumbled arround, getting my vim personalized, I decided to have at least the plugins and all the configuration files packaged.

My first customized vimrc is from a version something below 6.2. Since then it is evolving permanently and I am collecting some usefull scripts and plugins. Some are using external programs, maybe not available on all systems, but at least working on windows and debian, e.g. xmllint to format XML. I try to keep the plugins up to date, but because I just started this kind of organization of my vim configuration, it is maybe not always the latest version and some are surely damn old.

# Structure and Installation

The structure of this project is very simple. On Windows just copy the files to your home directory in the directory named *vimfiles*. On all other systems this directory is called *.vim*. Then copy the files *gvimrc_base* and *vimrc_base* to your home directory.

**On Windows:**

<code>\> copy gvimrc_base ..\\_gvimrc
\> copy vimrc_base ..\\_vimrc
</code>

**On Mac and Unix:**

<code>$ cp gvimrc_base ../.gvimrc
$ cp vimrc_base ../.vimrc
</code>



Depending on which system you are, the files and plugins are sourced.

If you are using the vim version with gui **gvim** the file gvimrc_base is loaded. The file vimrc_base will alway be loaded.

# Plugins

Following Plugins am I delivering:

- ![Markdown 1.2.2](http://www.vim.org/scripts/script.php?script_id=2882)
		Syntax highlight for Markdown text files
- ![snipMate 0.8.3](http://www.vim.org/scripts/script.php?script_id=2540)
		TextMate-style snippets support
- ![bufexplorer 7.2.8](http://www.vim.org/scripts/script.php?script_id=42)
		Buffer Explorer / Browser - Switch between buffers easily
- ![winmanger 2.35](http://www.vim.org/scripts/script.php?script_id=1440)
		Windows style IDE for VIM
- ![Better CSS Syntax for Vim 20110302](http://www.vim.org/scripts/script.php?script_id=3220)
		CSS syntax highlighting with support for CSS3
- ![moria 2.6.4](http://www.vim.org/scripts/script.php?script_id=1464)
		A color scheme for GUI supposed to be highly readable

## Changes made to the plugins

I added some syntax definitions to markdown to support github flavored markdown syntax.

# Functions

Call them with *:call <functionname>*.

- FormatXML()
	Formats XML and sets the encoding to UTF-8
- InitBackupDir()
	Creates the folders backup and tmp in *$HOME/.vim* resp. *$HOME\vimfiles* if they don't exist.
- RedSpace()
	Highlights unneccessary spaces and tabs.
- NoRedSpace()
	Unhighlights unneccessary spaces and tabs.
- InitSyntax()
	Copies the css syntax files to the right place depending on your operating system on the first startup.
- FileTime()
	Outputs the Modified date of the current file
- CurTime()
	Outputs the current time

# Shortcuts
	
- Ctrl-w Ctrl-t
	Enables the WindowManager
- Ctrl-w Ctrl-f
	Switches to the file chooser of the WindowManager
- Ctrl-w Ctrl-b
	Switches to the buffer explorer of the WindowManager

# Other configurations made

- Set the color scheme by default to moria dark.
- reformated the statusline
- reformated the ruler
- set the columns, lines and guifont depending on the operating system
- start on windows by default in fullscreen mode
- mapped the suffix .less to filetype css 
- add mapping for arrow keys
- disable the menu (*set guiOptions-=m*)
- disable the toolbar (*set guiOptions-=T*)
- enable by default syntax highlighting (*syntax on*)
- enable indentation by default (*filetype indent on*)
- enable linebreak by default (*set linebreak*)
- enable line numbering by default (*set nu*)
- enable auto indent by default (*set ai*)
- enable the statusline always (*set ls=2*)
- set shift width to 2 (*set shiftwidth=2*)
- set tab size to 2 (*set ts=2*)
