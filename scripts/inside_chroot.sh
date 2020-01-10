#!/bin/bash
hwclock --systohc

# Brasil
ln -sf /usr/share/zoneinfo/America/Sao_Paulo /etc/localtime
echo "pt_BR.UTF-8 UTF-8" >> /etc/locale.conf
echo "KEYMAP=br-abnt2" >> /etc/vconsole.conf
locale-gen

# 
echo "flawedmind-note" >> /etc/hostname

# default root password.
echo "root:changeme" | chpasswd

#Grub group:
grub-install --target=i386-pc /dev/sdb
grub-mkconfig -o /boot/grub/grub.cfg

