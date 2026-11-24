#!/bin/sh

mkdir -p ~/.config/sheldon

ln -sf ~/rank/dotfiles/host/.zshrc ~/.zshrc
ln -sf ~/rank/dotfiles/config/starship.toml ~/.config/starship.toml
ln -sf ~/rank/dotfiles/config/sheldon/plugins.toml ~/.config/sheldon/plugins.toml

echo "--- Link dotfiles is Done!  ---"
