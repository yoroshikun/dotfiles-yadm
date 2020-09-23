#!/bin/bash

sudo bash <(curl -sLS http://installer.getnitro.sh)

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

curl -sS https://platform.sh/cli/installer | php