scriptencoding utf-8

" File
"" Encoding
set encoding=utf-8 " vim encoding
set fileencodings=utf-8 " 自動判別
set fileencoding=utf-8 " 保存時のエンコード
" File Operation
set confirm    " 保存されていないファイルがある場合終了前に保存確認
set hidden     " 保存されていないファイルがあるときも別のファイルを開ける
set autoread   " 自動更新
set nobackup   " 保存時にバックアップを作成しない
set swapfile   " 編集中にスワップファイルを作成する


" Indent
"" Indent
set noexpandtab   " タブをスペースにしない
set autoindent    " インデントの継続
set smartindent   " 自動インデント
"" Tab
set tabstop=2     " Tabの幅
set softtabstop=2 " Tab入力時の空白の幅
set shiftwidth=2  " 自動インデントの空白の幅

                  " BSでインデント，改行を削除
set backspace=indent,eol,start


" Display
"" Vim Status
set title        " タイトル
set number       " 行番号
set ruler        " カーソルの位置表示
set cursorline   " カーソル行の背景
set cursorcolumn " カーソル列の背景
""" Command line
set laststatus=2 " 常にステータスラインを表示
set cmdheight=2  " コマンドラインの高さ
set showmode     " モードの表示
set showcmd      " コマンドの表示
set history=1000 " 履歴
set wildmenu wildmode=list:longest,full " ファイル名補完
"" Character
set list        " 不可視文字を表示
set listchars=tab:>-,extends:>,precedes:<,trail:-,eol:$
                " trail:    行末スペース
                " extends:  右に省略された文字
                " precedes: 左に省略された文字
                " eol:      改行記号
set wrap        " 折り返し表示
set showmatch   "対応する括弧を表示
set matchtime=3
set ambiwidth=double " 2バイト文字を全角に


" Search
set hlsearch   " 検索結果ハイライト
set incsearch  " インクリメンタルサーチ
set wrapscan   " 検索終了したら最初に戻る
set ignorecase " 大文字小文字を無視
set smartcase  " 大文字小文字混在した言葉で検索を行った場合、大文字小文字を区別する
set gdefault   " デフォルトで複数回置換


" Cursor
set virtualedit=onemore 
set whichwrap+=b,s,h,l,<,>,[,], " 行頭／行末でのカーソル移動


" Environment
"" Mouse
set mouse=a


" Map
nnoremap <Left> h
nnoremap <Right> l
"" Command Line
nnoremap <Space>w :<C-u>w<CR>
nnoremap <Space>q :<C-u>q<CR>
nnoremap <Space>Q :<C-u>q!<CR>
nnoremap ; :
"" Cursor
nnoremap <Space>h ^
nnoremap <Space>l $


" Syntax
syntax on
colorscheme desert

" Filetype
filetype on " ファイルタイプ自動検出
filetype plugin indent on
 

" plugin
runtime! vimfiles/*.vim " vimrc分割
