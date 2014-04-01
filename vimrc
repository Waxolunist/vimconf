if has('win32') || has('win32unix') "windows/cygwin 
	source $HOME/vimfiles/vimrc_base
else 
	source $HOME/.vim/vimrc_base
endif 

if has("gui_mac") || has("gui_macvim") || (exists("os") && os == 'Darwin')
	source $HOME/.vim/vimrc_mac
endif

