sudo pacman -S --noconfirm wget

#Update and optimize mirrorlist for pacman
#Code taken from a linode stackscript and added sudo to it
#https://www.linode.com/stackscripts/view/12580
sudo pacman -Sy --noconfirm reflector
sudo mv /etc/pacman.d/mirrorlist /etc/pacman.d/mirrorlist.old
sudo wget https://www.archlinux.org/mirrorlist/all/ -O /etc/pacman.d/mirrorlist
sudo reflector --protocol http --sort rate --fastest 6 --threads 10 --save /etc/pacman.d/mirrorlist

#Update system
sudo pacman -Syu --noconfirm
