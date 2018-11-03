#!/bin/bash

# Check for Homebrew
if test ! $(which brew); then
  echo "Installing homebrew..."
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew update

brew install brew-cask

brew install caskroom/cask/brew-cask

brew install coreutils

brew install bash

brew install findutils