#!/bin/bash


SYSTEM=$(python -c "import platform; print(platform.system())" 2>&1)
case "$SYSTEM" in
  *Darwin*) OS="Mac" ;;
  *Linux*) OS=$(python -c "import platform; print(platform.dist()[0])" 2>&1) ;;
  *) OS="Other" ;;
esac
OS=`echo $OS | tr '[:upper:]' '[:lower:]'`

if [ "$OS" = "mac" ]; then
   echo "Configuring for Mac..."
   # setup iterm2 integration plugin
   curl -L https://iterm2.com/shell_integration/bash -o ~/.iterm2_shell_integration.bash
   brew install bash-completion
fi

if [ "$OS" = "centos" ]; then
   echo "Configuring for Centos..."
   yum install -y bash-completion bash-completion-extras
fi

# for bash
ln -s $(pwd)/bash/bash_completion ~/.bash_completion
# addon .bash_profile
echo ". $(pwd)/bash/.bash_profile" >> ~/.bash_profile
# addon .bashrc
echo ". $(pwd)/bash/.bashrc_aliases" >> ~/.bashrc
# addon .inputrc
echo '$include'  "$(pwd)/bash/inputrc" >> ~/.inputrc

# for git
# echo "ln -s git/gitconfig ~/.gitconfig"
ln -s $(pwd)/git/gitconfig ~/.gitconfig
# echo "ln -s git/gitignore ~/.gitignore"
ln -s $(pwd)/git/gitignore ~/.gitignore
# echo "ln -s git/git-completion.bash ~/.git-completion.bash"
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
#git clone https://github.com/luotao-au/emacs.d.git emacs.d
#ln -s $(pwd)/emacs.d/ ~/.emacs.d

source ~/.bash_profile
source ~/.bashrc
