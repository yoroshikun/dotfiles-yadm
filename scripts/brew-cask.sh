#!/bin/sh

system_type=$(uname -s)

if [ "$system_type" = "Darwin" ]; then
    brew tap caskroom/cask
    brew tap caskroom/fonts
    brew tap caskroom/versions

    brew cask install android-studio
    brew cask install discord
    brew cask install docker
    brew cask install firefox-developer-edition
    brew cask install flux
    brew cask install font-fira-code
    brew cask install font-firacode-nerd-font
    brew cask install font-firacode-nerd-font-mono
    brew cask install font-firamono-nerd-font
    brew cask install font-firamono-nerd-font-mono
    brew cask install font-source-code-pro
    brew cask install google-chrome
    brew cask install imageoptim
    brew cask install java8
    brew cask install slack
    brew cask install visual-studio-code
    brew cask install kitty
    brew cask install insomnia
    brew cask install plex-media-player
fi

if [ "$system_type" = "Linux" ]; then
    echo "Linux does not support brew cask, skipping..."
fi
