pacaur -S --noconfirm bluez bluez-utils blueman
sudo modprobe btusb
sudo systemctl enable bluetooth.service
connmanctl enable bluetooth
pacaur -S --noconfirm dconf-editor
#Set org.blueman.plugins.powermanager auto-power-on to false
