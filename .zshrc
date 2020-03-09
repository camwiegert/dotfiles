bindkey -v
setopt auto_cd
autoload -Uz compinit promptinit
compinit
promptinit
prompt pure
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

export EDITOR=vim
export FZF_DEFAULT_COMMAND="fd --type file --hidden --exclude .git"
export FZF_DEFAULT_OPTS="--layout=reverse"
export N_PREFIX=$HOME/.node
export GOPATH=$HOME/.go

path=(
    $HOME/.bin
    $N_PREFIX/bin
    $path
)

sources=(
    ~/.aliases
    ~/.functions
    ~/.localrc
)

for file in $sources; do
    if [ -f $file ]
        then source $file
    fi
done

unset sources file
