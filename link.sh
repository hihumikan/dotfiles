#!/bin/sh

ln -sf ~/dotfiles/.vimrc ~/.vimrc
ln -sf ~/dotfiles/.nvimrc ~/.nvimrc
ln -sf ~/dotfiles/.zshrc ~/.zshrc
ln -sf ~/dotfiles/config/starship.toml ~/.config/starship.toml
ln -sf ~/dotfiles/config/sheldon/plugins.toml ~/.config/sheldon/plugins.toml

echo "--- Link dotfiles is fuxxing Done!  ---"
