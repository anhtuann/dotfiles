if [ $environment == "real" ] then
    pacaur -S --noconfirm virtualbox virtualbox-host-dkms linux-headers
    sudo dkms install vboxhost/$(pacman -Q virtualbox|awk '{print $2}'|sed 's/\-.\+//') -k $(uname -rm|sed 's/\ /\//')
    sudo gpasswd -a $USER vboxusers
    pacaur -S --noconfirm virtualbox-guest-iso net-tools
    pacaur -S --noconfirm virtualbox-ext-oracle qt4
fi

