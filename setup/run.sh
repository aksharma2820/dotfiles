#!/bin/bash

if git="$(command -v git)"; then
	chezmoi_src_dir="$(git rev-parse --show-toplevel)"
	if chezmoi=$(command -v chezmoi); then
		set -- init --apply --source=${chezmoi_src_dir}
		echo "Running chezmoi... $*"
		exec "$chezmoi" "$@"
	fi
fi
