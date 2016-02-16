#installing modules
cd ~/Projects/dotfiles/scripts/arch/server
./mariadb.sh
./nginx.sh
./wordpress.sh
./zsh.sh

#generate config files
cd ~/Projects/dotfiles/sandman
./genconf.sh
