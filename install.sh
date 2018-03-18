#!/bin/bash

files=(
  .ackrc
  .aliases
  .bash_profile
  .bashrc
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
