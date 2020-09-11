#!/bin/sh

system_type=$(uname -s)

if [ "$system_type" = "Darwin" ]; then
    # install gnu formulas
    brew install coreutils
    brew install binutils
    brew install diffutils
    brew install ed --with-default-names
    brew install findutils --with-default-names
    brew install gawk
    brew install gnu-indent --with-default-names
    brew install gnu-sed --with-default-names
    brew install gnu-tar --with-default-names
    brew install gnu-which --with-default-names
    brew install gnutls
    brew install grep --with-default-names
    brew install gzip
    brew install screen
    brew install watch
    brew install wdiff --with-gettext
    brew install wget

    # upgrade existing gnu formulas
    brew install bash
    brew install gdb
    brew install gpatch
    brew install m4
    brew install make
    brew install nano

    # other formulas
    brew install direnv
    brew install ffmpeg
    brew install fish --HEAD
    brew install flake
    brew install fzf
    brew install git
    brew install gpg
    brew install less
    brew install neovim
    brew install node
    brew install openssh
    brew install python
    brew install rbenv
    brew install ripgrep
    brew install rsync
    brew install thefuck
    brew install tmux
    brew install vim --with-override-system-vi --with-python3
    brew install yarn
    brew install starship
    brew install minikube
fi

if [ "$system_type" = "Linux" ]; then
    brew install direnv
    brew install ffmpeg
    brew install fish --HEAD
    brew install flake
    brew install fzf
    brew install openssh
    brew install thefuck
    brew install vim
    brew install starship
    brew install minikube
fi
