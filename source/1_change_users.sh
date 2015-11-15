#!/bin/bash
sudo usermod -g www-data osboxes
sudo useradd -g www-data -G adm,cdrom,sudo,dip,plugdev,lpadmin,sambashare devmach
sudo mkdir /home/devmach
sudo chown devmach /home/devmach
sudo chsh  -s /bin/bash devmach
touch pass
echo "devmach:dev" >> pass
sudo chpasswd < pass
rm pass
sudo sed -i 's/AllowUsers osboxes/AllowUsers osboxes devmach/g' /etc/ssh/sshd_config
restart ssh