#!/bin/bash
sudo apt-get -y --force-yes install apache2-mpm-worker libapache2-mod-fastcgi

sudo add-apt-repository ppa:ondrej/php5-5.6 -y
sudo apt-get update
sudo apt-get -y --force-yes install php5-fpm php5-curl php5-cli php5 

sudo a2enmod actions fastcgi alias ssl rewrite

sudo cp ./source/3_amp_php5-fpm.conf /etc/apache2/conf-available/php5-fpm.conf
sudo chmod o-x /etc/apache2/conf-available/php5-fpm.conf
sudo a2enconf php5-fpm.conf

sudo cp ./source/3_amp_devmach.loc /etc/apache2/sites-available/devmach_loc.conf
sudo chmod o-x /etc/apache2/sites-available/devmach_loc.conf
sudo mkdir /var/www/devmach.loc
sudo chown www-data:www-data /var/www/devmach.loc
sudo chmod og+rwx /var/www/devmach.loc
sudo a2ensite devmach_loc

sudo cp ./source/3_amp_info.php /var/www/devmach.loc/info.php
sudo service apache2 restart