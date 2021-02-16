# Matt's dotfiles

These are some of the settings I like to carry around with me to terminals I spend more than a few minutes working in. Currently it's just some .vimrc settings I enjoy and also a script to clone some of tpope's excellent vim add-ons

## Linux Installation
```sh
git clone https://github.com/mgrau/dotfiles
./dotfiles/install.sh
```

This does the following
* moves the repo to ~/.dotfiles
* creates symbolic links of ~/.vimrc and ~/.vim to files inside ~/.dotfiles
> Make sure that you unlink any existing .vimrc and .vim to begin with
* clones Tim Pope's repositories vim-surround and vim-commentary into ~/.vim/bundles


## Windows Installation
It's not as streamlined, but essentially the following files can be copied,
* put dotfiles/vimrc in C:\Users\USERNAME\_vimrc
* put dotfiles/vim in C:\Users\USERNAME\vimfiles
