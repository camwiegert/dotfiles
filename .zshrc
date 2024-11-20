bindkey -v
bindkey "^P" up-line-or-search
setopt auto_cd
autoload -Uz compinit promptinit
compinit -u
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

export EDITOR=vim
export FZF_DEFAULT_COMMAND="fd --type file --hidden --exclude .git"
export FZF_DEFAULT_OPTS="--layout=reverse"
export N_PREFIX=$HOME/.node
export RIPGREP_CONFIG_PATH=$HOME/.rgrc
export GOPATH=$HOME/.go

sources=(
	$HOME/.aliases
	$HOME/.functions
	$HOME/.localrc
)

for file in $sources; do
	if [ -f $file ]
		then source $file
	fi
done

unset sources file

path=(
	$HOME/.bin
	$N_PREFIX/bin
	$GOPATH/bin
	$path
)
