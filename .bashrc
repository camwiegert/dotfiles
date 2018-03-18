export EDITOR=vim
export FZF_DEFAULT_COMMAND="fd --hidden --exclude .git"
export PATH="$HOME/.bin:$PATH"
export PS1="$(tput bold)\w # $(tput sgr0)"

for file in ~/.{aliases,functions,localrc,git-completion.bash}; do
  [ -f "$file" ] && source "$file"
done
unset file
