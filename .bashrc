export PS1="$(tput bold)\w # $(tput sgr0)"
export EDITOR=vim
export PATH="$HOME/.bin:$PATH"

# Load some other files, if they exist.
for file in ~/.{aliases,functions,git-completion.bash}; do
    [ -f "$file" ] && source "$file"
done
unset file
