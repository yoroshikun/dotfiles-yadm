#!/bin/sh

# install common extensions

code --install-extension aaron-bond.better-comments
code --install-extension bungcip.better-toml
code --install-extension cev.overnight
code --install-extension christian-kohler.npm-intellisense
code --install-extension cssho.vscode-svgviewer
code --install-extension dbaeumer.vscode-eslint
code --install-extension dunstontc.dark-plus-syntax
code --install-extension eamodio.gitlens
code --install-extension esbenp.prettier-vscode
code --install-extension formulahendry.auto-close-tag
code --install-extension formulahendry.terminal
code --install-extension golang.go
code --install-extension hashicorp.terraform
code --install-extension liviuschera.noctis
code --install-extension mariusschulz.yarn-lock-syntax
code --install-extension ms-azuretools.vscode-docker
code --install-extension ms-vscode-remote.remote-containers
code --install-extenions ms-vsliveshare.vsliveshare
code --install-extension octref.vetur
code --install-extension PKief.material-icon-theme
code --install-extension Prisma.prisma
code --install-extension rust-lang.rust
code --install-extension robertohuertasm.vscode-icons
code --install-extension shalldie.background
code --install-extension simsim0709.over-night-owl
code --install-extension theumletteam.umlet
code --install-extension vincaslt.highlight-matching-tag
code --install-extension vsmobile.vscode-react-native
code --install-extension wix.vscode-import-cost
code --install-extention tyriar.sort-lines

if [ "$system_type" = "Darwin" ]; then
    # fix the font
    rm ~/library/fonts/FiraCode-Bold.otf
    # copy settings
    # cp ~/dotfiles/vscode/* ~/library/Application\ Support/Code/User
fi