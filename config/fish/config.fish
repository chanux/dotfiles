# Path to your oh-my-fish.
set fish_path $HOME/.oh-my-fish

# Theme
set fish_theme numist 

# 256 termcolors for vim colorschemes
set -g TERM xterm-256color

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-fish/plugins/*)
# Custom plugins may be added to ~/.oh-my-fish/custom/plugins/
# Example format: set fish_plugins autojump bundler

# Path to your custom folder (default path is $FISH/custom)
#set fish_custom $HOME/dotfiles/oh-my-fish
set fish_plugins python vi-mode za z

# Load oh-my-fish configuration.
. $fish_path/oh-my-fish.fish

# for virtualenv
set -g VIRTUALFISH_COMPAT_ALIASES #virtualenvwrapper style commands
. /home/chanux/.bin/virtualfish/virtual.fish

setenv EDITOR vim

# for vex
set PATH /home/chanux/.local/bin $PATH
