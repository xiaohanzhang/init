#!/bin/bash
set -e

if ! which brew; then
	ruby <(curl -fsSkL raw.github.com/mxcl/homebrew/go)
fi
get="brew install"

$get macvim git wget python ack
pip install --upgrade distribute
pip install --upgrade pip
pip install virtualenv
git config --global core.editor "vim"
git config --global user.name "Xiaohan Zhang"
git config --global user.email xiaohan.zhang@me.com

if [ -f ~/.vim ]; then
	mv ~/.vim vim.old
fi
if [ -f ~/.vimrc ]; then
	mv ~/.vimrc vimrc.old
fi
if [ -f ~/.bashrc ]; then
	mv ~/.bashrc bashrc.old
fi
if [ -f ~/.bash_profile ]; then
	mv ~/.bash_profile bash_profile.old
fi
ln -sf ~/init/vim ~/.vim
ln -sf ~/.vim/.vimrc ~/.vimrc
ln -sf ~/init/bashrc_mac ~/.bashrc
ln -sf ~/init/bash_profile ~/.bash_profile
ln -sf ~/init/shortcut.sh ~/.shortcut.sh
