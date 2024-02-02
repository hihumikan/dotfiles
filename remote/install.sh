echo "Installing Homebrew"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo "Installing Starship"
brew install starship

echo "Installing Volta"
curl https://get.volta.sh | bash

echo "Installing Sheldon"
brew install sheldon

echo "Installing Gibo"
brew install gibo

echo "Installing Bat"
brew install bat

echo "Installing Eza"
brew install eza
