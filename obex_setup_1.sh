#!/bin/bash


sudo apt install obexftp
sudo apt install obex-data-server
sudo apt remove bluez-obexd bluez-cups
sudo mkdir ~/.obexftp
sudo sed -i 's#ExecStart=/usr/lib/bluetooth/bluetoothd#ExecStart=/usr/lib/bluetooth/bluetoothd --compat#g' /etc/systemd/system/dbus-org.bluez.service
reboot




