#!/bin/bash

brew update
brew upgrade

# Install some useful packages.
brew install ack
brew install curl
brew install fd
brew install figlet
brew install fzf
brew install git
brew install htop
brew install httpie
brew install neofetch
brew install nmap
brew install node
brew install pandoc
brew install tree
brew install vim
brew install wget

# Install some apps.
brew cask install 1password
brew cask install docker
brew cask install google-chrome
brew cask install imagealpha
brew cask install imageoptim
brew cask install ngrok
brew cask install sketch
brew cask install slack
brew cask install spectacle
brew cask install spotify
brew cask install transmission
brew cask install transmit
brew cask install vlc

# Remove outdated packages.
brew cleanup
