#!/bin/bash

if [ ! -d "~/.config/nvim.lunarvim" ]; then
  mv ~/.config/nvim ~/.config/nvim.lunarvim
  mv ~/.local/share/nvim ~/.local/share/nvim.lunarvim
  mv ~/.local/state/nvim ~/.local/state/nvim.lunarvim
  mv ~/.cache/nvim ~/.cache/nvim.lunarvim
  echo "lunarvim backuped"
  mv ~/.config/nvim.lazyvim ~/.config/nvim
  mv ~/.local/share/nvim.lazyvim ~/.local/share/nvim
  mv ~/.local/state/nvim.lazyvim ~/.local/state/nvim
  mv ~/.cache/nvim.lazyvim ~/.cache/nvim
  nvim
else if [ ! -d "~/.config/nvim.astronvim" ]; then
	mv ~/.config/nvim ~/.config/nvim.astronvim
  mv ~/.local/share/nvim ~/.local/share/nvim.astronvim
  mv ~/.local/state/nvim ~/.local/state/nvim.astronvim
  mv ~/.cache/nvim ~/.cache/nvim.astronvim
	echo "astronvim backuped"
  mv ~/.config/nvim.lazyvim ~/.config/nvim
  mv ~/.local/share/nvim.lazyvim ~/.local/share/nvim
  mv ~/.local/state/nvim.lazyvim ~/.local/state/nvim
  mv ~/.cache/nvim.lazyvim ~/.cache/nvim
  nvim
else if [ ! -d "~/.config/nvim.nvchad" ]; then
	mv ~/.config/nvim ~/.config/nvim.nvchad
  mv ~/.local/share/nvim ~/.local/share/nvim.nvchad
  mv ~/.local/state/nvim ~/.local/state/nvim.nvchad
  mv ~/.cache/nvim ~/.cache/nvim.nvchad
	echo "nvchad backuped"
  mv ~/.config/nvim.lazyvim ~/.config/nvim
  mv ~/.local/share/nvim.lazyvim ~/.local/share/nvim
  mv ~/.local/state/nvim.lazyvim ~/.local/state/nvim
  mv ~/.cache/nvim.lazyvim ~/.cache/nvim
  nvim
fi
