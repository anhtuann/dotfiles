pacaur -S --noconfirm xf86-input-libinput
pacaur -S --noconfirm light-git
pacaur -S --noconfirm redshift python-xdg
if [ $env == "real" ]; then
    pacaur -S --noconfirm tlp
    sudo systemctl enable tlp
fi
pacaur -S --noconfirm libmtp android-file-transfer
pacaur -S --noconfirm udisks2 udiskie ntfs-3g dosfstools
pacaur -S --noconfirm hfsprogs
