#!/usr/bin/bash

printf "$(tput setaf 2)
  ██████╗  █████╗ ██████╗ ███████╗                         
 ██╔════╝ ██╔══██╗██╔══██╗██╔════╝                         
 ██║  ███╗███████║██████╔╝███████╗                         
 ██║   ██║██╔══██║██╔══██╗╚════██║                         
 ╚██████╔╝██║  ██║██║  ██║███████║                         
  ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝                         
	                                                          
	██████╗ ██████╗  ██████╗      ██╗███████╗ ██████╗████████╗
	██╔══██╗██╔══██╗██╔═══██╗     ██║██╔════╝██╔════╝╚══██╔══╝
	██████╔╝██████╔╝██║   ██║     ██║█████╗  ██║        ██║   
	██╔═══╝ ██╔══██╗██║   ██║██   ██║██╔══╝  ██║        ██║   
	██║     ██║  ██║╚██████╔╝╚█████╔╝███████╗╚██████╗   ██║   
	╚═╝     ╚═╝  ╚═╝ ╚═════╝  ╚════╝ ╚══════╝ ╚═════╝   ╚═╝   
"                                                          


echo "3"
sleep 1
echo "2"
sleep 1
echo "1"
sleep 1
echo "lets go!!!"
tput setaf 7
sudo pacman -Syu
sudo pacman -S sddm wget

# Install packages
pacman=$(cat ./sourses/pacman.txt)
sudo pacman -Syu $pacman
aur=$(cat ./sourses/pacman.txt)
yay -S $aur

# Git clone process
mkdir Additional
cd Additional
git clone https://github.com/gigsoll/i3-setup.git
cd i3-setup
./install.sh
rm -rf i3-setup

git clone https://github.com/nautilor/nord-sddm.git
sudo cp -R Nord /usr/share/sddm/themes/

sudo cp ./assets/sddm.conf /etc/sddm.conf
sudo cp $HOME/.config/wallpapers/nord_lake.png /usr/share/sddm/themes/Nord/assets/bg.jpg

# Power minimizer
sudo envycontrol -s integrated
sudo systemctl start nbfc
sudo nbfc config -a "Acer Predator G3-572"

# Aplying services
sudo systemctl enable sddm
sudo systemctl enable bluetooth
sudo systemctl enable nbfc
sudo systemctl enable spotblock
