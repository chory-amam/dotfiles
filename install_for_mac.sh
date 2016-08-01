#!/bin/sh

# set -e :エラーがあった場合、そこでとまる
# set -u :未定義の変数があった場合、そこでとまる
set -eu

EXIST_VIM_FILE=$HOME/.vimrc
EXIST_SSH_DIR=$HOME/.ssh
EXIST_GIT_FILE=$HOME/.gitconfig
EXIST_BASH_PROFILE_FILE=$HOME/.bash_profile
EXIST_BASHRC_FILE=$HOME/.bashrc

echo "###################################"
echo "starting install dotfiles for mac!!"
echo "###################################"

# vim
if [ ! -f ${EXIST_VIM_FILE} ]; then
    echo "install vim files"
    ln -s $HOME/Documents/project/dotfiles/vim/.vimrc $HOME
    ln -s $HOME/Documents/project/dotfiles/vim/.gvimrc $HOME
    mkdir $HOME/.vim
    mkdir -p $HOME/.vim/bundle ~/.vim/files
    mkdir -p $HOME/.vim/files/backup $HOME/.vim/files/swap $HOME/.vim/files/undo $HOME/.vim/files/info
    git clone https://www.github.com/Shougo/NeoBundle
    echo "finish install vim files"
fi

# ssh
if [ ! -d ${EXIST_SSH_DIR} ]; then
    echo "install ssh files"
    mkdir $HOME/.ssh
    ln -s $HOME/Documents/project/dotfiles/ssh/config $HOME/.ssh
    echo "finish install ssh files"
fi

# git
if [ ! -f ${EXIST_GIT_FILE} ]; then
    echo "install git files"
    ln -s $HOME/Documents/project/dotfiles/git/.gitconfig $HOME
    echo "finish install git files"
fi

# bash
if [ ! -f ${EXIST_BASH_PROFILE_FILE} ] && [! -f ${EXIST_BASHRC_FILE} ]; then
    echo "install bash files"
    ln -s $HOME/Documents/project/dotfiles/mac/.bash_profile $HOME
    ln -s $HOME/Documents/project/dotfiles/mac/.bashrc $HOME
    echo "finish install bash files"
fi

echo "###################################"
echo "finish install all dotfiles for mac!!"
echo "###################################"
