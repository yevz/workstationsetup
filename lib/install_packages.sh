#!/bin/bash

if ! [ -x "$(command -v brew)" ]; then
  echo "Installing brew..."
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
  echo "Brew already installed. Skipping..."
fi

#Dev Tools
# brew install node
# brew install cask
# brew cask install caskroom/versions/java8
# brew install node
# brew install maven
# brew install yarn
# brew install angular-cli
# brew cask install postman
# gem install hitch

#Productivity Tools
brew install Rectangle
brew install flycut
brew install windows-app
brew install visual-studio-code
brew install awscli
brew install git
brew install git-gui
brew install docker
brew install menubarx
brew install zsh-autosuggestions

#image
brew install m-cli
