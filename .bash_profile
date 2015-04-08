# Defaults
export PS1="\u$ "
export PATH="$HOME/.bin:$PATH"
export EDITOR=nano

# Preferred Flags
alias ls="ls -aF"

# Remote Boxes
alias cambox="ssh root@camwiegert.com"
alias humperdink="ssh humperdink@humperdinks-imac.local"

# Notes & Configs
alias notes="cd ~/Dropbox/Notes && subl ."
alias dots="cd ~/.dotfiles && subl ."

# Dev Stuff
alias bp="git clone https://github.com/camwiegert/boilerplate.git"
alias subl="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"
alias cdev="cd ~/Dropbox/Dev"

# IPs
alias ip="curl http://icanhazip.com"
alias lip="ipconfig getifaddr en0"
