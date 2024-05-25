sudo apt install neovim

# Directories to check
NVIM_DIRS=(".local/share" ".local/state" ".cache" ".config")

# Iterate over each directory and move if it exists
for dir in "${NVIM_DIRS[@]}"; do
	if [ -d "$HOME/$dir/nvim" ]; then
		mv "$HOME/$dir/nvim" "$HOME/$dir/nvim.bak"
	fi
done

git clone https://github.com/LazyVim/starter ~/.config/nvim
rm -rf ~/.config/nvim/.git
