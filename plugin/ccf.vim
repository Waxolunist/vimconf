" File:          ccf.vim
" Author:        Christian Sterzl
" Last Updated:  Jan 17, 2012
" Version:       0.1
" Description:   ccf.vim is a plugin to interoperate with external programs
"								 Following libraries are needed at the moment:
"								 - xmllint ()
"								 - sass
" 							 - lessc

function FormatXML()
	" au FileType xml exe ":silent 1,$!xmllint --format --recover - 2>/dev/null" 
	if executable('xmllint')
		exe ":silent 1,$!xmllint --format --nowarning --recover - 2>/dev/null"
		set encoding=UTF8
	endif
endfunction
command -nargs=0 FormatXML :call FormatXML()

function CompileSASS()
	let cwd = expand('%:p:h')
	let nam = expand('%:t:r')
	let ext = expand('%:e')
	let cssnam = nam.'.css'
	if ext == 'scss'
		if executable('sass')
			"Change directory thus it works for cygwin sass
			exe ":cd ".cwd
			exe ":silent !sass ".nam.".".ext." > ".cssnam.' &'
			exe ":cd -"
			"call system('sass '.cwd.'/'.nam.'.'.ext.' '.cwd.'/'.cssnam.' &')
		endif
	endif
endfunction
command -nargs=0 SASS :call CompileSASS()


function CompileLESS()
	let cwd = expand('%:p:h')
	let nam = expand('%:t:r')
	let ext = expand('%:e')
	let cssnam = nam.'.css'
	if ext == 'less'
		if executable('lessc.cmd')
			exe ":silent !lessc.cmd % > ".cwd."/".cssnam." &"
		endif
	endif
endfunction
command -nargs=0 LESS :call CompileLESS()
