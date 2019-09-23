export EDITOR=vim
export FZF_DEFAULT_COMMAND="fd --type file --hidden --exclude .git"
export FZF_DEFAULT_OPTS="--layout=reverse"
export N_PREFIX=$HOME/.node
export PATH="$N_PREFIX/bin:$PATH"
export PS1="\[$(tput bold)\]\w # \[$(tput sgr0)\]"
export RIPGREP_CONFIG_PATH="$HOME/.rgrc"

for file in ~/.{aliases,functions,localrc,git-completion.bash}; do
  [ -f "$file" ] && source "$file"
done
unset file
