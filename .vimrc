echo 'Hello Changan, have a nice day!'

set number

"use space characters instead of tab
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set textwidth=80
set wrap
set linebreak
set ruler

"using system clipboard
set clipboard=unnamed

set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

Plugin 'L9'

"python indent
"Plugin 'vim-scripts/indentpython.vim'

"autocomplete
Plugin 'Valloric/YouCompleteMe'

"python syntax check
Plugin 'scrooloose/syntastic'
Plugin 'nvie/vim-flake8'

"File browing
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'

"file seach
Plugin 'ctrlpvim/ctrlp.vim'

"staus bar
"Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

call vundle#end()
filetype plugin indent on

"settings for syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"python syntax highlight
let python_highlight_all=1
syntax on

inoremap <c-d> <esc>ddi
inoremap <c-u> <esc>viwUi
inoremap jk <esc>

vnoremap jk <esc>

let mapleader = ","
let maplocalleader = "-" 
nnoremap <leader>c ddO
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

"split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"Enable folding
set foldmethod=indent
set foldlevel=99
"fold with space bar
nnoremap <space> za

iabbrev @@ q604815016@gmail.com
iabbrev ccopy Copyright 2016 Changan Chen, all rights reserved.

autocmd BufNewFile * :write
"autocmd BufRead * :normal gg=G
autocmd BufRead .vimrc noremap <buffer> <localleader>c I"<esc>
autocmd FileType python nnoremap <buffer> <localleader>c I#<esc>
autocmd FileType python setlocal expandtab tabstop=4 softtabstop=4 shiftwidth=4
autocmd FileType C++ nnoremap <buffer> <localleader>c I#<esc> 

"match parameters inside the bracket
onoremap p i(

"match next bracket
onoremap in( :<c-u>normal! f(vi(<cr>
