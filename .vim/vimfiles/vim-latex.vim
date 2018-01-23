" 表示が重いものを切る
autocmd FileType tex :set nocursorline
autocmd FileType tex :set nocursorcolumn

set foldmethod=syntax
let g:tex_flavor=' latex'
let g:Tex_AutoFolding = 5
let g:Tex_Folding = 5

let g:Tex_FoldedEnvironments = ',frame,block,alertblock,exampleblock'
" beamer のときにsectionでFoldしない
autocmd FileType tex if search('{beamer}') | let g:Tex_FoldedSections = '' | endif

autocmd FileType tex :colorscheme desert
autocmd FileType tex :highlight Folded ctermbg=NONE ctermfg=darkcyan
