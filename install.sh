#!/bin/sh

# Symlink
ln -sF ~/dotfiles/.vimrc ~/

# Install Vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
