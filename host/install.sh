echo "Installing Homebrew"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo "Installing Volta"
curl https://get.volta.sh | bash

echo "Installing build-essential"
sudo apt install build-essential

brew bundle 
