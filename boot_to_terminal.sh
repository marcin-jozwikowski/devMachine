#!/bin/bash
sudo cp -n /etc/default/grub /etc/default/grub.orig
sudo sed -i 's/GRUB_CMDLINE_LINUX_DEFAULT="quiet splash"/#GRUB_CMDLINE_LINUX_DEFAULT="quiet splash"/g' /etc/default/grub
sudo sed -i 's/GRUB_CMDLINE_LINUX=""/GRUB_CMDLINE_LINUX="text"/g' /etc/default/grub
sudo sed -i 's/#GRUB_TERMINAL=console/GRUB_TERMINAL=console/g' /etc/default/grub
sudo update-grub