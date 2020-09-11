#!/bin/sh

# install asdf with a few versions of node
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.8.0
echo -e '\n. $HOME/.asdf/asdf.sh' >> ~/.bash_profile
echo -e '\n. $HOME/.asdf/completions/asdf.bash' >> ~/.bash_profile
# Restart profile
source ~/.bash_profile
# add node as plugin
asdf plugin-add nodejs
# update
asdf plugin-update nodejs
# add keys
bash ~/.asdf/plugins/nodejs/bin/import-release-team-keyring
# node versions
asdf install nodejs 14.9.0
asdf install nodejs 12.7.0
asdf install nodejs 11.14.0
asdf install nodejs 11.0.0
asdf install nodejs 10.14.1
asdf install nodejs 10.14.0
asdf install nodejs 10.0.0
asdf install nodejs 9.11.2
asdf install nodejs 9.0.0
asdf install nodejs 8.14.0
asdf install nodejs 8.0.0
asdf install nodejs 7.10.1
asdf install nodejs 6.15.0
asdf install nodejs 6.11.5
asdf install nodejs 5.12.0
asdf install nodejs 5.0.0
asdf install nodejs 4.2.0