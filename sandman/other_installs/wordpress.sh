pacaur -S --noconfirm php php-fpm
sudo systemctl enable php-fpm.service
sudo systemctl start php-fpm.service
