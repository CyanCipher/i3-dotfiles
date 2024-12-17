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

set statusline=2
set statusline=%f "tail of the filename
set number relativenumber
set autoindent
set expandtab 
set tabstop=4
set shiftwidth=4
set softtabstop=4
set clipboard=unnamedplus
set ttimeoutlen=0
syntax on

" BASIC CONFS
set nocompatible
set path+=**
set wildmenu

let g:netrw_banner=0
let g:netrw_brows_split=4
let g:netrw_altv=1
let g:netrw_lifestyle=3
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'

command! MakeTags !ctags -R .
