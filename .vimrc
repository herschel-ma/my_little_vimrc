"-----------
" basic settings
"-----------
set nocompatible
set noswapfile
set clipboard=unnamed
set noimdisable  " 设置切换到insert输入法变为英文
if has("gui_running")
set imactivatekey=C-space
inoremap <ESC> <ESC>:set iminsert=0<CR>
endif
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8
set cindent
set history=500
let mapleader=","
set foldmethod=indent
set pythonthreedll=python39.dll


"-----------
"  scroll
"-----------
set scrolloff=3

"-----------
"  search
"-----------
set hlsearch
set incsearch
set ignorecase

"-----------
" filetype
"-----------
filetype on
filetype indent on
filetype plugin on

"-----------
" tab space
"-----------
set softtabstop=4 "设置tab键长度为4个空格
set shiftwidth=4  " 设置缩进时候为4个空格
set expandtab  "设置将tab键转换为空格

"-----------
" tab
"-----------
set showtabline=2 "页签一直显示
set splitbelow
set splitright
set smarttab

"-----------
" gui
"-----------
set gfn=Courier_New:h11
set guioptions-=m
set guioptions-=T
set guioptions-=r
set guioptions-=R
set guioptions-=l
set guioptions-=L
set guioptions-=h
set guioptions-=H
set guioptions-=b
set guioptions-=e
set backspace=indent,eol,start  " 设置退格键可用
autocmd GUIEnter * simalt ~x  " 设置全屏

"-----------
" plugin
"-----------
set rtp+=~/.vim/autoload
call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mhinz/vim-startify'  " 打开界面时显示最近打开的文件
Plug 'tpope/vim-surround'
Plug 'easymotion/vim-easymotion'
Plug 'ianva/vim-youdao-translater'
" markdown
Plug 'iamcco/mathjax-support-for-mkdp'
Plug 'iamcco/markdown-preview.vim'
Plug 'mattn/transparency-windows-vim'
Plug 'rakr/vim-one'  " 主题
" File navigation
Plug 'scrooloose/nerdtree'
Plug 'posva/vim-vue'
" go 主要插件
Plug 'fatih/vim-go', { 'tag': '*' }
" " go 中的代码追踪，输入 gd 就可以自动跳转
" Plug 'dgryski/vim-godef'
Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}
Plug 'joshdick/onedark.vim'
Plug 'yggdroot/indentline'
call plug#end()

"-----------
" vim-airline
"-----------
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1


"-----------
" NERDTree
"-----------
map tt :NERDTreeToggle<CR>
map nc :NERDTreeCWD<CR>
map cdd :NERDTree D:<CR>
map cde :NERDTree E:<CR>

"-----------
" vim-vue
"-----------
let g:vue_pre_processors = 'detect_on_enter'

"-----------
" translator
"-----------
vnoremap <silent> <C-T> :<C-u>Ydv<CR>
nnoremap <silent> <C-T> :<C-u>Ydc<CR>
noremap <leader>yd :<C-u>Yde<CR>

"-----------
" markdown
"-----------
let g:mkdp_auto_close=0
nmap <silent> <F8> <Plug>MarkdownPreview        " for normal mode
imap <silent> <F8> <Plug>MarkdownPreview        " for insert mode
nmap <silent> <F9> <Plug>StopMarkdownPreview    " for normal mode
imap <silent> <F9> <Plug>StopMarkdownPreview    " for insert mode

"-----------
" vim-go
"-----------
let g:go_fmt_command = "goimports" " 格式化将默认的 gofmt 替换
let g:go_autodetect_gopath = 1
let g:go_list_type = "quickfix"

let g:go_version_warning = 1
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_methods = 1
let g:go_highlight_generate_tags = 1

let g:godef_split=2

autocmd BufWritePre *.go :

"缩进为4
set shiftwidth=4
set softtabstop=4
"Tab键的宽度
set tabstop=4"
set autoindent
set cindent
" Tab键的宽度
set tabstop=4
" 统一缩进为4
set softtabstop=4
set shiftwidth=4
" 使用空格代替制表符
set expandtab
" 在行和段开始处使用制表符
set smarttab

"-----------
" easymotion
"-----------
nmap <leader>m <Plug>(easymotion-s2)

"-----------
" 透明度
"-----------
if executable("vimtweak.dll")
autocmd guienter * call libcallnr("vimtweak","SetAlpha",200)
endif

"-----------
" coc
"-----------
" if hidden is not set, TextEdit might fail.
set hidden

" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup

" Better display for messages
set cmdheight=2

" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" Or use `complete_info` if your vim support it, like:
" inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Remap for format selected region
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap for do codeAction of current line
nmap <leader>ac  <Plug>(coc-codeaction)
" Fix autofix problem of current line
nmap <leader>qf  <Plug>(coc-fix-current)

" Create mappings for function text object, requires document symbols feature of languageserver.
xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)

" Use <TAB> for select selections ranges, needs server support, like: coc-tsserver, coc-python
nmap <silent> <TAB> <Plug>(coc-range-select)
xmap <silent> <TAB> <Plug>(coc-range-select)

" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')

" Use `:Fold` to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" use `:OR` for organize import of current buffer
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add status line support, for integration with other plugin, checkout `:h coc-status`
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Using CocList
" Show all diagnostics
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>

autocmd BufWritePre *.go :call CocAction('runCommand', 'editor.action.organizeImport')

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
