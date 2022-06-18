#!/bin/bash

TIER_I_DIR=tier-i

FISHER_URL=https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish

setup_alacritty ()
{
  if [ ! -d "$HOME/.config/alacritty" ]
  then
    mkdir -p "$HOME/.config/alacritty"
    cp "$TIER_I_DIR/alacritty" "$HOME/.config/" -r 
    echo "\"$HOME/.config/alacritty\" done."
  else
    echo "\"$HOME/.config/alacritty\" already exists. Skipping..."
  fi
}

setup_fish ()
{
  if [ ! -d "$HOME/.config/fish" ]
  then
    if ! [ -x "$(command -v fish)" ];
    then
      echo "warn: fish is not installed."
    else
      fish -c "exit"
    fi
    
    rm -rf "$HOME/.config/fish/config.fish"
    cp "$TIER_I_DIR/fish" "$HOME/.config/" -r

    # Setup fisher
    echo "Installing \"jorgebucaran/fisher\""
    fish -c "curl -sL $FISHER_URL | source && fisher install jorgebucaran/fisher"

    # Fisher plugins
    fish -c "fisher install jorgebucaran/hydro"

    echo "\"$HOME/.config/fish\" done."
  else
    echo "\"$HOME/.config/fish\" already exists. Skipping..."
  fi
}
