#!/usr/bin/env zsh
# Install dotfiles
# Copyright (C) 2015 by Mingjie Li, <limingjie@outlook.com>
# https://github.com/limingjie/dotfiles

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
install zsh/.zshrc ~/

# update config.fish
install fish/config.fish ~/.config/fish/

# update .tmux.conf
install tmux/.tmux.conf ~/

# update .vimrc
install vim/.vimrc ~/

