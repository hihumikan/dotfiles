sudo apt update && apt -y upgrade

echo "Installing Volta"
curl https://get.volta.sh | bash

echo "Installing build-essential"
sudo apt install build-essential

brew bundle 
