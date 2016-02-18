pacaur -S --noconfirm syncplay
if [ $machine == "sandman" ]; then
    sudo systemctl enable syncplay.service
    sudo systemctl start syncplay.service
fi
