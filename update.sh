#!/usr/bin/env bash
# Update dotfiles to repository
# Copyright (C) 2015 by Mingjie Li, <limingjie@outlook.com>
# https://github.com/limingjie/dotfiles

# update .zshrc
update ~/.zshrc zsh

# update config.fish
update ~/.config/fish/config.fish fish

# update .tmux.conf
update ~/.tmux.conf tmux

# update .vimrc
update ~/.vimrc vim

function update() {
  local filename = $1
  local path = $2

  if [ -f $filename ]; then
    if [ ! -d $path ]; then
      mkdir -p $path
    fi

    cp $filename $path
    echo "Copied" $filename "to" $path.
  fi
}
