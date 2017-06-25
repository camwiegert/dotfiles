#!/usr/bin/env bash

# Get the latest Homebrew and upgrade existing packages.
brew update
brew upgrade

# Install some useful packages.
brew install ack
brew install ansible
brew install curl
brew install figlet
brew install git
brew install htop
brew install httpie
brew install imagemagick
brew install neofetch
brew install nmap
brew install openssl
brew install tree
brew install vim
brew install wget
brew install yarn

# Install some apps.
brew cask install 1password
brew cask install atom
brew cask install docker
brew cask install google-chrome
brew cask install hyper
brew cask install imagealpha
brew cask install imageoptim
brew cask install slack
brew cask install spectacle
brew cask install spotify
brew cask install transmission
brew cask install vagrant
brew cask install virtualbox
brew cask install vlc

# Remove outdated packages from the cellar.
brew cleanup
