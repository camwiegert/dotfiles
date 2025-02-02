#!/bin/bash

set -e

# Be sure fish, stow are installed
for bin in fish stow; do
	if ! which $bin >/dev/null 2>&1; then
		echo -e "\n$bin is not installed. Exiting...\n"
		exit 1
	fi
done

# Be sure we can sudo
if ! sudo -v; then
	echo -e "\nFailed to get sudo permissions. Exiting...\n"
	exit 1
fi

# Install dotfiles
stow --verbose=2 .

# Add fish to available shells
if ! grep -q fish /etc/shells; then
	which fish | sudo tee -a /etc/shells
fi

# Set fish as default shell
sudo chsh -s $(which fish) $(whoami)
