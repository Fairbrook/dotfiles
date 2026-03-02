#!/bin/bash

git clone https://github.com/Fairbrook/lazyvim ~/.config/nvim
wget https://gist.githubusercontent.com/Fairbrook/79a77e4f52e155b6c87c724c13b8a72f/raw/8e6ef361a504a80ae40c10c43da9886632c0849f/.tmux.conf -O ~/.tmux.conf 

sudo apt-get update
sudo apt-get install -y ninja-build gettext cmake curl build-essential git tmux ripgrep fd-find
git clone -b stable --depth 1 https://github.com/neovim/neovim ~/neovim
cd ~/neovim
make CMAKE_BUILD_TYPE=Release
sudo make install
cd -

bash -c "$(curl -fsSL https://raw.githubusercontent.com/get-gah/gah/refs/heads/master/tools/install.sh)"
gah install lazygit --unattended

