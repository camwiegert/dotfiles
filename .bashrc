export PS1="$(tput bold)\w # $(tput sgr0)"
export EDITOR=vim
export PATH="$HOME/.bin:$PATH"

# Load some other files, if they exist.
for file in ~/.{aliases,functions,git-completion.bash,localrc}; do
    [ -f "$file" ] && source "$file"
done
unset file

# Set up fzf
export FZF_DEFAULT_COMMAND="fd --hidden --exclude .git"

# Bind Ctrl-p to open vim from fzf
bind -x '"\C-p": vim $(fzf);'
