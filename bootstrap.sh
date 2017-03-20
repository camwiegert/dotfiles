#!/usr/bin/env bash

# Symlink our dotfiles into ~ interactively. Has to
# be run from within the dotfiles directory.

for file in .{aliases,functions,bash_profile,bashrc,gitconfig,gitignore,hushlogin,hyper.js,inputrc,npmrc,ackrc,vimrc}; do
  ln -i -s "$(pwd)/$file" ~/"$file"
done
unset file
