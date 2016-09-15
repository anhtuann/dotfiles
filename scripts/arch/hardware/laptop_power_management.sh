if [ $env == "real" ]; then
    pacaur -S --noconfirm tlp
    sudo systemctl enable tlp
fi
