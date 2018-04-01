#!/bin/bash

if ! [ -x "$(command -v brew)" ]; then
  echo "Installing brew..."
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
  echo "Brew already installed. Skipping..."
fi

#Dev Tools
brew install node
brew install cask
brew cask install caskroom/versions/java8
brew install node
brew install maven
brew install yarn
brew install angular-cli
brew cask install postman
gem install hitch

#Productivity Tools
brew cask install spectacle
brew cask install flycut
brew cask install iterm2

#Communication Apps
brew cask install microsoft-teams
