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
Plug 'ternjs/tern_for_vim', { 'do': 'npm install' }
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-surround'
Plug 'w0rp/ale'

call plug#end()


"
" Syntax
"

syntax enable
filetype plugin indent on
set omnifunc=syntaxcomplete#Complete


"
" Basic configurations
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
" Basic keys
"

let mapleader = ','

nnoremap j gj
nnoremap k gk

nnoremap <silent> <C-S-i> gg=G
nnoremap <silent> <leader>i <C-S-i>

nnoremap <leader>q :q<cr>
nnoremap <leader>w :w<cr>


"
" Settings
"
nnoremap <silent> <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <silent> <leader>sv :source $MYVIMRC<cr>


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

nnoremap <leader>an :ALENextWrap<CR>
nnoremap <leader>ap :ALEPreviousWrap<CR>


"
" NERDTree
"

nnoremap <C-e> :NERDTreeToggle<CR>


"
" Ctrlp
"

let g:ctrlp_map = '<C-p>'
let g:ctrlp_cmd = 'CtrlP'

let g:ctrlp_custom_ignore = 'node_modules\|\.git'
let g:ctrlp_show_hidden = 1


"
" Prettier
"

nnoremap <silent> <leader>p :Prettier<CR>

"
" Deoplete
"

let g:deoplete#enable_at_startup = 1


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
