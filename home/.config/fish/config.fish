
# Path to your oh-my-fish.
set fish_path $HOME/.oh-my-fish

# Theme
set fish_theme simplevi

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-fish/plugins/*)
# Custom plugins may be added to ~/.oh-my-fish/custom/plugins/
# Example format: set fish_plugins autojump bundler
set fish_plugins rvm vi-mode

# Path to your custom folder (default path is $FISH/custom)
#set fish_custom $HOME/dotfiles/oh-my-fish

# Load oh-my-fish configuration.
. $fish_path/oh-my-fish.fish

# Simple alias' that don't warrent a function
alias apt-get=apt-get -y
alias vi=vim
alias c=clear
alias l=ls
alias s=ls
