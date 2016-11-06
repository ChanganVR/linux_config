echo 'Hello Changan, have a nice day!'

set number

set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set textwidth=80
set wrap
set linebreak

set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

Plugin 'L9'

call vundle#end()
filetype plugin indent on

"colorscheme darkblue

noremap <Up> <nop>
noremap <Right> <nop>
noremap <Down> <nop>
noremap <Left> <nop>

inoremap <c-d> <esc>ddi
inoremap <c-u> <esc>viwUi
inoremap jk <esc>

vnoremap jk <esc>

let mapleader = "-"
let maplocalleader = "\\"
nnoremap <leader>c ddO
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

iabbrev @@ q604815016@gmail.com
iabbrev ccopy Copyright 2016 Changan Chen, all rights reserved.

autocmd BufNewFile * :write
autocmd BufRead * :normal gg=G
autocmd FileType python nnoremap <buffer> <localleader>c I//<esc>
autocmd FileType C++ nnoremap <buffer> <localleader>c I#<esc> 

"match parameters inside the bracket
onoremap p i(

"match next bracket
onoremap in( :<c-u>normal! f(vi(<cr>
