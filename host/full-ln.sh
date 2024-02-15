#!/bin/sh

mkdir -p ~/.config/sheldon

ln -sf ~/dotfiles/host/.zshrc ~/.zshrc
ln -sf ~/dotfiles/config/starship.toml ~/.config/starship.toml
ln -sf ~/dotfiles/config/sheldon/plugins.toml ~/.config/sheldon/plugins.toml

echo "--- Link dotfiles is Done!  ---"
