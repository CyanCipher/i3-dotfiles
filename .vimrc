noremap h h
noremap H H
noremap t k
noremap T K
noremap n j
noremap N J
noremap s l
noremap S L
noremap l n
noremap L N
noremap j t
noremap J T
noremap k s
noremap K S
nmap <C-h> :call system('tmux select-pane -L')<CR>i<Esc>
imap <C-h> <Esc>:call system('tmux select-pane -L')<CR>i<Esc>

set laststatus=2
set statusline=buf\ %n:\ %F\ %m%r\ %=%l,%c\ \ \ \ \ \ \ \ %p%%
set number relativenumber
set autoindent
set expandtab 
set tabstop=4
set shiftwidth=4
set softtabstop=4
set clipboard=unnamedplus
set ttimeoutlen=0
set hlsearch
set ignorecase
set smartcase
set incsearch
set termguicolors
set guioptions-=T
set guioptions-=m
set guioptions-=r
colorscheme default
"let g:indent_guides_enable_on_vim_startup = 1

syntax on
filetype plugin indent on
au BufRead,BufNewFile *.gml set filetype=gml
hi StatusLine ctermbg=white ctermfg=DarkGrey

" BASIC CONFS
set nocompatible
set path+=**
set wildmenu

let g:netrw_banner=0
let g:netrw_brows_split=4
let g:netrw_altv=1
let g:netrw_lifestyle=3

command! MakeTags !ctags -R .


" CUSTOM STATUS LINE

" Formats the statusline
set statusline=%f                           " file name
set statusline+=\ %=                        " align left
set statusline+=[%p%%]                      " line X of Y [percent of file]
set statusline+=\ %c                        " Column number
set statusline+=\:%n                        " Buffer number
