if [ ! -d "$HOME/.config" ] 
then
  echo "$HOME/.config will be created."
  mkdir -p $HOME/.config
else
  echo "$HOME/.config already exists."
fi
