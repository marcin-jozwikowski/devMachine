#!/bin/bash
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password password root'
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password root'
sudo apt-get -y --force-yes install mysql-server-5.6 mysql-client-5.6
pip install mycli