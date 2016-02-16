#logging
exec > >(tee -i install_log.txt)
exec 2>&1

cd ~/Projects/dotfiles/script/arch
env=$env ./graphic_drivers.sh
env=$env ./virtualbox.sh
env=$env ./hardware.sh
./window_manager.sh
./various_software.sh

#generate config files
cd ~/Projects/dotfiles/machines/dreamland
env=$env ./genconf.sh
