#!/bin/sh
sudo apt update
sudo apt upgrade -y

cd /home/mike/dev/exfat-linux-master && make clean && make && sudo make install
#sudo modprobe exfat
#cat /proc/filesystems


#sudo grub-mkconfig -o /boot/grub/grub.cfg
sudo update-grub
