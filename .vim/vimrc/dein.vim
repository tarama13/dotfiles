if &compatible
	set nocompatible
endif
set runtimepath+=$HOME/.vim/dein/repos/github.com/Shougo/dein.vim

if dein#load_state($HOME . '/.vim/dein')
	call dein#begin($HOME . '/.vim/dein')
	call dein#load_toml($HOME . '/.vim/dein.toml')
	call dein#end()
	call dein#save_state()
endif

filetype plugin indent on
syntax enable

if dein#check_install()
	call dein#install()
endif

