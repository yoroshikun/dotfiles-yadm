#!/bin/sh

# install fish
echo /usr/local/bin/fish | tee -a /etc/shells
# set fish as the default
chsh -s /usr/local/bin/fish