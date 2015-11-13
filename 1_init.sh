#! /bin/bash
mkdir 1_init
cd 1_init
wget http://marcin.jozwikowski.pl/devmach/1_init/add_to_network_interface.sh
wget http://marcin.jozwikowski.pl/devmach/1_init/install_ssh.sh
cd ..
chmod o+x ./1_init -R
sudo apt-get update
sudo apt-get -y install vim
sudo apt-get -y install mc
sudo apt-get -y install tmux
sudo ./1_init/add_to_network_interface.sh
sudo ./1_init/install_ssh.sh
sudo shutdown -r now