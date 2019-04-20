"
" Core
"

set nocompatible
filetype off


"
" Plug
"

call plug#begin('~/.vim/plugged')

"" Plugins go here!
Plug 'ayu-theme/ayu-vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'tpope/vim-surround'
Plug 'w0rp/ale'

call plug#end()


"
" Basics
"

set number
set relativenumber
set wrap
set encoding=utf-8
set mouse=a
set wildmenu
set lazyredraw
set showmatch
set laststatus=2
set ruler
set visualbell


"
" Key bindings
"

let mapleader = ','

nmap j gj
nmap k gk

nmap <silent> <C-S-i> gg=G
nmap <silent> <Leader>i <C-S-i>


"
" Syntax
"

syntax enable
filetype plugin indent on


"
" Tabs settings
"

set tabstop=2
set expandtab
set shiftwidth=2

set autoindent
set smartindent


"
" Search settings
"

set incsearch
set hlsearch

nnoremap <CR> :nohlsearch<CR><CR>


"
" Miscellaneous
"

set cursorline
set backspace=indent,eol,start

"" Allows per-project configuration files.
set exrc
set secure


"
" ALE
"

nmap <Leader>an :ALENextWrap<CR>
nmap <Leader>ap :ALEPreviousWrap<CR>


"
" NERDTree
"

map <C-e> :NERDTreeToggle<CR>


"
" Ctrlp
"

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

let g:ctrlp_custom_ignore = 'node_modules\|git'
let g:ctrlp_show_hidden = 1


"
" Syntastic
"
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


"
" Prettier
"

nmap <silent> <C-S-p> :Prettier<CR>
imap <silent> <C-S-p> <ESC><C-S-p>
nmap <silent> <Leader>p <C-S-p>


"
" Appearance
"

"" Enable true color
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

set background=dark

"" Schema
let ayucolor='mirage'
colorscheme ayu

