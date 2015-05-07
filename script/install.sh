#!/usr/bin/env zsh
# Install dotfiles
# Copyright (C) 2015 by Mingjie Li, <limingjie@outlook.com>
# https://github.com/limingjie/dotfiles

scriptpath=${0:a:h}
dotfilesroot=${scriptpath:h}

function install_ohmyzsh() {
  if [[ ! -d ~/.oh-my-zsh ]]; then
    echo "Installing oh-my-zsh..."
    curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh
  fi
}

function install_dotfile() {
  if [[ -f $1 ]]; then
    if [[ -d $2 ]]; then
      cp $1 $2
      echo "Installed" $1 "to" $2
    fi
  fi
}

echo "Start installation..."

# install oh-my-zsh
install_ohmyzsh

# install .zshrc
install_dotfile ${dotfilesroot}/zsh/.zshrc ~/

# install config.fish
install_dotfile ${dotfilesroot}/fish/config.fish ~/.config/fish/

# install .tmux.conf
install_dotfile ${dotfilesroot}/tmux/.tmux.conf ~/

# install vim plugin
${scriptpath}/vimplugin.sh

# install .vimrc
install_dotfile ${dotfilesroot}/vim/.vimrc ~/

