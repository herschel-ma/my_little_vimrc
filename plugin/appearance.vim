"------------
" appearance
"------------
set termguicolors
colorscheme monokai
set background=dark
set t_Co=256
set nu
set relativenumber
set noshowmode
set showcmd
set nolist " 末尾不显示制表符
set wrap
set linebreak " 在比较适当的地方换行
set ruler
set cursorline
syntax on
syntax enable
"-----------
" 透明度
"-----------
if executable("vimtweak.dll")
autocmd guienter * call libcallnr("vimtweak","SetAlpha",200)
endif
highlight EndOfBuffer ctermfg=bg
