pacaur -S --noconfirm nginx
sudo systemctl enable nginx.service
sudo systemctl start nginx.service
sudo mkdir /etc/nginx/servers-available
sudo mkdir /etc/nginx/servers-enabled
sudo ln -sf ~/Projects/dotfiles/sandman/confs/nginx_conf /etc/nginx/nginx.conf
sudo systemctl restart nginx.service
