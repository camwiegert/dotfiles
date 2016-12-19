#!/usr/bin/env bash

# Get the latest Homebrew and upgrade existing packages.
brew update
brew upgrade

# Install some useful packages.
brew install ansible
brew install curl
brew install figlet
brew install httpie
brew install imagemagick
brew install neofetch
brew install nmap
brew install openssl
brew install tree
brew install wget

# Remove outdated packages from the cellar.
brew cleanup
