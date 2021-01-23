"-----------
" NERDTree
"-----------
map <silent> tt :NERDTreeToggle<CR> " 右下角不会显示出字母-silent
let NERDTreeMinimalUI=1
let NERDTreeChDirMode=2
" Start NERDTree and leave the cursor in it.
" autocmd VimEnter * NERDTree
" Exit Vim if NERDTree is the only window left.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif
