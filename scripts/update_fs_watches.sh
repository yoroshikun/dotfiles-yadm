#!/bin/sh

if [ "$system_type" = "Linux" ]; then
    fs.inotify.max_user_watches=524288
    sudo sysctl -p
fi