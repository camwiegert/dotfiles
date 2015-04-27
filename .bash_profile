# Defaults
export PS1="cam$ "
export PATH="$HOME/.bin:$PATH"
export EDITOR=nano

# Remote Boxes
alias cambox="ssh root@camwiegert.com"

# Notes & Configs
alias notes="cd ~/Dropbox/Notes && subl ."
alias dots="cd ~/.dotfiles && subl ."

# Dev Stuff
alias bp="git clone git@github.com:camwiegert/boilerplate.git"
alias subl="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"
alias cdev="cd ~/Dropbox/Dev"
alias bin="cd $HOME/.bin"

# IPs
alias ip="curl http://icanhazip.com"
alias lip="ipconfig getifaddr en0"
