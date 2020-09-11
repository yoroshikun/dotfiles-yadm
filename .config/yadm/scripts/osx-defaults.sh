#!/bin/sh

system_type=$(uname -s)

if [ "$system_type" = "Darwin" ]; then
    # enable Key Repeat
    defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false

    # increase Key repeat speed
    defaults write NSGlobalDomain KeyRepeat -int 2
    defaults write NSGlobalDomain InitialKeyRepeat -int 15

    # enable hidden files

    defaults write com.apple.Finder AppleShowAllFiles true

    # show the ~/Library folder
    chflags nohidden ~/Library
fi