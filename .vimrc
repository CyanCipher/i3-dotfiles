" Don't try to be vi compatible
"set nocompatible
set cursorline

" Helps force plugins to load correctly when it is turned back on below
"filetype off

" Turn on syntax highlighting
syntax on

" For plugins to load correctly
"filetype plugin indent on

" Security
"set modelines=0

"set clipboard=unnamedplus

" Show line numbers
set number
set relativenumber

" Show file stats
"set ruler

" Blink cursor error on instead of beeping (grr
set visualbell
" Encoding
set encoding=utf-8

" Mappings
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-y> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
nnoremap <silent> sf dawwPbb
nnoremap <silent> sb dawbPl


set tabstop=4 
set shiftwidth=2
set softtabstop=4

" Cursor motion
set scrolloff=0
set backspace=indent,eol,start
set matchpairs+=<:> " use % to jump between pairs

" Move up/down editor lines
nnoremap j gj
nnoremap k gk

set ttyfast
" Status bar
set laststatus=2

" Searching
nnoremap / /
vnoremap / /
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
map <leader>l :set list!<CR> " Toggle tabs and EOL

" Color scheme (terminal)
set t_Co=256
set background=dark


" My Dvorak bindings
noremap h h
noremap H H
noremap n j
noremap N J
noremap t k
noremap T K
noremap s l
noremap S L
noremap l n
noremap L N
noremap j t
noremap J T
noremap k s


" plugins

call plug#begin()

Plug 'vim-airline/vim-airline'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'catppuccin/vim', { 'as': 'catppuccin' }
Plug 'christoomey/vim-tmux-navigator'
Plug 'Yggdroot/indentLine'
Plug 'jiangmiao/auto-pairs'
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/gv.vim'

call plug#end()

set termguicolors

"set background=dark
colorscheme catppuccin_mocha
let g:airline_theme = 'catppuccin_mocha'

let g:indentLine_setColors = 1
let g:indentLine_enabled = 1
