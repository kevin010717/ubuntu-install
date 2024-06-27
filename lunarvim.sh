#!/bin/bash

if [ ! -d "~/.config/nvim.lazyvim" ]; then
  mv ~/.config/nvim ~/.config/nvim.lazyvim
  mv ~/.local/share/nvim ~/.local/share/nvim.lazyvim
  mv ~/.local/state/nvim ~/.local/state/nvim.lazyvim
  mv ~/.cache/nvim ~/.cache/nvim.lazyvim
  echo "lazyvim backuped"
  mv ~/.config/nvim.lunarvim ~/.config/nvim
  mv ~/.local/share/nvim.lunarvim ~/.local/share/nvim
  mv ~/.local/state/nvim.lunarvim ~/.local/state/nvim
  mv ~/.cache/nvim.lunarvim ~/.cache/nvim
  nvim
else if [ ! -d "~/.config/nvim.astronvim" ]; then
	mv ~/.config/nvim ~/.config/nvim.astronvim
  mv ~/.local/share/nvim ~/.local/share/nvim.astronvim
  mv ~/.local/state/nvim ~/.local/state/nvim.astronvim
  mv ~/.cache/nvim ~/.cache/nvim.astronvim
	echo "astronvim backuped"
  mv ~/.config/nvim.lunarvim ~/.config/nvim
  mv ~/.local/share/nvim.lunarvim ~/.local/share/nvim
  mv ~/.local/state/nvim.lunarvim ~/.local/state/nvim
  mv ~/.cache/nvim.lunarvim ~/.cache/nvim
  nvim
else if [ ! -d "~/.config/nvim.nvchad" ]; then
	mv ~/.config/nvim ~/.config/nvim.nvchad
  mv ~/.local/share/nvim ~/.local/share/nvim.nvchad
  mv ~/.local/state/nvim ~/.local/state/nvim.nvchad
  mv ~/.cache/nvim ~/.cache/nvim.nvchad
	echo "nvchad backuped"
  mv ~/.config/nvim.lunarvim ~/.config/nvim
  mv ~/.local/share/nvim.lunarvim ~/.local/share/nvim
  mv ~/.local/state/nvim.lunarvim ~/.local/state/nvim
  mv ~/.cache/nvim.lunarvim ~/.cache/nvim
  nvim
fi
