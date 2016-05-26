#!/bin/bash

# for bash
#echo "ln -s bash/bash_profile ~/.bash_profile"
ln -s $(pwd)/bash/bash_profile ~/.bash_profile
#echo "ln -s bash/bashrc ~/.bashrc"
ln -s $(pwd)/bash/bashrc ~/.bashrc
#echo "ln -s bash/inputrc ~/.inputrc"
ln -s $(pwd)/bash/inputrc ~/.inputrc

# for git
#echo "ln -s git/gitconfig ~/.gitconfig"
ln -s $(pwd)/git/gitconfig ~/.gitconfig
#echo "ln -s git/gitignore ~/.gitignore"
ln -s $(pwd)/git/gitignore ~/.gitignore
#echo "ln -s git/git-completion.bash ~/.git-completion.bash"
ln -s $(pwd)/git/git-completion.bash ~/.git-completion.bash

# for ssh
ln -s $(pwd)/ssh/config ~/.ssh/config

# for vim
ln -s $(pwd)/vim/ ~/.vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
ln -s $(pwd)/vim/.vimrc ~/.vimrc
vim +PluginInstall +qall
echo "* dont forget to install / update YoucompleteMe"
echo "* https://github.com/j1z0/dotfiles.git"

# for emacs
git clone https://github.com/luotao-au/emacs.d.git emacs.d
ln -s $(pwd)/emacs.d/ ~/.emacs.d

source ~/.bash_profile
source ~/.bashrc
