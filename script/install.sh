#!/usr/bin/env zsh
# Install dotfiles
# Copyright (C) 2015 by Mingjie Li, <limingjie@outlook.com>
# https://github.com/limingjie/dotfiles

scriptpath=${0:a:h}

function install_upgrade_ohmyzsh() {
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

install_upgrade_ohmyzsh

# update .zshrc
install_dotfile ${scriptpath}/../zsh/.zshrc ~/

# update config.fish
install_dotfile ${scriptpath}/../fish/config.fish ~/.config/fish/

# update .tmux.conf
install_dotfile ${scriptpath}/../tmux/.tmux.conf ~/

# install vim plugin
${scriptpath}/vimplugin.sh

# update .vimrc
install_dotfile ${scriptpath}/../vim/.vimrc ~/

