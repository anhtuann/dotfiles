pacaur -S --noconfirm bluez bluez-utils bluez-libs bluez-firmware blueman
sudo modprobe btusb
sudo systemctl enable bluetooth.service
connmanctl enable bluetooth
pacaur -S --noconfirm dconf-editor
#Set org.blueman.plugins.powermanager auto-power-on to false
