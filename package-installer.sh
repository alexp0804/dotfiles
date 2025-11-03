#!/usr/bin/env bash

sudo -v

while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

sudo apt update
sudo apt upgrade

sudo apt install zsh
sudo apt install vim
sudo apt install neovim
sudo apt install git
sudo apt install ssh

sudo apt install zoxide		# better cd
sudo apt install eza 		# better ls
sudo apt install bat	    # better cat
sudo apt install btop		# better top
sudo apt install duf	    # better df
sudo apt install du-dust    # better du
sudo apt install fd-find    # better find
sudo apt install ripgrep    # better grep
sudo apt install gawk
sudo apt install sed
sudo apt install fzf
sudo apt install curl
sudo apt install wget
sudo apt install fastfetch

# neovim dependencies
sudo apt install node npm
sudo apt install ruby gem
sudo apt install luarocks

sh -c "$(wget -O- https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-completions
git clone https://github.com/zsh-users/zsh-syntax-highlighting ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
