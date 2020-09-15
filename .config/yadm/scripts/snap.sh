#!/bin/sh

system_type=$(uname -s)

if [ "$system_type" = "Linux" ]; then
    sudo rm /etc/apt/preferences.d/nosnap.pref
    sudo apt update
    sudo apt install snapd

    sudo snap install multipass
fi