" Don't try to be vi compatible
set nocompatible

" Helps force plugins to load correctly when it is turned back on below
filetype off

" Vundle
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Vundle Plugins
Plugin 'VundleVim/Vundle.vim' 

" Utils
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-syntastic/syntastic'
Plugin 'tpope/vim-surround'
Plugin 'vim-airline/vim-airline'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'scrooloose/nerdtree.git' 
Plugin 'mattn/emmet-vim'
Plugin 'editorconfig/editorconfig-vim'

" Languages
Plugin 'ternjs/tern_for_vim'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'othree/html5.vim'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'plasticboy/vim-markdown'
Plugin 'tpope/vim-fugitive'
Plugin 'godlygeek/tabular'
Plugin 'slashmili/alchemist.vim'
Plugin 'elixir-editors/vim-elixir'

" Themes
Plugin 'dracula/vim'
Plugin 'rakr/vim-one'
Plugin 'KeitaNakamura/neodark.vim'
Plugin 'whatyouhide/vim-gotham'
Plugin 'ayu-theme/ayu-vim'
Plugin 'cocopon/iceberg.vim'
Plugin 'arcticicestudio/nord-vim'

cal vundle#end()

" Turn on syntax highlighting
syntax on

" For plugins to load correctly
filetype plugin indent on

" Pick a leader key
let mapleader = ","

" Security
set modelines=0

" Show line numbers and relative numbers
set number
set relativenumber

" Show file stats
set ruler

" Blink cursor on error instead of beeping (grr)
set novisualbell
set noerrorbells

" Encoding
set encoding=utf-8

" Whitespace
set wrap
set textwidth=79
set formatoptions=tcqrn1
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set noshiftround

" Cursor motion
set scrolloff=3
set backspace=indent,eol,start
set matchpairs+=<:> " use % to jump between pairs
runtime! macros/matchit.vim

" Move up/down editor lines
nnoremap j gj
nnoremap k gk

" Allow hidden buffers
set hidden

" Rendering
set ttyfast

" Status bar
set laststatus=2

" Last line
set showmode
set showcmd

" Searching
nnoremap / /\v
vnoremap / /\v
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch
map <leader><space> :let @/=''<cr> " clear search

" Backuping files
set nobackup
set nowritebackup

" Remap help key.
inoremap <F1> <ESC>:set invfullscreen<CR>a
nnoremap <F1> :set invfullscreen<CR>
vnoremap <F1> :set invfullscreen<CR>

" Moving lines aroud
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==
inoremap <C-j> <Esc>:m .+1<CR>==gi
inoremap <C-k> <Esc>:m .-2<CR>==gi
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv

" Open file explorer (netrw)
nnoremap <C-e> :NERDTreeToggle<CR>
inoremap <C-e> <Esc><C-e>
vnoremap <C-e> <Esc><C-e>
nnoremap <leader>e :NERDTree<CR>

" Ctrlp
let g:ctrlp_custom_ignore = 'node_modules\|build\|DS_Store|git'

" Markdown preview
let vim_markdown_preview_hotkey='<C-m>'

" YouCompleteMe
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'

" Jsx
let g:jsx_ext_required=0

":Ex<CR> Textmate holdouts

" Formatting
map <leader>q gqip

" Visualize tabs and newlines
set listchars=tab:▸\ ,eol:¬
" Uncomment this to enable by default:
" set list " To enable by default
" Or use your leader key + l to toggle on/off
map <leader>l :set list!<CR> " Toggle tabs and EOL

" Vim .swap files directories
set directory^=$HOME/.vim/tmp//

" Saving files
nmap <C-s> :w<CR>
vmap <C-s> <Esc><C-s>gv
imap <C-s> <Esc><C-s>

" Allows per-project configuration files.
set exrc
set secure

" Auto change dir
" set autochdir

" Enable true color
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

" Color scheme
set background=dark
colorscheme iceberg

