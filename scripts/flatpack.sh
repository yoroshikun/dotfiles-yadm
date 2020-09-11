#!/bin/sh

flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak remote-add --if-not-exists plex-media-player https://flatpak.knapsu.eu/plex-media-player.flatpakrepo


flatpak install plex-media-player tv.plex.PlexMediaPlayer -y --noninteractive
flatpak install flathub com.discordapp.Discord
flatpak install flathub com.slack.Slack
flatpak install flathub com.github.wwmm.pulseeffects
flatpak install flathub com.visualstudio.code
