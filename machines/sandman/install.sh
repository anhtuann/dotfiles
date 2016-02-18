#installing modules
cd ~/Projects/dotfiles/scripts/arch
./server/mariadb.sh
./server/nginx.sh
./server/wordpress.sh
./shell.sh

#generate config files
cd ~/Projects/dotfiles/machines/sandman
./firstconfig.sh
