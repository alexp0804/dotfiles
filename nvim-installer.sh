#!/bin/bash

# install dependencies
sudo apt-get install ninja-build gettext cmake curl build-essential git

git clone https://github.com/neovim/neovim ~/tmp/neovim
cd ~/tmp/neovim

make CMAKE_BUILD_TYPE=RelWithDebInfo

# Choose one method to build and install:

# a) default
# sudo make install

# b) install via DEB-package (x86_64 may change depending on your platform)
cd build && cpack -G DEB && sudo dpkg -i nvim-linux-x86_64.deb

rm -rf ~/tmp/neovim
