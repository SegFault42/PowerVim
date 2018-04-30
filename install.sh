#!/bin/bash

git clone https://github.com/SegFault42/vim_config /tmp/vim_config

# Install Vundle
if [ -d "~/.vim/bundle/Vundle.vim" ]; then
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
	printf "\033[32mInstalling Vundle\n\033[0m"
else
	printf "\033[31mVundle already installed\n\033[0m"
fi

cp -fr /tmp/vim_config/.vimrc ~/.vimrc 
vim +PluginInstall +qall

#install colorscheme
mkdir -p ~/.vim/colors
cp -fr /tmp/vim_config/colors ~/.vim/

printf "\033[32mInstallation done.\n\033[0m"
