#!/bin/bash

# detect/return non-zero errors & treat unassigned vars as errors
set -eux

sudo apt update
sudo apt upgrade

bin_dir="$HOME/.local/bin"

[[ ! -d "$bin_dir" ]] && mkdir -p "${bin_dir}"

#========================================================================
#
# utilities
#
#========================================================================
sudo apt install build-essential avahi-daemon

#========================================================================
#
# starship
#
#========================================================================

. starship.sh

#========================================================================
#
# Neovim
#
#========================================================================

. nvim.sh

#========================================================================
#
# chezmoi
#
#========================================================================

. chezmoi.sh

#========================================================================
#
# run
#
#========================================================================

. run.sh

exit 1
