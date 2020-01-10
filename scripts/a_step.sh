#!/bin/bash

loadkeys br-abnt2
cp wlan0-2G_MARVIN /etc/netctl/
netctl start wlan0-2G_MARVIN 

# todo: deletar partiçoes e reparticionar disco

swapon /dev/sdb2
mkfs.ext4 /dev/sdb1
mount /dev/sdb1 /mnt

genfstab -U /mnt >> /mnt/etc/fstab


