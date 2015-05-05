# Path to your oh-my-fish.
set fish_path $HOME/.oh-my-fish

# Theme
#set fish_theme robbyrussell
set fish_theme bobthefish

# All built-in plugins can be found at ~/.oh-my-fish/plugins/
# Custom plugins may be added to ~/.oh-my-fish/custom/plugins/
# Enable plugins by adding their name separated by a space to the line below.
set fish_plugins theme
set fish_plugins git-flow rails
set fish_plugins archlinux
set fish_plugins archlinux/pacman
set fish_plugins theme

# Path to your custom folder (default path is ~/.oh-my-fish/custom)
#set fish_custom $HOME/dotfiles/oh-my-fish

# Load oh-my-fish configuration.
. $fish_path/oh-my-fish.fish

set fish_function_path $fish_function_path "~/.local/lib/python3.4/site-packages/powerline/bindings/fish" powerline-setup