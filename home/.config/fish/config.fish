
# Path to your oh-my-fish.
set fish_path $HOME/.oh-my-fish

# Theme
set fish_theme simplevi

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-fish/plugins/*)
# Custom plugins may be added to ~/.oh-my-fish/custom/plugins/
# Example format: set fish_plugins autojump bundler
set fish_plugins rvm vi-mode vundle

# Path to your custom folder (default path is $FISH/custom)
#set fish_custom $HOME/dotfiles/oh-my-fish

# Load oh-my-fish configuration.
. $fish_path/oh-my-fish.fish

# link in local tools I want
set fish_user_paths $fish_user_paths ~/tools/AWS-ElasticBeanstalk-CLI-2.6.1/eb/linux/python2.7

# link local bin
set fish_user_paths $fish_user_paths ~/bin

# Simple alias' that don't warrent a function
alias apt-get=apt-get -y
alias vi=vim
alias c=clear
alias l=ls
alias s=ls
