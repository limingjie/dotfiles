#!/usr/bin/env zsh

function relink() {
  if [[ -L $2 ]]; then
    echo "Remove existing link $2"
    rm $2
  fi

  if [[ -e $2 ]]; then
    echo "$2 is not a symbolic link."
  else
    echo "Recreate link        $2"
    if [[ ! -d ${2:h} ]]; then
      mkdir -p ${2:h}
    fi
    ln -s $1 $2
  fi
}

function relink_sudo() {
  if [[ -L $2 ]]; then
    echo "Remove existing link $2"
    sudo rm $2
  fi

  if [[ -e $2 ]]; then
    echo "$2 is not a symbolic link."
  else
    echo "Recreate link        $2"
    sudo ln -s $1 $2
  fi
}

scriptpath=${0:a:h}
dotfilesroot=${scriptpath:h}

if [[ $(uname) == "Darwin" ]]; then
  relink_sudo ${dotfilesroot}/etc/zshenv            /etc/zshenv
else
  relink_sudo ${dotfilesroot}/etc/zshenv            /etc/zsh/zshenv
fi

relink      ${dotfilesroot}/alacritty/alacritty.yml        ~/.config/alacritty.yml
relink      ${dotfilesroot}/kitty/kitty.conf               ~/.config/kitty/kitty.conf
relink      ${dotfilesroot}/kitty/theme.conf               ~/.config/kitty/theme.conf
relink      ${dotfilesroot}/nvim/init.vim                  ~/.config/nvim/init.vim
relink      ${dotfilesroot}/starship/starship.toml         ~/.config/starship.toml
relink      ${dotfilesroot}/wezterm/wezterm.lua            ~/.config/wezterm/wezterm.lua
relink      ${dotfilesroot}/wezterm/wallpapers             ~/.config/wezterm/wallpapers
relink      ${dotfilesroot}/zellij/default.kdl             ~/.config/zellij/layouts/default.kdl
relink      ${dotfilesroot}/zellij/plugins/zjstatus.wasm   ~/.config/zellij/plugins/zjstatus.wasm
relink      ${dotfilesroot}/zsh/zshrc                      ~/.config/zsh/.zshrc
