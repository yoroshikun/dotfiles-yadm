#!/bin/sh

# Defaults
add-apt-repository universe
apt install curl wget git fonts-firacode apt-transport-https pass direnv -y

# Add to sources
echo "deb https://dl.bintray.com/getinsomnia/Insomnia /" | sudo tee -a /etc/apt/sources.list.d/insomnia.list
wget --quiet -O - https://insomnia.rest/keys/debian-public.key.asc | sudo apt-key add -
curl https://build.opensuse.org/projects/home:manuelschneid3r/public_key | sudo apt-key add -
wget -nv https://download.opensuse.org/repositories/home:manuelschneid3r/xUbuntu_20.04/Release.key -O "/etc/apt/trusted.gpg.d/home:manuelschneid3r.asc"

wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64 signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
rm packages.microsoft.gpg


# Update sources
apt update

# Install newly sourced
apt install insomnia albert code -y 

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

curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin
sudo mkdir $HOME/.local/bin

sudo ln -s ~/.local/kitty.app/bin/kitty ~/.local/bin/
cp ~/.local/kitty.app/share/applications/kitty.desktop ~/.local/share/applications
sed -i "s|Icon=kitty|Icon=/home/$USER/.local/kitty.app/share/icons/hicolor/256x256/apps/kitty.png|g" ~/.local/share/applications/kitty.desktop
