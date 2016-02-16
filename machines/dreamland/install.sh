printf "Executing %s install on mode %s" "$machine" "$env"

cd ~/Projects/dotfiles/scripts/arch
env=$env ./laptop/graphic_drivers.sh
env=$env ./laptop/virtualbox.sh
env=$env ./laptop/hardware.sh
./laptop/window_manager.sh
./fonts.sh
./laptop/web.sh
./python.sh
./laptop/various_softwares.sh

#generate config files
cd ~/Projects/dotfiles/machines/dreamland
env=$env ./genconf.sh

#install zsh shell
cd ~/Projects/dotfiles/scripts/arch
machine=$machine ./zsh.sh

if [ $env=="real" ]; then
    cd ~/Projects/dotfiles/scripts/arch/laptop
    ./android.sh
    ./bluetooth.sh
    ./playonlinux.sh
fi
