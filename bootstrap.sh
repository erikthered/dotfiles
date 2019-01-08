#!/bin/bash

# XCode cli tools
xcode-select --version || xcode-select --install

# Homebrew
brew --version || /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install from Brewfile
brew bundle install Brewfile

stow hyper
stow zsh
