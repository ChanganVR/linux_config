#!/bin/bash
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

ln --backup -s ~/linux_config/.bashrc ~/.bashrc
ln --backup -s ~/linux_config/.bash_local ~/.bash_local
ln --backup -s ~/linux_config/.vimrc ~/.vimrc
source ~/.bashrc
