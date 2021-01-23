"-----------
" map
"-----------
map J 3j
map K 3k

map <UP> <nop>
map <DOWN> <nop>
map <LEFT> <nop>
map <RIGHT> <nop>

inoremap <leader>w <ESC>:w<CR>
noremap <leader>w <ESC>:w<CR>
noremap <leader>s <ESC>:source %<CR>
noremap <leader>e <ESC>:e $HOME/.vimrc<CR>

map <leader>tn :tabnew<CR>
map <leader>th :tabp<CR>
map <leader>tl :tabn<CR>
map <leader>tc :tabclose<CR>

map <C-j> <C-w><C-j>
map <C-h> <C-w><C-h>
map <C-l> <C-w><C-l>
map <C-k> <C-w><C-k>
inoremap jj <ESC>


autocmd WinEnter * setlocal cursorline
autocmd WinLeave * setlocal nocursorline
autocmd BufWritePre * :%s/\s\+$//e "删除结尾的空白
if executable("go")
    au BufRead,BufNewFile *.go noremap <F1> :%w !go run %<Enter>
else
    au BufRead,BufNewFile *.go noremap <F1> :echo "you need install golang first"<Enter>
endif
