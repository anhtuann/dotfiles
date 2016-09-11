printf "Executing %s install on mode %s" "$machine" "$env"

cd ~/Projects/dotfiles/scripts/arch
env=$env ./virtualbox/virtualbox_guest.sh
./graphics/nvidia.sh
./graphics/x_server.sh
env=$env ./virtualbox/virtualbox_host.sh
env=$env ./laptop/hardware.sh
./with_x_server/window_manager.sh
./fonts.sh
./laptop/web.sh
./python.sh
./laptop/various_softwares.sh
./shell.sh

if [ $env == "real" ]; then
    cd ~/Projects/dotfiles/scripts/arch/laptop
    ./android.sh
    ./bluetooth.sh
    ./playonlinux.sh
fi

#generate config files
cd ~/Projects/dotfiles/machines/$machine
env=$env ./firstconfig.sh
