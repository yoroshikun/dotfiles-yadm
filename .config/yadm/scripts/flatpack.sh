#!/bin/sh

flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak remote-add --if-not-exists plex-media-player https://flatpak.knapsu.eu/plex-media-player.flatpakrepo


flatpak install plex-media-player tv.plex.PlexMediaPlayer -y --noninteractive
flatpak install flathub com.github.wwmm.pulseeffects -y --noninteractive
