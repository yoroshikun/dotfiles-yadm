#!/bin/sh

system_type=$(uname -s)

# install fish
if [ "$system_type" = "Darwin" ]; then
    echo /usr/local/bin/fish | sudo tee -a /etc/shells
    chsh -s /usr/local/bin/fish
fi

if [ "$system_type" = "Linux" ]; then
    echo /home/linuxbrew/.linuxbrew/bin/fish | sudo tee -a /etc/shells
    chsh -s /home/linuxbrew/.linuxbrew/bin/fish
fi

