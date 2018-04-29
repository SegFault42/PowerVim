#!/bin/bash

# Install Vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cp -fr .vimrc ~/.vimrc 

vim +PluginInstall +qall
