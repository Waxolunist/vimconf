# About

This is my vim configuration of vim for windows, unix and mac. The unix-style does also work on macintosh (at least on Max OS X 10.3).

I am a lot working on different operating system and different environments. Thanks to Bram Moolenar, I have at least my favourite editor on every system. Because I am also sometimes working on the terminal, I customized the vimrc, that it is working on Mac, Linux and Windows, at least on the most common versions of it. I try to support Cygwin as well. Because I always stumbled arround, getting my vim personalized, I decided to have at least the plugins and all the configuration files packaged.

My first customized vimrc is from a version something below 6.2. Since then it is evolving permanently and I am collecting some usefull scripts and plugins. Some are using external programs, maybe not available on all systems, but at least working on windows and debian, e.g. xmllint to format XML. I try to keep the plugins up to date.

Basically, this configuration provides two modi operandi. One tailored to normal screens, and one tailored to small screens. The first one uses bufexplorer to switch between open buffers and winfileexplorer to navigate. Open this modus with <Ctrl-w><Ctrl-t>. The other one uses minibufexplorer and command-t (,t) to open files, which I start to prefer over the first one, because its a bit faster.

# Structure and Installation

I am using since April 2013 pathogen and git submodules for installation of plugins and will try to migrate all existing plugins in my installation to this new structure.

The easiest way to install is to fork this repo and clone it. Then initialize the submodules and make some extra steps for some plugins. Please read the installation instructions for the plugins.

The structure of this project is very simple. On Windows just clone to your home directory in the directory named *vimfiles*. On all other systems this directory is called *.vim*. Then copy the files *gvimrc_base* and *vimrc_base* to your home directory.

**On Windows:**

    > copy gvimrc ..\_gvimrc
    > copy vimrc ..\_vimrc

**On Mac and Unix:**

    $ cp gvimrc ../.gvimrc
    $ cp vimrc ../.vimrc

Depending on which system you are, the files and plugins are sourced.

If you are using the vim version with gui **gvim** the file *gvimrc_base* is loaded. The file *vimrc_base* will always be loaded.

If you are using omnicompletion for vim you need also python installed with jedi (see https://github.com/davidhalter/jedi-vim):

    $ pip install jedi

To use the taglist plugin you need to install the exuberant ctags library.

To use the plugins installed as git submodules you have to initialize them:

    $ git submodule init
    $ git submodule update

To use the command-t plugin you need to compile the extra libraries:

    $ cd ~/.vim/bundle/command-T/ruby/command-t 
    $ ruby extconf.rb 
    $ make

# Plugins

Following Plugins am I delivering:

- [Markdown](https://github.com/plasticboy/vim-markdown/)
  Syntax highlight for Markdown text files
- [snipMate 0.8.3](http://www.vim.org/scripts/script.php?script_id=2540)
  TextMate-style snippets support
- [bufexplorer 7.3.5](http://www.vim.org/scripts/script.php?script_id=42)
  Buffer Explorer / Browser - Switch between buffers easily
- [winmanger 2.41](http://www.vim.org/scripts/script.php?script_id=1440)
  Windows style IDE for VIM
- [css3 : css3 syntax for vim 2.1](http://www.vim.org/scripts/script.php?script_id=3042)
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
- [VOoM : Vim two-pane outliner 4.7](http://www.vim.org/scripts/script.php?script_id=2657)
  VOoM (Vim Outliner of Markers) is a plugin for Vim that emulates a two-pane text outliner.
- [html5.vim : HTML5 omnicomplete funtion and syntax for Vim 0.27](http://www.vim.org/scripts/script.php?script_id=3236)
  HTML5 omnicomplete funtion and syntax for Vim. Based on the default htmlcomplete.vim. 
- [vim-stylus : Syntax/Indentation for Stylus 0.8.3](http://www.vim.org/scripts/script.php?script_id=3513)
  Syntax hightlighting for Stylus 
- [asciidoc-syntax](https://github.com/dagwieers/asciidoc-vim)
  Syntax highlighting for Asciidoc (Changed dark colors to light colors)
- [utl 3.0a](http://www.vim.org/scripts/script.php?script_id=293)
  Univeral Text Linking - Execute URLs, footnotes, open emails, organize ideas
- [pathogen](https://github.com/tpope/vim-pathogen)
  manage your runtimepath
- [fugitive](https://github.com/tpope/vim-fugitive)
  git wrapper
- [ConqueTerm 2.2](http://www.vim.org/scripts/script.php?script_id=2771)
  Run interactive commands inside a Vim buffer 
- [CSV 0.28](http://www.vim.org/scripts/script.php?script_id=2830)
  A Filetype plugin for csv files. 
- [jedi-vim](https://github.com/davidhalter/jedi-vim)
  Using the python jedi autocompletion library for VIM.
- [taglist 4.5](http://www.vim.org/scripts/script.php?script_id=273)
  Source code browser (supports C/C++, java, perl, python, tcl, sql, php, etc)
- [indent/python](https://github.com/hynek/vim-python-pep8-indent)
  An alternative indentation script for python
- [vim-jade](https://github.com/digitaltoad/vim-jade)
  Jade syntax highlighting
- [Command-T](https://github.com/wincent/Command-T)
  Fast, intuitive mechanism for opening files 
- [Minibufexplorer](https://github.com/fholgado/minibufexpl.vim)
  Elegant buffer explorer - takes very little screen space 
- [JSLint](https://github.com/hallettj/jslint.vim)
  VIM plugin and command line tool for running JSLint 
- [JSHint](https://github.com/walm/jshint.vim)
  A plugin that integrates JSHint with Vim
- [Javascript](https://github.com/pangloss/vim-javascript)
  JavaScript bundle for vim, this bundle provides syntax and indent plugins.
- [Tagbar](https://github.com/majutsushi/tagbar)
  Vim plugin that displays tags in a window, ordered by class etc. 

## Changes made to the plugins

Changes made to the plugins

- Added some syntax definitions to markdown to support github flavored markdown syntax.
- Improved utl a bit (see http://vim.wikia.com/wiki/Script:293).
- Modified winfileexplorer.vim line 685 to call xdg-open instead of start on unix-systems.

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

# Commands

- :Voom *templatelanguage*
e.g. Voom rest or Voom asciidoc 
Opens the hierarchy view on the right side.

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
- *Shift-S*
Pressing "S" in the the FileManager opens the current file in the correct app.
- *gu*
Opens the url under the cursor (see utl.vim)
- *,l*
Search for the dictionary entry at http://dict.leo.org

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
All plugins were updated on 18/02/2013.

Last updates to this document: 
- 02/05/2013: Updated bundles command-T, tagbar, mini-bufexpl
- 02/05/2013: Replaced markdown vim plugin with https://github.com/plasticboy/vim-markdown/
- 13/04/2013: Installed jshint, tagbar
- 12/04/2013: Installed command-t, minibufexplorer, jslint, vim-javascript
- 10/04/2013: Updated fugitive to the latest master version
- 20/03/2013: Remaped on windows <C-a> and <C-x> to <A-a> and <A-x>
- 19/03/2013: installed vim-jade (https://github.com/digitaltoad/vim-jade)
- 19/03/2013: configured <c-space> as autocomplete command in html files
- 23/02/2013: installed indent for python (https://github.com/hynek/vim-python-pep8-indent)
- 23/02/2013: installed taglist 4.5
- 22/02/2013: installed jedi-vim (current from master)
- 21/02/2013: Updated CSV plugin to version 0.28
- 21/02/2013: Unix-only: <Shift-S> in fileexplorer works now in gnome (see changes)
- 18/02/2013: Unix-only: mapped :Bash to :ConqueTerm bash
- 18/02/2013: installed conqueterm 2.2
- 18/02/2013: installed fugitive.vim (see https://github.com/tpope/vim-fugitive)
- 18/02/2013: installed pathogen.vim (see https://github.com/tpope/vim-pathogen)
- 18/02/2013: improved utl script (see http://vim.wikia.com/wiki/Script:293)
- 18/02/2013: updated voom to version 4.7
- 18/02/2013: updated bufexplorer to version 7.3.5
- 18/02/2013: installed utl version 3.0a ALPHA
- 18/02/2013: updated winmanager to version 2.41
- 09/13/2012: html5, css3, stylus support
- 08/20/2012: asciidoc support added
- 08/20/2012: voom plugin added
