#!/bin/sh

# Defaults
sudo add-apt-repository universe
sudo apt install curl wget git fonts-firacode -y

# Add to sources
echo "deb https://dl.bintray.com/getinsomnia/Insomnia /" | sudo tee -a /etc/apt/sources.list.d/insomnia.list
sudo wget --quiet -O - https://insomnia.rest/keys/debian-public.key.asc | sudo apt-key add -
curl https://build.opensuse.org/projects/home:manuelschneid3r/public_key | sudo apt-key add -
sudo wget -nv https://download.opensuse.org/repositories/home:manuelschneid3r/xUbuntu_20.04/Release.key -O "/etc/apt/trusted.gpg.d/home:manuelschneid3r.asc"



# Update sources
sudo apt update

# Install newly sourced
sudo apt install insomnia -y 
sudo apt install albert -y

# Special

curl --location "https://download.mozilla.org/?product=firefox-devedition-latest-ssl&os=linux64&lang=en-US" | tar --extract --verbose --preserve-permissions --bzip2
sudo mkdir -p ~/.local/opt
sudo mv firefox ~/.local/opt
ln -s ~/.local/opt/firefox/firefox ~/.local/bin/firefox-dev

cat >> ~/.local/share/applications <<EOL
Name=Firefox Developer Edition
GenericName=Web Browser
Exec=$HOME/.local/bin/firefox-dev %u
Icon=$HOME/.local/opt/firefox/browser/chrome/icons/default/default128.png
Terminal=false
Type=Application
MimeType=text/html;text/xml;application/xhtml+xml;application/vnd.mozilla.xul+xml;text/mml;x-scheme-handler/http;x-scheme-handler/https;
StartupNotify=true
Categories=Network;WebBrowser;
Keywords=web;browser;internet;
Actions=new-window;new-private-window;
StartupWMClass=Firefox Developer Edition

[Desktop Action new-window]
Name=Open a New Window
Exec=$HOME/.local/bin/firefox-dev %u

[Desktop Action new-private-window]
Name=Open a New Private Window
Exec=$HOME/.local/bin/firefox-dev --private-window %u
EOL
