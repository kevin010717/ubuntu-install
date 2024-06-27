#!/bin/bash

if [ ! -d "~/.config/nvim.lazyvim" ]; then
  mv ~/.config/nvim ~/.config/nvim.lazyvim
  mv ~/.local/share/nvim ~/.local/share/nvim.lazyvim
  mv ~/.local/state/nvim ~/.local/state/nvim.lazyvim
  mv ~/.cache/nvim ~/.cache/nvim.lazyvim
  echo "lazyvim backuped"
  mv ~/.config/nvim.nvchad ~/.config/nvim
  mv ~/.local/share/nvim.nvchad ~/.local/share/nvim
  mv ~/.local/state/nvim.nvchad ~/.local/state/nvim
  mv ~/.cache/nvim.nvchad ~/.cache/nvim
  nvim
else if [ ! -d "~/.config/nvim.astronvim" ]; then
	mv ~/.config/nvim ~/.config/nvim.astronvim
  mv ~/.local/share/nvim ~/.local/share/nvim.astronvim
  mv ~/.local/state/nvim ~/.local/state/nvim.astronvim
  mv ~/.cache/nvim ~/.cache/nvim.astronvim
	echo "astronvim backuped"
  mv ~/.config/nvim.nvchad ~/.config/nvim
  mv ~/.local/share/nvim.nvchad ~/.local/share/nvim
  mv ~/.local/state/nvim.nvchad ~/.local/state/nvim
  mv ~/.cache/nvim.nvchad ~/.cache/nvim
  nvim
else if [ ! -d "~/.config/nvim.lunarvim" ]; then
	mv ~/.config/nvim ~/.config/nvim.lunarvim
  mv ~/.local/share/nvim ~/.local/share/nvim.lunarvim
  mv ~/.local/state/nvim ~/.local/state/nvim.lunarvim
  mv ~/.cache/nvim ~/.cache/nvim.lunarvim
	echo "lunarvim backuped"
  mv ~/.config/nvim.nvchad ~/.config/nvim
  mv ~/.local/share/nvim.nvchad ~/.local/share/nvim
  mv ~/.local/state/nvim.nvchad ~/.local/state/nvim
  mv ~/.cache/nvim.nvchad ~/.cache/nvim
  nvim
fi
