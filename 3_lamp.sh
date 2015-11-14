#!/bin/bash
sudo bash ./source/x_apache_phpfpm.sh
sudo bash ./source/x_mysql.sh
sudo apt-get -y --force-yes install php5-mysql
sudo service php5-fpm restart
sudo service apache2 restart
curl -sS https://getcomposer.org/installer | sudo php -- --install-dir=/usr/local/bin --filename=composer