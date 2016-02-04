#logging
exec > >(tee -i install_log.txt)
exec 2>&1

#option configuration
PS3='Which environment is it :'
options=("test" "real")
select opt in "${options[@]}"
do
    case $opt in
        "test")
            environment="test"
            break
            ;;
        "real")
            environment="real"
            break
            ;;
        *) echo invalid option;;
    esac
done

#sort mirrors by speed
if [ $environment == "real" ]; then
    echo 'Sorting mirrors by speed'
    sudo wget https://www.archlinux.org/mirrorlist/?country=all&protocol=http&ip_version=4 -O /etc/pacman.d/mirrorlist
    sudo cp /etc/pacman.d/mirrorlist /etc/pacman.d/mirrorlist.bak
    sudo sed -i 's/^#Server/Server/' /etc/pacman.d/mirrorlist.bak
    sudo sh -c 'rankmirrors -n 5 /etc/pacman.d/mirrorlist.bak > /etc/pacman.d/mirrorlist'
else
    sudo wget https://raw.githubusercontent.com/anhtuann/dotfiles/master/dreamland/pacman_mirrorlist -O /etc/pacman.d/mirrorlist
fi

#update arch
sudo pacman -Syu --noconfirm

#ssh keys
sudo pacman -S --noconfirm openssh
if [ $environment == "test" ]; then
    ssh-keygen
fi
echo 'eval $(ssh-agent)' >> ~/.xinitrc

#graphic drivers
if [ $environment == "test" ]; then
    echo 'Installing virtualbox graphic driver'
    sudo pacman -S --noconfirm virtualbox-guest-utils
else
    echo 'Installing bumblebee on intel/nvidia driver'
    sudo pacman -S --noconfirm bumblebee mesa xf86-video-intel nvidia
    sudo gpasswd -a $USER bumblebee
    sudo systemctl enable bumblebeed.service 
fi

#Xserver
sudo pacman -S --noconfirm xorg-server xorg-server-utils xorg-apps
sudo pacman -S --noconfirm xorg-xinit
sudo pacman -S --noconfirm arandr

#i3 initialisation
sudo pacman -S --noconfirm i3

#git for pacaur install
sudo pacman -S --noconfirm git
git config --global push.default simple

#pacaur install
sudo pacman -S --noconfirm expac
mkdir /tmp/aur
cd /tmp/aur
git clone http://aur.archlinux.org/cower.git
git clone http://aur.archlinux.org/pacaur.git
gpg --recv-keys 1EB2638FF56C0C53
cd cower
makepkg -s
sudo pacman -U --noconfirm cower*.pkg.tar.xz
cd ../pacaur
makepkg -s
sudo pacman -U --noconfirm pacaur*.pkg.tar.xz
cd
mkdir -p ~/.config/pacaur
echo "displaybuildfiles=none" > ~/.config/pacaur/config

#bbswitch-dkms installation for bumblebee
if [ $environment == "real" ]; then
    pacaur -S --noconfirm bbswitch-dkms
fi

#fonts to install
pacaur -S --noconfirm ttf-hack ttf-mplus ttf-symbola ttf-droid

#various applications for i3+firefox
pacaur -S --noconfirm rxvt-unicode
pacaur -S --noconfirm xf86-input-libinput 
pacaur -S --noconfirm firefox
pacaur -S --noconfirm light-git
pacaur -S --noconfirm rofi scrot feh volumeicon dunst

#dotfiles downloaded from github
mkdir ~/Projects 
cd ~/Projects
git clone https://github.com/anhtuann/dotfiles.git

#useful scripts downloaded from github
git clone https://github.com/anhtuann/useful-scripts.git

#vim
pacaur -S --noconfirm vim

#various utilities
pacaur -S --noconfirm alsa-utils
pacaur -S --noconfirm xclip
pacaur -S --noconfirm imagemagick
pacaur -S --noconfirm unrar unzip
pacaur -S --noconfirm rsync
pacaur -S --noconfirm wget
pacaur -S --noconfirm deluge python2-notify python2-mako python2-service-identity
pacaur -S --noconfirm redshift python-xdg
pacaur -S --noconfirm tmux

#mtp support
pacaur -S --noconfirm libmtp android-file-transfer

#multimedia
pacaur -S --noconfirm mpv
pacaur -S --noconfirm gstreamer gst-libav gst-plugins-good

#coding
pacaur -S --noconfirm python python-virtualenv python-virtualenvwrapper

#usb manager
pacaur -S --noconfirm udisks2 udiskie ntfs-3g dosfstools

#file manager
pacaur -S --noconfirm ranger

#useful softwares
pacaur -S --noconfirm calibre blender audacity

#virtualbox
if [ $environment == "real" ]; then
    pacaur -S --noconfirm virtualbox virtualbox-host-dkms linux-headers
    sudo dkms install vboxhost/$(pacman -Q virtualbox|awk '{print $2}'|sed 's/\-.\+//') -k $(uname -rm|sed 's/\ /\//')
    sudo gpasswd -a $USER vboxusers
    pacaur -S --noconfirm virtualbox-guest-iso net-tools
    pacaur -S --noconfirm virtualbox-ext-oracle qt4
fi

#misc
pacaur -S --noconfirm weechat

#power management
if [ $environment == "real" ]; then
    pacaur -S --noconfirm tlp
    sudo systemctl enable tlp
fi

#useful for generating quindal tones
pacaur -S --noconfirm wave-git

#generate config files
cd ~/Projects/dotfiles/dreamland
environment=$environment ./genconf.sh
