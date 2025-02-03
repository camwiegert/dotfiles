fish_vi_key_bindings

set -gx EDITOR vim
bind --mode insert \cp "ctrl_p"

# go
set -gx GOPATH $HOME/.go
fish_add_path $GOPATH/bin

# node
set -gx N_PREFIX $HOME/.node
fish_add_path $N_PREFIX/bin

# homebrew
fish_add_path /opt/homebrew/bin /opt/homebrew/sbin

# ripgrep
set -gx RIPGREP_CONFIG_PATH $HOME/.rgrc

# fzf
set -gx FZF_DEFAULT_COMMAND "fd --type file --hidden --exclude .git"
set -gx FZF_DEFAULT_OPTS "--layout=reverse --style=minimal --preview='bat --color=always {}'"

# prefer `bat`
alias cat "bat"

# prevent accidental overwrites
alias cp "cp -i"
alias mv "mv -i"

# prefer `lsd`
alias ls "lsd -AF --icon=never"

# create intermediate dirs
alias mkdir "mkdir -p"

# prefer `htop`
alias top "htop"

# disable greeting
function fish_greeting
end

# disable default vi mode prompt
function fish_mode_prompt
end

# locals
if test -e $HOME/.local.fish
	source $HOME/.local.fish
end
