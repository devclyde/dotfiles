#!/bin/bash

TIER_II_DIR=tier-ii

setup_nvchad()
{
  if [ ! -d "$HOME/.config/nvim" ]
  then
    cp "$TIER_II_DIR/nvim" "$HOME/.config/" -r
    
    echo "info: run \"nvim +PackerSync\" to complete the installation."
    echo "\"$HOME/.config/nvim\" done."
  else
    echo "\"$HOME/.config/nvim\" already exists. Skipping..."
  fi
}
