#!/bin/bash 

cp inside_chroot.sh /mnt/temp/inside_chroot.sh
arch-chroot /mnt /temp/inside_chroot.sh
