#!/bin/bash

#Creating workspace
my_workspace=("bin" "cegep" "projets")


#Loop create directories
for dir in "${my_workspace[@]}"; do
	echo $dir
	mkdir ~/$dir
done

#Creating an array of app to install
my_app=("kitty" "neovim" "openvpn" "github-cli" 
	"git" "gcc" "gdb" "python3" "python-pip" 
	"python-virtualenv" "polybar" "firefox" 
	"ttf-firacode-nerd" "ttf-jetbrains-mono-nerd"
	"ttf-gohu-nerd")

#Loop install my_app
for app in "${my_app[@]}"; do
	echo -e "\n\e[32;40mInstalling $app\e[0m"
	sudo pacman -S $app
done


mkdir ~/.config/kitty
mkdir ~/.config/polybar

#Copy kitty.conf to correct location
cp ~/dotfile/kitty.conf ~/.config/kitty/

#Copy .bashrc to correct location
cp -rf ~/dotfile/.bashrc ~/

#Copy polybar config to correct location
cp -rf ~/dotfile/polybar ~/.config/

#copy i3 config to correct location
cp -rf ~/dotfile/i3 ~/.config/

#copy gitconfig to correct location
cp -f ~/dotfile/.gitconfig ~/
