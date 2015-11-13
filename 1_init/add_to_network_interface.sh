#! /bin/bash
echo "" >> /etc/network/interfaces
echo "auto eth0" >> /etc/network/interfaces
echo "iface eth0 inet dhcp" >> /etc/network/interfaces
echo "" >> /etc/network/interfaces
echo "auto eth1" >> /etc/network/interfaces
echo "iface eth1 inet static" >> /etc/network/interfaces
echo "address 192.168.56.123" >> /etc/network/interfaces
echo "netmask 255.255.255.0" >> /etc/network/interfaces
echo "gateway 192.168.1.1" >> /etc/network/interfaces
echo "dns-nameservers 8.8.8.8 192.168.1.1" >> /etc/network/interfaces