pacaur -S --noconfirm php php-fpm
sudo systemctl enable php-fpm.service
sudo systemctl start php-fpm.service
sudo ln -sf ~/Projects/dotfiles/sandman/confs/phpini_conf /etc/php/php.ini
