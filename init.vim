
" Don't try to be vi compatible
"
set nocompatible

" Helps force plugins to load correctly when it is turned back on below
filetype off
" let g:python_host_prog='C:/Users/foo/Envs/neovim/Scripts/python.exe'

" Pick a leader key
let mapleader = "\<space>"

" Load plugins here (PlugVim)


call plug#begin('~/.config/nvim/plugged')

" Color Theme
Plug 'blueshirts/darcula'

" Visuals
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Utils
Plug 'scrooloose/nerdtree' , { 'on':  'NERDTreeToggle' }
Plug 'kien/ctrlp.vim'
Plug 'terryma/vim-multiple-cursors'
"Plug 'valloric/youcompleteme'
Plug 'tpope/vim-surround'
Plug 'mattn/emmet-vim'
Plug 'easymotion/vim-easymotion'

" Language Support
Plug 'dzeban/vim-log-syntax'
Plug 'jceb/vim-orgmode' 
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'scrooloose/nerdcommenter'

call plug#end()

" Plugin specific key mappings:
"   NERDTree
nmap <leader>n :NERDTreeToggle<CR>
nmap <leader>fed :tabe ~/.config/nvim/init.vim<CR>

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
let g:airline_theme = 'deus'
let g:airline_powerline_fonts = 1
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

" Textmate holdouts

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

map jk <ESC>
map <leader>w <C-w>
