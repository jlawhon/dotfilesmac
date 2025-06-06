filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab
syntax on

color lunaperche
set background=dark

set softtabstop=4
" set textwidth=79
set autoindent
set fileformat=unix

set cursorline

" Enable line numbers
set nu
" Enable relative line numbering
set rnu
" Enable large scrolloff to keep the line centered on the screen except when near the beginning/end of a file
set so=999
" ruler
set ruler

let mapleader = " " " map leader to Space
map <leader>p :Lexplore<CR>

set splitright
set splitbelow
