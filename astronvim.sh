#!/bin/bash

if [ ! -d "$HOME/.config/nvim.lunarvim" ]; then
	mv ~/.config/nvim ~/.config/nvim.lunarvim
	mv ~/.local/share/nvim ~/.local/share/nvim.lunarvim
	mv ~/.local/state/nvim ~/.local/state/nvim.lunarvim
	mv ~/.cache/nvim ~/.cache/nvim.lunarvim
	echo "lunarvim backuped"
	mv ~/.config/nvim.astronvim ~/.config/nvim
	mv ~/.local/share/nvim.astronvim ~/.local/share/nvim
	mv ~/.local/state/nvim.astronvim ~/.local/state/nvim
	mv ~/.cache/nvim.astronvim ~/.cache/nvim
	nvim
elif [ ! -d "$HOME/.config/nvim.lazyvim" ]; then
	mv ~/.config/nvim ~/.config/nvim.lazyvim
	mv ~/.local/share/nvim ~/.local/share/nvim.lazyvim
	mv ~/.local/state/nvim ~/.local/state/nvim.lazyvim
	mv ~/.cache/nvim ~/.cache/nvim.lazyvim
	echo "lazyvim backuped"
	mv ~/.config/nvim.astronvim ~/.config/nvim
	mv ~/.local/share/nvim.astronvim ~/.local/share/nvim
	mv ~/.local/state/nvim.astronvim ~/.local/state/nvim
	mv ~/.cache/nvim.astronvim ~/.cache/nvim
	nvim
elif [ ! -d "$HOME/.config/nvim.nvchad" ]; then
	mv ~/.config/nvim ~/.config/nvim.nvchad
	mv ~/.local/share/nvim ~/.local/share/nvim.nvchad
	mv ~/.local/state/nvim ~/.local/state/nvim.nvchad
	mv ~/.cache/nvim ~/.cache/nvim.nvchad
	echo "nvchad backuped"
	mv ~/.config/nvim.astronvim ~/.config/nvim
	mv ~/.local/share/nvim.astronvim ~/.local/share/nvim
	mv ~/.local/state/nvim.astronvim ~/.local/state/nvim
	mv ~/.cache/nvim.astronvim ~/.cache/nvim
	nvim
fi
