printf "Executing %s install on mode %s" "$machine" "$env"

cd ~/Projects/dotfiles/scripts/arch
env=$env ./graphic_drivers.sh
env=$env ./virtualbox.sh
env=$env ./hardware.sh
./window_manager.sh
./various_softwares.sh

#generate config files
cd ~/Projects/dotfiles/machines/dreamland
env=$env ./genconf.sh
