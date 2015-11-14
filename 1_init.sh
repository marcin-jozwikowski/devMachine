#! /bin/bash
sudo apt-get -y install vim
sudo apt-get -y install mc
sudo apt-get -y install tmux
sudo ./source/1_add_to_network_interface.sh
sudo ./source/1_install_ssh.sh
sudo shutdown -r now