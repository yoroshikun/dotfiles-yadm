#!/bin/sh

system_type=$(uname -s)

if [ "$system_type" = "Linux" ]; then
    echo "fs.inotify.max_user_watches=524288" >> /etc/sysctl.conf
    sudo sysctl -p
fi