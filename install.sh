#!/bin/zsh

files=(
    .aliases
    .editorconfig
    .functions
    .gitconfig
    .gitignore
    .hushlogin
    .npmrc
    .vimrc
    .zshrc
)

for file in $files; do
  ln -s -i "$(pwd)/$file" ~/"$file"
done

unset files;
