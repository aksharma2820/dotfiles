#!/bin/bash

# detect/return non-zero errors & treat unassigned vars as errors
set -eux

sudo apt update
sudo apt upgrade

#########################################################################
#
# utilities
#
#########################################################################
sudo apt install build-essential avahi-daemon

#########################################################################
#
# Neovim
#
#########################################################################

./setup/nvim.sh

#########################################################################
#
# starship
#
#########################################################################

./setup/starship.sh

#########################################################################
#
# chezmoi
#
#########################################################################

./setup/chezmoi.sh