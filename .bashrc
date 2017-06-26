# Defaults
export PS1="\u:\w $ "
export EDITOR=vim

# Path
export PATH="$HOME/.bin:$PATH"

# Load some other files, if they exist.
for file in ~/.{aliases,functions,git-completion.bash}; do
    [ -f "$file" ] && source "$file"
done
unset file
