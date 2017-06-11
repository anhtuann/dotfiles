echo 'Installing bumblebee on intel/nvidia driver'
pacaur -S --noconfirm bumblebee mesa xf86-video-intel nvidia
sudo gpasswd -a $USER bumblebee
sudo systemctl enable bumblebeed.service 
pacaur -S --noconfirm bbswitch-dkms
