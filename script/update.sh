#!/usr/bin/env zsh
# Update dotfiles to repository
# Copyright (C) 2015 by Mingjie Li, <limingjie@outlook.com>
# https://github.com/limingjie/dotfiles

scriptpath=${0:a:h}
dotfilesroot=${scriptpath:h}

function update() {
  if [[ -f $1 ]]; then
    if [[ ! -d $2 ]]; then
      mkdir -p $2
    fi

    cp $1 $2
    echo "Updated" $1 "to" $2.
  fi
}

echo "start updating..."

# update .zshrc
update ~/.zshrc ${dotfilesroot}/zsh

# update config.fish
update ~/.config/fish/config.fish ${dotfilesroot}/fish

# update .tmux.conf
update ~/.tmux.conf ${dotfilesroot}/tmux

# update .vimrc
update ~/.vimrc ${dotfilesroot}/vim

