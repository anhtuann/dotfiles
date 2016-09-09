#graphic drivers
if [ $env == "test" ]; then
    echo 'Installing virtualbox graphic driver'
    pacaur -S virtualbox-guest-utils
else
    echo 'Installing bumblebee on intel/nvidia driver'
    pacaur -S --noconfirm bumblebee mesa xf86-video-intel nvidia
    sudo gpasswd -a $USER bumblebee
    sudo systemctl enable bumblebeed.service 
    pacaur -S --noconfirm bbswitch-dkms
fi

#Xserver
pacaur -S --noconfirm xorg-server xorg-server-utils xorg-apps
pacaur -S --noconfirm xorg-xinit
pacaur -S --noconfirm arandr
