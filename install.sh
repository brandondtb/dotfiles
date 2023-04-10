#!/usr/bin/env bash

set -x
set -e

cd "$(dirname "$0")"

ln -snf ~/dotfiles/zshrc ~/.zshrc
ln -snf ~/dotfiles/zprofile ~/.zprofile
ln -snf ~/dotfiles/zprofile ~/.profile

ln -snf ~/dotfiles/tmux.conf ~/.tmux.conf

ln -snf ~/dotfiles/vimrc ~/.vimrc
ln -snf ~/dotfiles/ideavimrc ~/.ideavimrc
ln -snf ~/dotfiles/emacs ~/.emacs

ln -snf ~/dotfiles/zplug ~/.zplug

ln -snf ~/dotfiles/pyenv ~/.pyenv
ln -snf ~/dotfiles/pyenv-doctor ~/.pyenv/plugins/pyenv-doctor
ln -snf ~/dotfiles/pyenv-virtualenv ~/.pyenv/plugins/pyenv-virtualenv
ln -snf ~/dotfiles/pyenv-update ~/.pyenv/plugins/pyenv-update

mkdir -p ~/.config
ln -snf ~/dotfiles/nvim ~/.config/nvim
