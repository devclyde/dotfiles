#!/bin/bash

TIER_III_DIR=tier-iii

setup_awesomewm()
{
  if [ ! -d "$HOME/.config/awesome" ]
  then
    cp "$TIER_III_DIR/awesome" "$HOME/.config/" -r

    echo "\"$HOME/.config/awesome\" done."
  else
    echo "\"$HOME/.config/awesome\" already exists. Skipping..."
  fi
}

setup_wallpapers()
{
  if [ ! -d "$HOME/.local/share/wallpapers" ]
  then
    cp "$TIER_III_DIR/wallpapers" "$HOME/.local/share/" -r

    echo "\"$HOME/.local/share/wallpapers\" done."
  else
    echo "\"$HOME/.local/share/wallpapers\" already exists. Skipping..."
  fi
}
