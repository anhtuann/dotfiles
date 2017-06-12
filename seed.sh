#Update and optimize mirrorlist for pacman
#Code taken from a linode stackscript and added sudo to it
#https://www.linode.com/stackscripts/view/12580
sudo pacman -Sy --noconfirm wget reflector
sudo mv /etc/pacman.d/mirrorlist /etc/pacman.d/mirrorlist.old
sudo wget https://www.archlinux.org/mirrorlist/all/ -O /etc/pacman.d/mirrorlist
sudo reflector --protocol http --sort rate --fastest 6 --threads 10 --save /etc/pacman.d/mirrorlist
sudo pacman -Syu --noconfirm

#Get dotfiles project
sudo pacman -S --noconfirm git openssh
mkdir ~/Projects
cd ~/Projects
git clone git@anhtuann.com:anhtuann/dotfiles.git
cd dotfiles
git checkout python_refactor
sudo ln -sf ~/Projects/dotfiles/confs/pacman_conf /etc/pacman.conf
sudo pacman -Syu --noconfirm
