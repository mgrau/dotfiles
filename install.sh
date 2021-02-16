#!/bin/bash

mv `dirname $0` ~/.dotfiles

ln -s ~/.dotfiles/vimrc ~/.vimrc
ln -s ~/.dotfiles/vim ~/.vim
ln -s ~/.dotfiles/tmux.conf ~/.tmux.conf
ln -s ~/.dotfiles/zshrc ~/.zshrc

git clone git://github.com/tpope/vim-commentary ~/.vim/bundle/vim-commentary
git clone git://github.com/tpope/vim-surround ~/.vim/bundle/vim-surround
git clone git://github.com/tell-k/vim-autopep8 ~/.vim/bundle/vim-autopep8

ln -s ~/.vim/bundle/ftplugin/python_autopep8.vim ~/.vim/plugin/

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone https://github.com/supercrabtree/k ~/.oh-my-zsh/custom/plugins/k

