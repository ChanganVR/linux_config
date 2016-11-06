#!/bin/bash

mv .vimrc .vimrc_backup
cp ~/.vimrc .vimrc
git add .vimrc
git commit -m "update .vimrc"
git push
