pacaur -S --noconfirm mariadb
sudo mysql_install_db --user=mysql --basedir=/usr --datadir=/var/lib/mysql
sudo systemctl enable mysqld.service
sudo systemctl start mysqld.service
sudo mysql_secure_installation
