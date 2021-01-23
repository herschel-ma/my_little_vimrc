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
Plug 'tpope/vim-repeat'
Plug 'easymotion/vim-easymotion'
Plug 'ianva/vim-youdao-translater'
" markdown
Plug 'iamcco/mathjax-support-for-mkdp'
Plug 'iamcco/markdown-preview.vim'
" Plug 'mattn/transparency-windows-vim'
Plug 'scrooloose/nerdtree'
Plug 'posva/vim-vue'
Plug 'fatih/vim-go', { 'tag': '*' }
" Plug 'dgryski/vim-godef'
Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}
Plug 'joshdick/onedark.vim'
Plug 'yggdroot/indentline'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'mattn/emmet-vim'
Plug 'tomtom/tcomment_vim' "ctrl / /
Plug 'honza/vim-snippets'
Plug 'preservim/tagbar'
Plug 'mileszs/ack.vim'
call plug#end()
