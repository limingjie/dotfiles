# ZSH

## Setup `$XDG_CONFIG_HOME`

[XDG Base Directory Specification](https://standards.freedesktop.org/basedir-spec/basedir-spec-latest.html) for a dotless home directory.

`/etc/zshenv`

```shell
# Dotless home directory

if [[ -z "$XDG_CONFIG_HOME" ]]
then
    export XDG_CONFIG_HOME="$HOME/.config/"
fi

# zsh
export ZDOTDIR=$XDG_CONFIG_HOME/zsh

# fasd
export _FASD_DATA=$XDG_CONFIG_HOME/fasd/.fasd

# less
export LESSHISTFILE="${XDG_CONFIG_HOME}/less/history"
export LESSKEY="${XDG_CONFIG_HOME}/less/keys"

# vim
export VIMINIT='let $MYVIMRC="$XDG_CONFIG_HOME/vim/vimrc" | source $MYVIMRC'
export VIMDOTDIR="$XDG_CONFIG_HOME/vim"
```

## Install and Setup Prezto

[Prezto](https://github.com/sorin-ionescu/prezto)

Follow [Prezto Installation](https://github.com/sorin-ionescu/prezto#installation) to install Prezto.

More information for step 3 - link profiles, create and run following shell script.

`setupzsh.sh`

```shell
#!/usr/local/bin/zsh

setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done
```
