#!/usr/bin/env bash
# Install dotfiles
# Copyright (C) 2015 by Mingjie Li, <limingjie@outlook.com>
# https://github.com/limingjie/dotfiles

# update .zshrc
install zsh/.zshrc ~/

# update config.fish
install fish/config.fish ~/.config/fish/

# update .tmux.conf
install tmux/.tmux.conf ~/

# update .vimrc
install vim/.vimrc ~/

function install() {
  local filename = $1
  local path = $2

  if [ -f $filename ]; then
    if [ -d $path ]; then
      cp $filename $path
      echo "Copied" $filename "to" $path.
    fi
  fi
}
