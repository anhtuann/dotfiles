#tools to compile packages
sudo pacman -S --noconfirm base-devel
sudo pacman -S --noconfirm git
sudo pacman -S --noconfirm wget

#pacaur install
sudo pacman -S --noconfirm expac
mkdir /tmp/aur
cd /tmp/aur
git clone http://aur.archlinux.org/cower.git
git clone http://aur.archlinux.org/pacaur.git
gpg --keyserver pgp.mit.edu --recv-keys F56C0C53
cd cower
makepkg -s
sudo pacman -U --noconfirm cower*.pkg.tar.xz
cd ../pacaur
makepkg -s
sudo pacman -U --noconfirm pacaur*.pkg.tar.xz
cd
mkdir -p ~/.config/pacaur
echo "displaybuildfiles=none" > ~/.config/pacaur/config

#various utilities
pacaur -S --noconfirm tmux

#installing modules
cd ~/Projects/dotfiles/sandman/other_installs
./mariadb.sh
./nginx.sh
./wordpress.sh
./zsh.sh

#generate config files
cd ~/Projects/dotfiles/sandman
./genconf.sh
