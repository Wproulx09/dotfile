#!/bin/bash

#Creating workspace
my_workspace=("bin" "cegep" "projets")

#Loop create directories
for dir in "${my_workspace[@]}"; do
	echo $dir
	mkdir ~/$dir
done

#Creating an array of app to install
my_app=("kitty" "neovim" "openvpn" "github-cli" "git"
	"gcc" "gdb" "python3" "python-pip" "python-virtualenv" 
	"polybar" "firefox")

#Loop install my_app
for app in "${my_app[@]}"; do
	echo -e "\n\e[32;40mInstalling $app\e[0m"
	sudo pacman -S $app
done


mkdir ~/.config/kitty
mkdir ~/.config/polybar

cp ~/dotfile/kitty.conf ~/.config/kitty/
cp -f ~/dotfile/.bashrc ~/
cp -f ~/dotfile/polybar/config.ini ~/.config/polybar/
cp -fr ~/dotfile/i3 ~/.config/
