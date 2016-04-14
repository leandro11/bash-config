#!/bin/bash

# for bash
#echo "ln -s ~/bash-config/.bash_profile ~/.bash_profile"
ln -s ~/bash-config/.bash_profile ~/.bash_profile
#echo "ln -s ~/bash-config/.bashrc ~/.bashrc"
ln -s ~/bash-config/.bashrc ~/.bashrc
#echo "ln -s ~/bash-config/.inputrc ~/.inputrc"
ln -s ~/bash-config/.inputrc ~/.inputrc

# for git
#echo "ln -s ~/bash-config/.gitconfig ~/.gitconfig"
ln -s ~/bash-config/.gitconfig ~/.gitconfig
#echo "ln -s ~/bash-config/.gitignore ~/.gitignore"
ln -s ~/bash-config/.gitignore ~/.gitignore
#echo "ln -s ~/bash-config/.git-completion.bash ~/.git-completion.bash"
ln -s ~/bash-config/.git-completion.bash ~/.git-completion.bash

# for vim
ln -s ~/bash-config/vim/ ~/.vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
ln -s ~/bash-config/vim/.vimrc ~/.vimrc
vim +PluginInstall +qall
echo "* dont forget to install / update YoucompleteMe"
echo "* https://github.com/j1z0/dotfiles.git"

# for emacs
git clone https://github.com/luotao-au/emacs.d.git ~/bash-config/emacs.d
ln -s ~/bash-config/emacs.d/ ~/.emacs.d
