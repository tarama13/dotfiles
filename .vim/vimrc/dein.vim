""""""""""""""""""
"    dein.vim    "
""""""""""""""""""
if &compatible
  set nocompatible
endif
set runtimepath+=(expand('~/.vim/dein/repos/github.com/Shougo/dein.vim'))

if dein#load_state(expand('~/.vim/dein'))
  call dein#begin(expand('~/.vim/dein'))

  call dein#add('Shougo/dein.vim')
  call dein#add('Shougo/vimproc.vim', {
                 \ 'build': {
                 \     'windows': 'tools\\update-dll-mingw',
                 \     'cygwin': 'make -f make_cygwin.mak',
                 \     'mac': 'make -f make_mac.mak',
                 \     'linux': 'make',
                 \     'unix': 'gmake',
                 \    },
                 \ })
  call dein#add('Shougo/neocomplete.vim')
  call dein#add('Shougo/neomru.vim')
  call dein#add('Shougo/neosnippet')
  call dein#add('Shougo/neosnippet-snippets')
  call dein#add('Shougo/unite.vim')
  call dein#add('vim-latex/vim-latex')
  call dein#end()
  call dein#save_state()
endif
