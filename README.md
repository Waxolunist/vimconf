# About

This is my vim configuration of vim for windows, unix and mac. The unix-style does also work on macintosh (at least on Max OS X 10.3).

I am a lot working on different operating system. Thanks to Bram Moolenar, I have at least my favourite editor on every system. Because I am also sometimes working on the terminal, I customized the vimrc, that it is working on Mac, Linux and Windows, at least on the most common versions of it. I try to support Cygwin as well. Because I always stumbled arround, getting my vim personalized, I decided to have at least the plugins and all the configuration files packaged.

My first customized vimrc is from a version something below 6.2. Since then it is evolving permanently and I am collecting some usefull scripts and plugins. Some are using external programs, maybe not available on all systems, but at least working on windows and debian, e.g. xmllint to format XML. I try to keep the plugins up to date, but because I just started this kind of organization of my vim configuration, it is maybe not always the latest version and some are surely damn old.

# Structure and Installation

The structure of this project is very simple. On Windows just copy the files to your home directory in the directory named *vimfiles*. On all other systems this directory is called *.vim*. Then copy the files *gvimrc_base* and *vimrc_base* to your home directory.

** On Windows: **

``

> copy gvimrc_base ..\_gvimrc

> copy vimrc_base ..\_vimrc

``

** On Mac and Unix: **

``

$ cp gvimrc_base ../.gvimrc

$ cp vimrc_base ../.vimrc

`` 

Depending on which system you are, the files and plugins are sourced.

If you are using the vim version with gui **gvim** the file gvimrc_base is loaded. The file vimrc_base will alway be loaded.

# Plugins

Following Plugins am I delivering:


