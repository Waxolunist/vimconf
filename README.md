# About

This is my vim configuration of vim for windows, unix and mac. The unix-style does also work on macintosh (at least on Max OS X 10.3).

I am a lot working on different operating system. Thanks to Bram Moolenar, I have at least my favourite editor on every system. Because I am also sometimes working on the terminal, I customized the vimrc, that it is working on Mac, Linux and Windows, at least on the most common versions of it. I try to support Cygwin as well. Because I always stumbled arround, getting my vim personalized, I decided to have at least the plugins and all the configuration files packaged.

My first customized vimrc is from a version something below 6.2. Since then it is evolving permanently and I am collecting some usefull scripts and plugins. Some are using external programs, maybe not available on all systems, but at least working on windows and debian, e.g. xmllint to format XML. I try to keep the plugins up to date, but because I just started this kind of organization of my vim configuration, it is maybe not always the latest version and some are surely damn old.

# Structure and Installation

The structure of this project is very simple. On Windows just copy the files to your home directory in the directory named *vimfiles*. On all other systems this directory is called *.vim*. Then copy the files *gvimrc_base* and *vimrc_base* to your home directory.

**On Windows:**

    > copy gvimrc ..\_gvimrc
    > copy vimrc ..\_vimrc

**On Mac and Unix:**

    $ cp gvimrc ../.gvimrc
    $ cp vimrc ../.vimrc

Depending on which system you are, the files and plugins are sourced.

If you are using the vim version with gui **gvim** the file *gvimrc_base* is loaded. The file *vimrc_base* will always be loaded.

# Plugins

Following Plugins am I delivering:

- [Markdown 1.2.2](http://www.vim.org/scripts/script.php?script_id=2882)
  Syntax highlight for Markdown text files
- [snipMate 0.8.3](http://www.vim.org/scripts/script.php?script_id=2540)
  TextMate-style snippets support
- [bufexplorer 7.2.8](http://www.vim.org/scripts/script.php?script_id=42)
  Buffer Explorer / Browser - Switch between buffers easily
- [winmanger 2.35](http://www.vim.org/scripts/script.php?script_id=1440)
  Windows style IDE for VIM
- [Better CSS Syntax for Vim 20110302](http://www.vim.org/scripts/script.php?script_id=3220)
  CSS syntax highlighting with support for CSS3
- [moria 2.6.4](http://www.vim.org/scripts/script.php?script_id=1464)
  A color scheme for GUI supposed to be highly readable
- [haml 1.0](http://www.vim.org/scripts/script.php?script_id=1433)
  Haml and Sass syntax, indenting, and ftplugin
- [ccf 0.1]
  This plugin by me formats, converts and compiles with external programs
- [javacomplete 0.77.1.2](http://www.vim.org/scripts/script.php?script_id=1785)
  Omni Completion for JAVA 
- [Asciidoc](http://www.methods.co.nz/asciidoc/)
  The asciidoc syntax highlighting and ftdetect-plugins
- [VOoM : Vim two-pane outliner](http://www.vim.org/scripts/script.php?script_id=2657)
  VOoM (Vim Outliner of Markers) is a plugin for Vim that emulates a two-pane text outliner.

## Changes made to the plugins

I added some syntax definitions to markdown to support github flavored markdown syntax.

# Functions

Call them with *:call <functionname>* or the commands.

- *InitBackupDir()*
Creates the folders backup and tmp in *$HOME/.vim* resp. *$HOME\vimfiles* if they don't exist.
- *RedSpace()*
Highlights unneccessary spaces and tabs.
- *NoRedSpace()*
Unhighlights unneccessary spaces and tabs.
- *InitSyntax()*
Copies the css syntax files to the right place depending on your operating system on the first startup.
- *FileTime()*
Outputs the Modified date of the current file
- *CurTime()*
Outputs the current time

## From ccf.vim:

- *CompileSASS()* or *:SASS*
Compiles scss to css in the same folder. This function depends on the ruby gem [sass](http://sass-lang.com/).
- *CompileLESS()* or *:LESS*
Compiles less to css in the same folder. This function depends on  [lessc](https://github.com/duncansmart/less.js-windows).
- *FormatXML()* or *:FormatXML*
Formats XML and sets the encoding to UTF-8. This function depends on [xmllint](http://xmlsoft.org/xmllint.html).
- *SetJavaClasspath()*
To get better code completion you have to set your java classpath. If you got an maven project, this script searches upwards for your pom.xml.
If you want to reset the java classpath call it with the argument 1 *:call SetJavaClasspath(1)*. This function sets your classpath
depending on your pom.xml. It creates a classpath file .occp (OmniCompletionClassPath) for faster running the next time next to your pom.xml.
To rerun this function on next start of vim, just hit <F8>. Alternatively you can create your own .occp-File manually.

# Shortcuts
	
- *Ctrl-w Ctrl-t*
Enables the WindowManager
- *Ctrl-w Ctrl-f*
Switches to the file chooser of the WindowManager
- *Ctrl-w Ctrl-b*
Switches to the buffer explorer of the WindowManager
- *Ctrl-Space*
Completion in java code (Hold the ctrl-key down to choose from completion)
- *<F8>*
Reset the classpath from your .occp file next to your pom.xml or generate the .occp.

# Documentation

Often I forget some shortcuts. I write them all down in *doc/my.txt* and open this file with *:h my*.

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
- set foldmethod to syntax (*set foldmethod=syntax*)

# Versions

Currently I am using version 7.3 of vim.
All plugins were updated on 01/13/2012.

Last updates to this document: 
- 08/20/2012: asciidoc support added
- 08/20/2012: voom plugin added
