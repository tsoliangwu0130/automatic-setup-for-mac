#! /bin/bash

if test $(which zsh); then
  echo "Install zsh"
  brew install zsh
  sudo sh -c "echo $(which zsh) >> /etc/shells" 
  chsh -s $(which zsh)
  
  echo "Install oh-my-zsh"
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi