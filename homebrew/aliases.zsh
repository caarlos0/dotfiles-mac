#!/bin/zsh
function brewbump() {
  brew update
  brew upgrade
  brew cleanup
  brew cask cleanup
}
