#installing modules
cd ~/Projects/dotfiles/scripts/arch/server
./mariadb.sh
./nginx.sh
./wordpress.sh

#generate config files
cd ~/Projects/dotfiles/machines/sandman
./genconf.sh

cd ~/Projects/dotfiles/scripts/arch
machine=$machine ./zsh.sh
