#!/usr/bin/env zsh
# Install dotfiles
# Copyright (C) 2015 by Mingjie Li, <limingjie@outlook.com>
# https://github.com/limingjie/dotfiles

scriptpath=${0:a:h}

function install() {
  if [ -f $1 ]; then
    if [ -d $2 ]; then
      cp $1 $2
      echo "Installed" $1 "to" $2
    fi
  fi
}

echo "Start installation..."

# update .zshrc
install ${scriptpath}/zsh/.zshrc ~/

# update config.fish
install ${scriptpath}/fish/config.fish ~/.config/fish/

# update .tmux.conf
install ${scriptpath}/tmux/.tmux.conf ~/

# update .vimrc
install ${scriptpath}/vim/.vimrc ~/

