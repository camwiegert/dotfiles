#!/usr/bin/env bash

# Symlink our dotfiles into ~ interactively. Has to
# be run from within the dotfiles directory.

for file in .{aliases,bash_profile,gitconfig,gitignore,hushlogin,inputrc,npmrc}; do
  ln -i -s "$(pwd)/$file" ~/"$file"
done
unset file
