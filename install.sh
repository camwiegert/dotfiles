#!/bin/bash

files=(
  .aliases
  .bash_profile
  .bashrc
  .editorconfig
  .functions
  .gitconfig
  .gitignore
  .hushlogin
  .inputrc
  .vimrc
)

# Symlink into ~ interactively
for file in "${files[@]}"; do
  ln -i -s "$(pwd)/$file" ~/"$file"
done
