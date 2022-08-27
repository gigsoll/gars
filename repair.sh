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

sudo pacman -S sddm wget

sudo systemctl enable sddm
sudo systemctl enable bluetooth

mkdir Additional
cd Additional
git clone https://github.com/gigsoll/i3-setup.git
cd i3-setup
./install.sh




