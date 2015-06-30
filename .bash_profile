# Defaults
export PS1="cam$ "
export PATH="$HOME/.bin:$PATH"
export EDITOR=nano

# Remote Boxes
alias cambox="ssh cam@camwiegert.com"

# Notes & Configs
alias notes="cd ~/Dropbox/Notes && subl ."
alias dots="cd ~/.dotfiles && subl ."

# Dev Stuff
alias bp="git clone git@github.com:camwiegert/boilerplate.git"
alias subl="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"
alias bin="cd $HOME/.bin"
alias server="http-server -p 8888 -o"

# IPs
alias ip="curl http://icanhazip.com"
alias lip="ipconfig getifaddr en0"

# Functions
function cdev() {
    if [ $# -eq 1 ]
        then cd ~/Dropbox/Dev/$1
        else cd ~/Dropbox/Dev
    fi;
}