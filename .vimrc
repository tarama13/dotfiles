set encoding=utf-8
scriptencoding utf-8
" Vim scriptの文字コード指定
" set encoding は scriptencodingの前に


""""""""""""""""""
"    dein.vim    "
""""""""""""""""""
if &compatible
  set nocompatible
endif
set runtimepath+=~/.vim/dein/repos/github.com/Shougo/dein.vim

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
call dein#add('Shougo/unite.vim')
call dein#add('Shougo/neosnippet')
call dein#add('Shougo/neosnippet-snippets')
call dein#add('vim-latex/vim-latex')
call dein#end()


syntax on
colorscheme desert
set t_Co=256

" 開くときに試すエンコード
set fileencodings=utf-8,iso-2022-jp,sjis,euc-jp
" 保存時のエンコード
set fileencoding=utf-8

" タブ幅
set tabstop=2
" 自動インデントによる幅
set softtabstop=2
" タブをスペースにしない
set noexpandtab
" 自動インデント
set autoindent
" BSでインデント，改行を削除
set backspace=indent,eol,start


" 表示に関わる設定

" タイトル表示
set title
" 行番号表示
set number
" ルーラーを表示
set ruler
" タブ，改行の表示
set list
" タブ，改行などの表示設定
"		tab:2文字で指定
"		trail:行末に続くスペース
"		extends:右に省略された文字があるとき
"		precedes:左に省略
"		eol:改行記号
set listchars=tab:>-,extends:>,precedes:<,trail:-,eol:$
" 折り返し表示
set wrap
" カーソル行の背景色を変える
set cursorline
" 行頭／行末でのカーソル移動
set whichwrap=h,l
" 常にステータス行を表示
set laststatus=2
" コマンドラインの高さ
set cmdheight=2
" コマンドをステータス行に表示
set showcmd
" モードを表示する
set showmode
" 対応する括弧を表示
set showmatch


" 保存されていないファイルがある場合終了前に保存確認
set confirm
" 保存されていないファイルがあるときも別のファイルを開ける
set hidden


" 検索に関する設定

" 大文字小文字を無視
set ignorecase
" 大文字小文字混在した言葉で検索を行った場合、大文字小文字を区別する
set smartcase
" インクリメンタルサーチ
set incsearch
" 検索ハイライト
set hlsearch
" 検索終了したら最初に戻る
set wrapscan


" 動作環境に関する設定

" コマンドラインの履歴保存量
set history=10000
" コマンドラインでTAB補完を有効
set wildmenu wildmode=list:longest,full
" マウス有効
set mouse=a
" インサートモードから抜けると自動でIMEオフ
" set iminsert=2

"ノーマルモードでのキー割り当て
nnoremap ; :
nnoremap <Left> h
nnoremap <Right> l

" 折りたたみ
set foldmethod=manual
set foldlevel=1

"""""""""""""""""""
"    Vim-LaTeX    "
"""""""""""""""""""
filetype plugin on
filetype indent on
set shellslash

" 折りたたみ
let g:latex_fold_enabled = 2
" ビューワ
let g:latex_view_method = 'general'
let g:latex_view_general_viewer = 'evince'
