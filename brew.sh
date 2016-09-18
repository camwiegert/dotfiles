#!/usr/bin/env bash

# Get the latest Homebrew and upgrade existing packages.
brew update
brew upgrade --all

# Install some useful packages.
brew install ansible
brew install curl
brew install httpie
brew install imagemagick
brew install nmap
brew install openssl
brew install tree
brew install wget

# Remove outdated packages from the cellar.
brew cleanup
