#!/bin/sh

sudo apt update
sudo apt upgrade -y

sudo grub-mkconfig -o /boot/grub/grub.cfg
