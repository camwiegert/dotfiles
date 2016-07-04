#!/usr/bin/env bash

# Get the latest Homebrew and upgrade existing packages.
brew update
brew upgrade --all

# Install some useful packages.
brew install curl
brew install wget
brew install httpie
brew install openssl
brew install imagemagick
brew install tree
brew install nmap

# Remove outdated packages from the cellar.
brew cleanup
