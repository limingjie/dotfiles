#!/usr/bin/env zsh
# Install vim plugins
# Copyright (C) 2015 by Mingjie Li, <limingjie@outlook.com>
# https://github.com/limingjie/dotfiles

function install_pathogen() {
  echo "Installing pathogen..."
  mkdir -p ~/.vim/autoload ~/.vim/bundle && \
  curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
}

function install_update_plugin() {
  if [[ -d $1/$2 ]]; then
    echo "Updating plugin $2..."
    cd $1/$2
    git pull
    cd ..
  else
    echo "Installing plugin $2..."
    git clone --depth=1 $3
  fi
}

function install_plugins() {
  bundle=~/.vim/bundle
  cd ${bundle}
  install_update_plugin ${bundle} gruvbox       https://github.com/morhetz/gruvbox.git
  install_update_plugin ${bundle} vim-airline   https://github.com/bling/vim-airline.git
  install_update_plugin ${bundle} vim-gitgutter https://github.com/airblade/vim-gitgutter.git
  install_update_plugin ${bundle} vim-fugitive  https://github.com/tpope/vim-fugitive
  vim -u NONE -c "helptags vim-fugitive/doc" -c q
}

# install vim plug-in manager
install_pathogen

# install vim themes and plug-ins
install_plugins
