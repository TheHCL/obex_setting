#!/bin/bash




sudo systemctl daemon-reload
sudo systemctl restart bluetooth
mac=$(hcitool dev | cut -sf3)
tmp="\:"
new_mac=${mac//:/$tmp}/
addr=/var/lib/bluetooth/$new_mac
sudo rm -rf $addr

sudo mkdir /home/$USER/bin/
sudo cp obex.sh /home/$USER/bin
sudo cp obex-ftpd.desktop /etc/xdg/autostart

sudo sed -i "s/<user name>/$USER/g" /etc/xdg/autostart/obex-ftpd.desktop



