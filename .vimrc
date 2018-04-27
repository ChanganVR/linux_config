"echo 'Hello Changan, have a nice day :)'

set pastetoggle=<F2>
set number
"set relativenumber

"use space characters instead of tab
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

set autoindent
"insert a newline when text exceeds 80 characters
"set textwidth=80
set wrap
set linebreak
set nolist
set ruler

"highlight search result
set hlsearch
set incsearch
set ignorecase
nnoremap <CR> :nohlsearch<cr>

"match corresponding brackets
set showmatch

"set 3 line space when scorlling
set scrolloff=3

"no .swap file
set nobackup
set noswapfile

"highlight cursor position
set t_Co=256
set cursorline
set cursorcolumn
highlight Cursor       cterm=NONE ctermbg=gray ctermfg=white guibg=darkred guifg=white
highlight CursorLine   cterm=NONE ctermbg=gray ctermfg=white guibg=darkred guifg=white
highlight CursorColumn cterm=NONE ctermbg=gray ctermfg=white guibg=darkred guifg=white 
"nnoremap <Leader>c :set cursorline! cursomn!<CR>

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

"python syntax highlight
"Plugin 'hdima/python-syntax'

"autocomplete
"Plugin 'Valloric/YouCompleteMe'

"python syntax check
Plugin 'scrooloose/syntastic'
Plugin 'nvie/vim-flake8'

"File browing
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'

"file search
Plugin 'ctrlpvim/ctrlp.vim'

"staus bar
"Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'vim-airline/vim-airline'

"match and insert brackets
Plugin 'jiangmiao/auto-pairs'

"color scheme
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'

call vundle#end()
filetype plugin indent on

"airline config
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_atl_sep = ' '
let g:airline#extensions#tabline#buffer_nr_show = 1

if has('gui_running')
    "echo 'color scheme in GUI mode'
    set background=light
    autocmd GUIEnter * set fullscreen
    colorscheme solarized
else
    "echo 'color scheme in CLI mode'
    "set background=dark
    colorscheme zenburn
endif

"settings for syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_python_flake8_post_args='--ignore=E501'

let NERDTreeShoeHidden=1

"python syntax highlight
let python_highlight_all=1
syntax on

inoremap <c-d> <esc>ddi
inoremap <c-u> <esc>viwUi
inoremap jk <esc>

vnoremap jk <esc>

let mapleader = " "
let maplocalleader = "," 
nnoremap <leader>c ddO
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <leader>pl :PluginInstall<cr>
nnoremap <leader>nt :NERDTreeToggle<cr>
nnoremap <leader>w :w<cr>
nnoremap <leader>q :q<cr>
nnoremap <leader>i i<space><esc>
nnoremap <leader>st :SyntasticToggleMode<cr>
nnoremap <leader>sc :SyntasticCheck<cr>
"close error temporarily
nnoremap <leader>sr :SyntasticReset<cr>
nnoremap <leader>yd :YcmDiags<cr>


set splitbelow
set splitright
"windows navigation
"switch window
"nmap <c-w> <c-w><c-w>
"move to window below
nnoremap <c-j> <c-w><c-j>
"move to window above
nnoremap <c-k> <c-w><c-k>
"move to window left
nnoremap <c-l> <c-w><c-l>
"move to window right
nnoremap <c-h> <c-w><c-h>
"quit a window
"nnoremap <c-q> <c-w>q


"move between displayed line not real line
map j gj
map k gk

"move between buffers
nnoremap bp :bp<cr>
nnoremap bn :bn<cr>

"Enable folding
set foldmethod=indent
set foldlevel=99
"fold with space bar
nnoremap <space> za

iabbrev @@ q604815016@gmail.com
iabbrev ccopy Copyright 2016 Changan Chen, all rights reserved.
iabbrev slef self

"autocmd BufNewFile * :write
"autocmd BufRead * :normal gg=G
autocmd BufRead .vimrc noremap <buffer> <localleader>c I"<esc>
autocmd FileType python nnoremap <buffer> <localleader>c I#<space><esc>
autocmd FileType python setlocal expandtab tabstop=4 softtabstop=4 shiftwidth=4
autocmd FileType C++ nnoremap <buffer> <localleader>c I#<esc> 

"place cursor in the last exit place
autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal g`\"" |
    \ endif

"match parameters inside the bracket
onoremap p i(

"match next bracket
onoremap in( :<c-u>normal! f(vi(<cr>
