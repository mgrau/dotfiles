#!/bin/bash

mv `dirname $0` ~/.dotfiles

ln -s ~/.dotfiles/vimrc ~/.vimrc
ln -s ~/.dotfiles/vim ~/.vim

git clone git://github.com/tpope/vim-commentary ~/.vim/bundle/vim-commentary
git clone git://github.com/tpope/vim-surround ~/.vim/bundle/vim-surround
git clone git://github.com/tell-k/vim-autopep8 ~/.vim/bundle/vim-autopep8

ln -s ~/.vim/bundle/ftplugin/python_autopep8.vim ~/.vim/plugin/
