#!/bin/bash
sudo bash ./source/apache_phpfpm.sh
sudo bash ./source/mysql.sh
sudo apt-get -y --force-yes install php5-mysql
sudo service php5-fpm restart
sudo service apache2 restart
curl -sS https://getcomposer.org/installer | sudo php -- --install-dir=/usr/local/bin --filename=composer
echo ""
echo ""
echo "******************************************************"
echo "*                                                    *"
echo "*   To check your installation add                   *"
echo "*                                                    *"
echo "*   192.168.56.123  devmach.loc                      *"
echo "*                                                    *"
echo "*   to yours hosts file and go to                    *"
echo "*                                                    *"
echo "*   http://devmach.loc/info.php                      *"
echo "*                                                    *"
echo "******************************************************"
echo ""
echo ""