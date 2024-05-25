#!/bin/bash

if ! starship="$(command -v starship)"; then
	bin_dir="$HOME/.local/bin"
	starship="$bin_dir/starship"
	echo "installing starship to '${bin_dir}'" >&2
	if command -v curl >/dev/null; then
		starship_install_script="$(curl -fsSL https://starship.rs/install.sh)"
	elif command -v wget >/dev/null; then
		starship_install_script="$(wget -qO- https://starship.rs/install.sh)"
	else
		echo "curl or wget not found to install starship"
	fi
	sh -c "${starship_install_script}" -- --bin-dir "${bin_dir}"
fi
