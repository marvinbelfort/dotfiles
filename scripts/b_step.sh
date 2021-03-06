#!/bin/bash

# Base
pacstrap /mnt \
base \
linux \
linux-headers \
linux-firmware \
sudo \
grub \

# Network
pacstrap /mnt \
dialog \
netctl \
wpa_supplicant \
wireless_tools \
dhcpcd \


#Outros
pacstrap /mnt \
broadcom-wl \
btrfs-progs \
clonezilla \
crda \
darkhttpd \
ddrescue \
dhclient \
diffutils \
dmraid \
dnsmasq \
dnsutils \
dosfstools \
elinks \
ethtool \
exfat-utils \
f2fs-tools \
fsarchiver \
gnu-netcat \
gpm \
gptfdisk \
grml-zsh-config \
hdparm \
irssi \
iwd \
jfsutils \
lftp \
linux-atm \
lsscsi \
lvm2 \
man-db \
man-pages \
mc \
mdadm \
mtools \
ndisc6 \
nfs-utils \
nilfs-utils \
nmap \
ntfs-3g \
ntp \
openconnect \
openssh \
openvpn \
partclone \
partimage \
ppp \
pptpclient \
refind-efi \
reiserfsprogs \
rp-pppoe \
rsync \
sdparm \
sg3_utils \
smartmontools \
tcpdump \
testdisk \
usb_modeswitch \
usbutils \
vi \
vim-minimal \
vpnc \
wget \
wireless-regdb \
wvdial \
xfsprogs \
xl2tpd \
