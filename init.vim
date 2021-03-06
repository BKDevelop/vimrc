
" Don't try to be vi compatible
set nocompatible

" Helps force plugins to load correctly when it is turned back on below
filetype off
let g:python3_host_prog='C:/Python37/python.exe'
" let g:python_host_prog='C:/Users/foo/Envs/neovim/Scripts/python.exe'

" Pick a leader key
let mapleader = "\<space>"

" Load plugins here (PlugVim)


call plug#begin('~\AppData\Local\nvim\plugged')

" Color Theme
Plug 'blueshirts/darcula'

" Visuals
Plug 'itchyny/lightline.vim' " vim-airline slows down nvim-qt for some reason :( 

" Utils
Plug 'scrooloose/nerdtree' , { 'on':  'NERDTreeToggle' }
Plug 'kien/ctrlp.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-surround'
Plug 'mattn/emmet-vim'
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdcommenter'

" Language Support
Plug 'dzeban/vim-log-syntax', { 'for': 'log' }
Plug 'jceb/vim-orgmode', { 'for': 'org' }
Plug 'pangloss/vim-javascript', { 'for': 'js' }
Plug 'leafgarland/typescript-vim', { 'for': 'ts' }
Plug 'rust-lang/rust.vim', { 'for': 'rs' }

" Syntax check and auto-completion
Plug 'w0rp/ale' " linting
Plug 'scrooloose/syntastic'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-jedi', { 'for': 'py' }
Plug 'carlitux/deoplete-ternjs', { 'for': 'js' }
Plug 'mhartington/deoplete-typescript', { 'for': 'ts' }
Plug 'sebastianmarkow/deoplete-rust', { 'for': 'rs' }

call plug#end()

" Plugin specific key mappings:
"   NERDTree
nmap <leader>n :NERDTreeToggle<CR>
nmap <leader>nf :NERDTreeFind<CR>
nmap <leader>nc :NERDTree C:\\<CR>
nmap <leader>ne :NERDTree E:\\<CR>
nmap <leader>fed :tabe C:\Users\koehlerb\AppData\Local\nvim\init.vim<CR>

" Turn on syntax highlighting
syntax on

" For plugins to load correctly
filetype plugin indent on

" Security
set modelines=0

" Show line hybrid numbers
set number
set relativenumber

" Show file stats
set ruler

" Blink cursor on error instead of beeping (grr)
set visualbell

" Encoding
set encoding=utf-8

" Whitespace
set wrap
set textwidth=0
set wrapmargin=0
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

" Remap help key.
inoremap <F1> <ESC>:set invfullscreen<CR>a
nnoremap <F1> :set invfullscreen<CR>
vnoremap <F1> :set invfullscreen<CR>

" Formatting
map <leader>q gqip

" Visualize tabs and newlines
set listchars=tab:▸\ ,eol:¬
" Uncomment this to enable by default:
" set list " To enable by default
" Or use your leader key + l to toggle on/off
map <leader>l :set list!<CR> " Toggle tabs and EOL

" Color Scheme
set termguicolors
colorscheme darcula 

" Costum commands
command Clean execute "%bd | e#"

" Costum movement
imap jj <ESC>
map <leader>w <C-w>
