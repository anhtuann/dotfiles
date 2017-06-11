sudo pacman -Syu
sudo pacman -S git openssh
mkdir ~/Projects
cd ~/Projects
git clone git@anhtuann.com:anhtuann/dotfiles.git
cd dotfiles
git checkout python_refactor
